# para correr el Google Cloud
#   8 vCPU
#  64 GB memoria RAM


# limpio la memoria
rm(list = ls()) # remove all objects
gc() # garbage collection

require("data.table")
require("lightgbm")
require("glue")
require("dplyr")


# defino los parametros de la corrida, en una lista, la variable global  PARAM
#  muy pronto esto se leera desde un archivo formato .yaml
PARAM <- list()
PARAM$experimento <- "EXPCOL1_lgbm_auto"

PARAM$input$dataset <- "./datasets/experimento_variables_1er_generacion_40undersumpleo.csv"

# meses donde se entrena el modelo
PARAM$input$training <- c(202010,202011,202012,202101,202102,202103,202104,202105,202106)
PARAM$input$future <- c(202107) # meses donde se aplica el modelo


# hiperparametros intencionalmente NO optimos
PARAM$finalmodel$optim$num_iterations <- 952
PARAM$finalmodel$optim$learning_rate <- 0.0542892192104454
PARAM$finalmodel$optim$feature_fraction <- 0.750304346565551
PARAM$finalmodel$optim$min_data_in_leaf <- 29686
PARAM$finalmodel$optim$num_leaves <- 453




#------------------------------------------------------------------------------
#------------------------------------------------------------------------------
# Aqui empieza el programa
setwd("/home/mbujandmeyf/buckets/b1/")

# cargo el dataset donde voy a entrenar
dataset <- fread(PARAM$input$dataset, stringsAsFactors = TRUE)

dataset <- dataset[dataset$foto_mes != "202107", ]

datos202107 <- fread("./datasets/csv_202107_variables_1g.csv")

dataset <- rbind(dataset, datos202107)


dataset <- subset(dataset, select = -foto_mes_2)
dataset <- subset(dataset, select = -numero_de_cliente_2)


# paso la clase a binaria que tome valores {0,1}  enteros
# set trabaja con la clase  POS = { BAJA+1, BAJA+2 }
# esta estrategia es MUY importante
dataset[, clase01 := ifelse(clase_ternaria %in% c("BAJA+2", "BAJA+1"), 1L, 0L)]

#--------------------------------------

# los campos que se van a utilizar
campos_buenos <- setdiff(colnames(dataset), c("clase_ternaria", "clase01"))

#--------------------------------------


# establezco donde entreno
dataset[, train := 0L]
dataset[foto_mes %in% PARAM$input$training, train := 1L]

#--------------------------------------
# creo las carpetas donde van los resultados
# creo la carpeta donde va el experimento
dir.create("./exp/", showWarnings = FALSE)
dir.create(paste0("./exp/", PARAM$experimento, "/"), showWarnings = FALSE)

# Establezco el Working Directory DEL EXPERIMENTO
setwd(paste0("./exp/", PARAM$experimento, "/"))



# dejo los datos en el formato que necesita LightGBM
dtrain <- lgb.Dataset(
  data = data.matrix(dataset[train == 1L, campos_buenos, with = FALSE]),
  label = dataset[train == 1L, clase01]
)

tb_entrega <- data.table()


semillerio<-c(300001,300017,300023,300043,300073,300089,300109,300119,300137,300149,300151,300163,300187,300191,300193,200779,300779,357779,507779,557779)

for (semilla in semillerio){
  
  PARAM$finalmodel$semilla <- semilla
  # Hiperparametros FIJOS de  lightgbm
  PARAM$finalmodel$lgb_basicos <- list(
    boosting = "gbdt", # puede ir  dart  , ni pruebe random_forest
    objective = "binary",
    metric = "custom",
    first_metric_only = TRUE,
    boost_from_average = TRUE,
    feature_pre_filter = FALSE,
    force_row_wise = TRUE, # para reducir warnings
    verbosity = -100,
    max_depth = -1L, # -1 significa no limitar,  por ahora lo dejo fijo
    min_gain_to_split = 0.0, # min_gain_to_split >= 0.0
    min_sum_hessian_in_leaf = 0.001, #  min_sum_hessian_in_leaf >= 0.0
    lambda_l1 = 0.0, # lambda_l1 >= 0.0
    lambda_l2 = 0.0, # lambda_l2 >= 0.0
    max_bin = 31L, # lo debo dejar fijo, no participa de la BO
    
    bagging_fraction = 1.0, # 0.0 < bagging_fraction <= 1.0
    pos_bagging_fraction = 1.0, # 0.0 < pos_bagging_fraction <= 1.0
    neg_bagging_fraction = 1.0, # 0.0 < neg_bagging_fraction <= 1.0
    is_unbalance = FALSE, #
    scale_pos_weight = 1.0, # scale_pos_weight > 0.0
    
    drop_rate = 0.1, # 0.0 < neg_bagging_fraction <= 1.0
    max_drop = 50, # <=0 means no limit
    skip_drop = 0.5, # 0.0 <= skip_drop <= 1.0
    
    extra_trees = TRUE, # Magic Sauce
    seed = PARAM$finalmodel$semilla
  )
  
  # genero el modelo
  param_completo <- c(PARAM$finalmodel$lgb_basicos,
                      PARAM$finalmodel$optim)
  
  modelo <- lgb.train(
    data = dtrain,
    param = param_completo,
  )
  
  #--------------------------------------
  # ahora imprimo la importancia de variables
  tb_importancia <- as.data.table(lgb.importance(modelo))
  archivo_importancia <- glue("{semilla}impo.txt")
  fwrite(tb_importancia,
         file = archivo_importancia,
         sep = "\t"
  )
  
  # aplico el modelo a los datos sin clase
  dapply <- dataset[foto_mes == PARAM$input$future]
  
  # aplico el modelo a los datos nuevos
  prediccion <- predict(
    modelo,
    data.matrix(dapply[, campos_buenos, with = FALSE])
  )
  
  
  # genero la tabla de entrega
  
  tb_entrega_aux <- dapply[, list(numero_de_cliente, foto_mes)]
  tb_entrega_aux[, prob := prediccion]
  
  # ordeno por probabilidad descendente
  setorder(tb_entrega_aux, -prob)
  
  tb_entrega[, glue("numero_de_cliente{semilla}") := tb_entrega_aux[["numero_de_cliente"]]]
  tb_entrega[, glue("foto_mes{semilla}") := tb_entrega_aux[["foto_mes"]]]
  tb_entrega[, glue("prob{semilla}") := tb_entrega_aux[["prob"]]]
  
  
  # genero archivos con los  "envios" mejores
  # deben subirse "inteligentemente" a Kaggle para no malgastar submits
  # si la palabra inteligentemente no le significa nada aun
  # suba TODOS los archivos a Kaggle
  # espera a la siguiente clase sincronica en donde el tema sera explicado
  
  cortes <- seq(8000, 15000, by = 500)
  for (envios in cortes) {
    tb_entrega[, glue("{envios}envios_semilla{semilla}") := 0L]
    tb_entrega[1:envios, glue("{envios}envios_semilla{semilla}") := 1L]
    
    
  }
}


cat("\n\nLa generacion de los archivos para Kaggle ha terminado\n")
# grabo las probabilidad del modelo

fwrite(tb_entrega,
       file = glue("{semilla}prediccion.txt"),
       sep = "\t"
)
