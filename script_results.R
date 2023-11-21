# limpio la memoria
rm(list = ls()) # remove all objects
gc() # garbage collection

require("data.table")
require("lightgbm")
require("glue")

#ACA PONER WG
setwd("C:/Users/MBujan/OneDrive - Cofco International/Desktop/Posgrado-DataScience/Materias/DMEyF/2023/exp_colaborativos")

#ACA PONER EL ARCHIVO QUE 
df <- fread("./Resultados/result_predicción.txt")
df_test<- fread("numero_cliente_clase_ternaria_resultado_real_202107.csv")
df_test[, clase_ternaria := ifelse(clase_ternaria == "BAJA+2", 1, 0)]

ganancia_dataset <- df_test[, sum(clase_ternaria)]

semillerio<-c(300001,300017,300023,300043,300073,300089,300109,300119,300137,300149,300151,300163,300187,300191,300193,200779,300779,357779,507779,557779)
cortes <- seq(8000, 15000, by = 500)

seed <- list()
envios <- list()
ganancia <- list()

for (semilla in semillerio) {
  result_dt <- df[, .SD, .SDcols = names(df) %like% semilla]
  result_dt <- merge(result_dt, df_test, by.x = glue("numero_de_cliente{semilla}"), by.y = "numero_de_cliente")
  for (env in cortes) {
    result_dt[, glue("ganancia_{env}_{semilla}") := 0]
    result_dt[get(glue("{env}envios_semilla{semilla}")) == 1 & clase_ternaria == 1, glue("ganancia_{env}_{semilla}") := 273000]
    result_dt[get(glue("{env}envios_semilla{semilla}")) == 1 & clase_ternaria == 0, glue("ganancia_{env}_{semilla}") := -7000]
    ganancia_dataset <- result_dt[, sum(get(glue("ganancia_{env}_{semilla}")))]
    
    seed <- c(seed, semilla)
    envios <- c(envios, env)
    ganancia <- c(ganancia, ganancia_dataset)
    }
}


table_results <- data.table(semilla = unlist(seed), envios = unlist(envios), ganancia = unlist(as.numeric(ganancia)))
ganancia_promedio <- table_results[, .(AVG_ganancia = mean(ganancia)), by = .(envios)]
fwrite(ganancia_promedio, "ganancia_promedio.csv")
