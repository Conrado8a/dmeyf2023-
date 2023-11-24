with  #competencia_03_crudo as (

select
case when [numero_de_cliente] = '' then null else cast(convert(float,[numero_de_cliente]) as int) end as [numero_de_cliente],
case when [foto_mes] = '' then null else cast(convert(float,[foto_mes]) as int) end as [foto_mes],
case when [active_quarter] = '' then null else cast(convert(float,[active_quarter]) as int) end as [active_quarter],
case when [cliente_vip] = '' then null else cast(convert(float,[cliente_vip]) as int) end as [cliente_vip],
case when [internet] = '' then null else cast(convert(float,[internet]) as int) end as [internet],
case when [cliente_edad] = '' then null else cast(convert(float,[cliente_edad]) as int) end as [cliente_edad],
case when [cliente_antiguedad] = '' then null else cast(convert(float,[cliente_antiguedad]) as int) end as [cliente_antiguedad],
case when [mrentabilidad] = '' then null else cast(convert(float,[mrentabilidad]) as int) end as [mrentabilidad],
case when [mrentabilidad_annual] = '' then null else cast(convert(float,[mrentabilidad_annual]) as int) end as [mrentabilidad_annual],
case when [mcomisiones] = '' then null else cast(convert(float,[mcomisiones]) as int) end as [mcomisiones],
case when [mactivos_margen] = '' then null else cast(convert(float,[mactivos_margen]) as int) end as [mactivos_margen],
case when [mpasivos_margen] = '' then null else cast(convert(float,[mpasivos_margen]) as int) end as [mpasivos_margen],
case when [cproductos] = '' then null else cast(convert(float,[cproductos]) as int) end as [cproductos],
case when [tcuentas] = '' then null else cast(convert(float,[tcuentas]) as int) end as [tcuentas], 
case when [ccuenta_corriente] = '' then null else cast(convert(float,[ccuenta_corriente]) as int) end as [ccuenta_corriente],
case when [mcuenta_corriente_adicional] = '' then null else cast(convert(float,[mcuenta_corriente_adicional]) as int) end as [mcuenta_corriente_adicional],
case when [mcuenta_corriente] = '' then null else cast(convert(float,[mcuenta_corriente]) as int) end as [mcuenta_corriente],
case when [ccaja_ahorro] = '' then null else cast(convert(float,[ccaja_ahorro]) as int) end as [ccaja_ahorro],
case when [mcaja_ahorro] = '' then null else cast(convert(float,[mcaja_ahorro]) as int) end as [mcaja_ahorro],
case when [mcaja_ahorro_adicional] = '' then null else cast(convert(float,[mcaja_ahorro_adicional]) as int) end as [mcaja_ahorro_adicional],
case when [mcaja_ahorro_dolares] = '' then null else cast(convert(float,[mcaja_ahorro_dolares]) as int) end as [mcaja_ahorro_dolares],
case when [cdescubierto_preacordado] = '' then null else cast(convert(float,[cdescubierto_preacordado]) as int) end as [cdescubierto_preacordado],
case when [mcuentas_saldo] = '' then null else cast(convert(float,[mcuentas_saldo]) as int) end as [mcuentas_saldo],
case when [ctarjeta_debito] = '' then null else cast(convert(float,[ctarjeta_debito]) as int) end as [ctarjeta_debito],
case when [ctarjeta_debito_transacciones] = '' then null else cast(convert(float,[ctarjeta_debito_transacciones]) as int) end as [ctarjeta_debito_transacciones],
case when [mautoservicio] = '' then null else cast(convert(float,[mautoservicio]) as int) end as [mautoservicio],
case when [ctarjeta_visa] = '' then null else cast(convert(float,[ctarjeta_visa]) as int) end as [ctarjeta_visa],
case when [ctarjeta_visa_transacciones] = '' then null else cast(convert(float,[ctarjeta_visa_transacciones]) as int) end as [ctarjeta_visa_transacciones],
case when [mtarjeta_visa_consumo] = '' then null else cast(convert(float,[mtarjeta_visa_consumo]) as int) end as [mtarjeta_visa_consumo],
case when [ctarjeta_master] = '' then null else cast(convert(float,[ctarjeta_master]) as int) end as [ctarjeta_master],
case when [ctarjeta_master_transacciones] = '' then null else cast(convert(float,[ctarjeta_master_transacciones]) as int) end as [ctarjeta_master_transacciones],
case when [mtarjeta_master_consumo] = '' then null else cast(convert(float,[mtarjeta_master_consumo]) as int) end as [mtarjeta_master_consumo],
case when [cprestamos_personales] = '' then null else cast(convert(float,[cprestamos_personales]) as int) end as [cprestamos_personales],
case when [mprestamos_personales] = '' then null else cast(convert(float,[mprestamos_personales]) as int) end as [mprestamos_personales],
case when [cprestamos_prendarios] = '' then null else cast(convert(float,[cprestamos_prendarios]) as int) end as [cprestamos_prendarios],
case when [mprestamos_prendarios] = '' then null else cast(convert(float,[mprestamos_prendarios]) as int) end as [mprestamos_prendarios],
case when [cprestamos_hipotecarios] = '' then null else cast(convert(float,[cprestamos_hipotecarios]) as int) end as [cprestamos_hipotecarios],
case when [mprestamos_hipotecarios] = '' then null else cast(convert(float,[mprestamos_hipotecarios]) as int) end as [mprestamos_hipotecarios],
case when [cplazo_fijo] = '' then null else cast(convert(float,[cplazo_fijo]) as int) end as [cplazo_fijo],
case when [mplazo_fijo_dolares] = '' then null else cast(convert(float,[mplazo_fijo_dolares]) as int) end as [mplazo_fijo_dolares],
case when [mplazo_fijo_pesos] = '' then null else cast(convert(float,[mplazo_fijo_pesos]) as int) end as [mplazo_fijo_pesos],
case when [cinversion1] = '' then null else cast(convert(float,[cinversion1]) as int) end as [cinversion1],
case when [minversion1_pesos] = '' then null else cast(convert(float,[minversion1_pesos]) as int) end as [minversion1_pesos],
case when [minversion1_dolares] = '' then null else convert(bigint,cast(convert(float,[minversion1_dolares]) as float)) end as [minversion1_dolares],
case when [cinversion2] = '' then null else convert(bigint,cast(convert(float,[cinversion2]) as float)) end as [cinversion2],
case when [minversion2] = '' then null else convert(bigint,cast(convert(float,[minversion2]) as float)) end as [minversion2],
case when [cseguro_vida] = '' then null else cast(convert(float,[cseguro_vida]) as int) end as [cseguro_vida],
case when [cseguro_auto] = '' then null else cast(convert(float,[cseguro_auto]) as int) end as [cseguro_auto],
case when [cseguro_vivienda] = '' then null else cast(convert(float,[cseguro_vivienda]) as int) end as [cseguro_vivienda],
case when [cseguro_accidentes_personales] = '' then null else cast(convert(float,[cseguro_accidentes_personales]) as int) end as [cseguro_accidentes_personales],
case when [ccaja_seguridad] = '' then null else cast(convert(float,[ccaja_seguridad]) as int) end as [ccaja_seguridad],
case when [cpayroll_trx] = '' then null else cast(convert(float,[cpayroll_trx]) as int) end as [cpayroll_trx],
case when [mpayroll] = '' then null else cast(convert(float,[mpayroll]) as int) end as [mpayroll],
case when [mpayroll2] = '' then null else cast(convert(float,[mpayroll2]) as int) end as [mpayroll2],
case when [cpayroll2_trx] = '' then null else cast(convert(float,[cpayroll2_trx]) as int) end as [cpayroll2_trx],
case when [ccuenta_debitos_automaticos] = '' then null else cast(convert(float,[ccuenta_debitos_automaticos]) as int) end as [ccuenta_debitos_automaticos],
case when [mcuenta_debitos_automaticos] = '' then null else cast(convert(float,[mcuenta_debitos_automaticos]) as int) end as [mcuenta_debitos_automaticos],
case when [ctarjeta_visa_debitos_automaticos] = '' then null else cast(convert(float,[ctarjeta_visa_debitos_automaticos]) as int) end as [ctarjeta_visa_debitos_automaticos],
case when [mttarjeta_visa_debitos_automaticos] = '' then null else cast(convert(float,[mttarjeta_visa_debitos_automaticos]) as int) end as [mttarjeta_visa_debitos_automaticos],
case when [ctarjeta_master_debitos_automaticos] = '' then null else cast(convert(float,[ctarjeta_master_debitos_automaticos]) as int) end as [ctarjeta_master_debitos_automaticos],
case when [mttarjeta_master_debitos_automaticos] = '' then null else cast(convert(float,[mttarjeta_master_debitos_automaticos]) as int) end as [mttarjeta_master_debitos_automaticos],
case when [cpagodeservicios] = '' then null else cast(convert(float,[cpagodeservicios]) as int) end as [cpagodeservicios],
case when [mpagodeservicios] = '' then null else cast(convert(float,[mpagodeservicios]) as int) end as [mpagodeservicios],
case when [cpagomiscuentas] = '' then null else cast(convert(float,[cpagomiscuentas]) as int) end as [cpagomiscuentas],
case when [mpagomiscuentas] = '' then null else cast(convert(float,[mpagomiscuentas]) as int) end as [mpagomiscuentas],
case when [ccajeros_propios_descuentos] = '' then null else cast(convert(float,[ccajeros_propios_descuentos]) as int) end as [ccajeros_propios_descuentos],
case when [mcajeros_propios_descuentos] = '' then null else cast(convert(float,[mcajeros_propios_descuentos]) as int) end as [mcajeros_propios_descuentos],
case when [ctarjeta_visa_descuentos] = '' then null else cast(convert(float,[ctarjeta_visa_descuentos]) as int) end as [ctarjeta_visa_descuentos],
case when [mtarjeta_visa_descuentos] = '' then null else cast(convert(float,[mtarjeta_visa_descuentos]) as int) end as [mtarjeta_visa_descuentos],
case when [ctarjeta_master_descuentos] = '' then null else cast(convert(float,[ctarjeta_master_descuentos]) as int) end as [ctarjeta_master_descuentos],
case when [mtarjeta_master_descuentos] = '' then null else cast(convert(float,[mtarjeta_master_descuentos]) as int) end as [mtarjeta_master_descuentos],
case when [ccomisiones_mantenimiento] = '' then null else cast(convert(float,[ccomisiones_mantenimiento]) as int) end as [ccomisiones_mantenimiento],
case when [mcomisiones_mantenimiento] = '' then null else cast(convert(float,[mcomisiones_mantenimiento]) as int) end as [mcomisiones_mantenimiento],
case when [ccomisiones_otras] = '' then null else cast(convert(float,[ccomisiones_otras]) as int) end as [ccomisiones_otras],
case when [mcomisiones_otras] = '' then null else cast(convert(float,[mcomisiones_otras]) as int) end as [mcomisiones_otras],
case when [cforex] = '' then null else cast(convert(float,[cforex]) as int) end as [cforex],
case when [cforex_buy] = '' then null else cast(convert(float,[cforex_buy]) as int) end as [cforex_buy],
case when [mforex_buy] = '' then null else cast(convert(float,[mforex_buy]) as int) end as [mforex_buy],
case when [cforex_sell] = '' then null else cast(convert(float,[cforex_sell]) as int) end as [cforex_sell],
case when [mforex_sell] = '' then null else cast(convert(float,[mforex_sell]) as int) end as [mforex_sell],
case when [ctransferencias_recibidas] = '' then null else cast(convert(float,[ctransferencias_recibidas]) as int) end as [ctransferencias_recibidas],
case when [mtransferencias_recibidas] = '' then null else cast(convert(float,[mtransferencias_recibidas]) as int) end as [mtransferencias_recibidas],
case when [ctransferencias_emitidas] = '' then null else cast(convert(float,[ctransferencias_emitidas]) as int) end as [ctransferencias_emitidas],
case when [mtransferencias_emitidas] = '' then null else cast(convert(float,[mtransferencias_emitidas]) as int) end as [mtransferencias_emitidas],
case when [cextraccion_autoservicio] = '' then null else cast(convert(float,[cextraccion_autoservicio]) as int) end as [cextraccion_autoservicio],
case when [mextraccion_autoservicio] = '' then null else cast(convert(float,[mextraccion_autoservicio]) as int) end as [mextraccion_autoservicio],
case when [ccheques_depositados] = '' then null else cast(convert(float,[ccheques_depositados]) as int) end as [ccheques_depositados],
case when [mcheques_depositados] = '' then null else cast(convert(float,[mcheques_depositados]) as int) end as [mcheques_depositados],
case when [ccheques_emitidos] = '' then null else cast(convert(float,[ccheques_emitidos]) as int) end as [ccheques_emitidos],
case when [mcheques_emitidos] = '' then null else cast(convert(float,[mcheques_emitidos]) as int) end as [mcheques_emitidos],
case when [ccheques_depositados_rechazados] = '' then null else cast(convert(float,[ccheques_depositados_rechazados]) as int) end as [ccheques_depositados_rechazados],
case when [mcheques_depositados_rechazados] = '' then null else cast(convert(float,[mcheques_depositados_rechazados]) as int) end as [mcheques_depositados_rechazados],
case when [ccheques_emitidos_rechazados] = '' then null else cast(convert(float,[ccheques_emitidos_rechazados]) as int) end as [ccheques_emitidos_rechazados],
case when [mcheques_emitidos_rechazados] = '' then null else cast(convert(float,[mcheques_emitidos_rechazados]) as int) end as [mcheques_emitidos_rechazados],
case when [tcallcenter] = '' then null else cast(convert(float,[tcallcenter]) as int) end as [tcallcenter],
case when [ccallcenter_transacciones] = '' then null else cast(convert(float,[ccallcenter_transacciones]) as int) end as [ccallcenter_transacciones],
case when [thomebanking] = '' then null else cast(convert(float,[thomebanking]) as int) end as [thomebanking],
case when [chomebanking_transacciones] = '' then null else cast(convert(float,[chomebanking_transacciones]) as int) end as [chomebanking_transacciones],
case when [ccajas_transacciones] = '' then null else cast(convert(float,[ccajas_transacciones]) as int) end as [ccajas_transacciones],
case when [ccajas_consultas] = '' then null else cast(convert(float,[ccajas_consultas]) as int) end as [ccajas_consultas],
case when [ccajas_depositos] = '' then null else cast(convert(float,[ccajas_depositos]) as int) end as [ccajas_depositos],
case when [ccajas_extracciones] = '' then null else cast(convert(float,[ccajas_extracciones]) as int) end as [ccajas_extracciones],
case when [ccajas_otras] = '' then null else cast(convert(float,[ccajas_otras]) as int) end as [ccajas_otras],
case when [catm_trx] = '' then null else cast(convert(float,[catm_trx]) as int) end as [catm_trx],
case when [matm] = '' then null else cast(convert(float,[matm]) as int) end as [matm],
case when [catm_trx_other] = '' then null else cast(convert(float,[catm_trx_other]) as int) end as [catm_trx_other],
case when [matm_other] = '' then null else cast(convert(float,[matm_other]) as int) end as [matm_other],
case when [ctrx_quarter] = '' then null else cast(convert(float,[ctrx_quarter]) as int) end as [ctrx_quarter],
case when [tmobile_app] = '' then null else cast(convert(float,[tmobile_app]) as int) end as [tmobile_app],
case when [cmobile_app_trx] = '' then null else cast(convert(float,[cmobile_app_trx]) as int) end as [cmobile_app_trx],
case when [Master_delinquency] = '' then null else cast(convert(float,[Master_delinquency]) as int) end as [Master_delinquency],
case when [Master_status] = '' then null else cast(convert(float,[Master_status]) as int) end as [Master_status],
case when [Master_mfinanciacion_limite] = '' then null else cast(convert(float,[Master_mfinanciacion_limite]) as int) end as [Master_mfinanciacion_limite],
case when [Master_Fvencimiento] = '' then null else cast(convert(float,[Master_Fvencimiento]) as int) end as [Master_Fvencimiento],
case when [Master_Finiciomora] = '' then null else cast(convert(float,[Master_Finiciomora]) as int) end as [Master_Finiciomora],
case when [Master_msaldototal] = '' then null else cast(convert(float,[Master_msaldototal]) as int) end as [Master_msaldototal],
case when [Master_msaldopesos] = '' then null else cast(convert(float,[Master_msaldopesos]) as int) end as [Master_msaldopesos],
case when [Master_msaldodolares] = '' then null else cast(convert(float,[Master_msaldodolares]) as int) end as [Master_msaldodolares],
case when [Master_mconsumospesos] = '' then null else cast(convert(float,[Master_mconsumospesos]) as int) end as [Master_mconsumospesos],
case when [Master_mconsumosdolares] = '' then null else cast(convert(float,[Master_mconsumosdolares]) as int) end as [Master_mconsumosdolares],
case when [Master_mlimitecompra] = '' then null else cast(convert(float,[Master_mlimitecompra]) as int) end as [Master_mlimitecompra],
case when [Master_madelantopesos] = '' then null else cast(convert(float,[Master_madelantopesos]) as int) end as [Master_madelantopesos],
case when [Master_madelantodolares] = '' then null else cast(convert(float,[Master_madelantodolares]) as int) end as [Master_madelantodolares],
case when [Master_fultimo_cierre] = '' then null else cast(convert(float,[Master_fultimo_cierre]) as int) end as [Master_fultimo_cierre],
case when [Master_mpagado] = '' then null else cast(convert(float,[Master_mpagado]) as int) end as [Master_mpagado],
case when [Master_mpagospesos] = '' then null else cast(convert(float,[Master_mpagospesos]) as int) end as [Master_mpagospesos],
case when [Master_mpagosdolares] = '' then null else cast(convert(float,[Master_mpagosdolares]) as int) end as [Master_mpagosdolares],
case when [Master_fechaalta] = '' then null else cast(convert(float,[Master_fechaalta]) as int) end as [Master_fechaalta],
case when [Master_mconsumototal] = '' then null else cast(convert(float,[Master_mconsumototal]) as int) end as [Master_mconsumototal],
case when [Master_cconsumos] = '' then null else cast(convert(float,[Master_cconsumos]) as int) end as [Master_cconsumos],
case when [Master_cadelantosefectivo] = '' then null else cast(convert(float,[Master_cadelantosefectivo]) as int) end as [Master_cadelantosefectivo],
case when [Master_mpagominimo] = '' then null else cast(convert(float,[Master_mpagominimo]) as int) end as [Master_mpagominimo],
case when [Visa_delinquency] = '' then null else cast(convert(float,[Visa_delinquency]) as int) end as [Visa_delinquency],
case when [Visa_status] = '' then null else cast(convert(float,[Visa_status]) as int) end as [Visa_status],
case when [Visa_mfinanciacion_limite] = '' then null else cast(convert(float,[Visa_mfinanciacion_limite]) as int) end as [Visa_mfinanciacion_limite],
case when [Visa_Fvencimiento] = '' then null else cast(convert(float,[Visa_Fvencimiento]) as int) end as [Visa_Fvencimiento],
case when [Visa_Finiciomora] = '' then null else cast(convert(float,[Visa_Finiciomora]) as int) end as [Visa_Finiciomora],
case when [Visa_msaldototal] = '' then null else cast(convert(float,[Visa_msaldototal]) as int) end as [Visa_msaldototal],
case when [Visa_msaldopesos] = '' then null else cast(convert(float,[Visa_msaldopesos]) as int) end as [Visa_msaldopesos],
case when [Visa_msaldodolares] = '' then null else cast(convert(float,[Visa_msaldodolares]) as int) end as [Visa_msaldodolares],
case when [Visa_mconsumospesos] = '' then null else cast(convert(float,[Visa_mconsumospesos]) as int) end as [Visa_mconsumospesos],
case when [Visa_mconsumosdolares] = '' then null else cast(convert(float,[Visa_mconsumosdolares]) as int) end as [Visa_mconsumosdolares],
case when [Visa_mlimitecompra] = '' then null else cast(convert(float,[Visa_mlimitecompra]) as int) end as [Visa_mlimitecompra],
case when [Visa_madelantopesos] = '' then null else cast(convert(float,[Visa_madelantopesos]) as int) end as [Visa_madelantopesos],
case when [Visa_madelantodolares] = '' then null else cast(convert(float,[Visa_madelantodolares]) as int) end as [Visa_madelantodolares],
case when [Visa_fultimo_cierre] = '' then null else cast(convert(float,[Visa_fultimo_cierre]) as int) end as [Visa_fultimo_cierre],
case when [Visa_mpagado] = '' then null else cast(convert(float,[Visa_mpagado]) as int) end as [Visa_mpagado],
case when [Visa_mpagospesos] = '' then null else cast(convert(float,[Visa_mpagospesos]) as int) end as [Visa_mpagospesos],
case when [Visa_mpagosdolares] = '' then null else cast(convert(float,[Visa_mpagosdolares]) as int) end as [Visa_mpagosdolares],
case when [Visa_fechaalta] = '' then null else cast(convert(float,[Visa_fechaalta]) as int) end as [Visa_fechaalta],
case when [Visa_mconsumototal] = '' then null else cast(convert(float,[Visa_mconsumototal]) as int) end as [Visa_mconsumototal],
case when [Visa_cconsumos] = '' then null else cast(convert(float,[Visa_cconsumos]) as int) end as [Visa_cconsumos],
case when [Visa_cadelantosefectivo] = '' then null else cast(convert(float,[Visa_cadelantosefectivo]) as int) end as [Visa_cadelantosefectivo],
case when [Visa_mpagominimo] = '' then null else cast(convert(float,[Visa_mpagominimo]) as int) end as [Visa_mpagominimo],
cast(
case

	when foto_mes = '201901' then 0.47
	when foto_mes = '201902' then 0.48
	when foto_mes = '201903' then 0.50
	when foto_mes = '201904' then 0.52
	when foto_mes = '201905' then 0.54
	when foto_mes = '201906' then 0.56
	when foto_mes = '201907' then 0.57
	when foto_mes = '201908' then 0.59
	when foto_mes = '201909' then 0.61
	when foto_mes = '201910' then 0.65
	when foto_mes = '201911' then 0.67
	when foto_mes = '201912' then 0.70

	when foto_mes = '202010' then 0.90
	when foto_mes = '202011' then 0.93
	when foto_mes = '202012' then 0.96
	when foto_mes = '202101' then 1.00 --referencia mes 0
	when foto_mes = '202102' then 1.04
	when foto_mes = '202103' then 1.08
	when foto_mes = '202104' then 1.13
	when foto_mes = '202105' then 1.17
	when foto_mes = '202106' then 1.21
	when foto_mes = '202107' then 1.25
	when foto_mes = '202108' then 1.28
	when foto_mes = '202109' then 1.326
	else null
	end as decimal (10,2)) as inflacion_acumulada

from competencia_03_crudo

where foto_mes in (201901,201902,201903,201904,201905,201906,201907,201908,201909,201910,201911,201912,202010,202011,202012,202101,202102,202103,202104,202105,202106,202107,202108,202109)
),


competencia_previo_inflacion as ( 

select *, 
	mrentabilidad/nullif(mrentabilidad_annual,0) as rentabilidad_mensual,
	mcomisiones/nullif(mrentabilidad_annual,0) as mcomisiones_rentabilidad,
	coalesce(mactivos_margen,0) + coalesce(mpasivos_margen,0) as m_activos_pasivos_margen_neto,
	abs(coalesce(mactivos_margen,0)) + abs(coalesce(mpasivos_margen,0)) as m_activos_pasivos_margen_absoluto,
	coalesce(mcuenta_corriente_adicional,0) + coalesce(mcuenta_corriente,0) as mtotal_cta_corriente,
	coalesce(ccuenta_corriente,0) + coalesce(ccaja_ahorro,0) as c_cuentas,
	coalesce(mcaja_ahorro,0) + coalesce(mcaja_ahorro_adicional,0) + coalesce(mcaja_ahorro_dolares,0) as mtotal_caja_ahorro,
	(coalesce(mcuenta_corriente_adicional,0) + coalesce(mcuenta_corriente,0))/nullif(mcuentas_saldo,0) as porcentaje_saldo_cta_corriente,
	(coalesce(mcaja_ahorro,0) + coalesce(mcaja_ahorro_adicional,0) + coalesce(mcaja_ahorro_dolares,0))/nullif(mcuentas_saldo,0) as porcentaje_saldo_caja_ahorro,
	ctarjeta_debito_transacciones/nullif(ctarjeta_debito,0)  as cant_transacciones_por_tarjeta_debito,
	cast(mautoservicio*1.0/nullif(ctarjeta_debito,0) as bigint) as monto_prom_trx_tarjeta_debito,
	coalesce(ctarjeta_visa,0) + coalesce(ctarjeta_master,0) as cant_cuentas_visa_y_master,
	cast(mtarjeta_master_consumo*1.0/nullif(ctarjeta_visa_transacciones,0) as bigint) as cons_prom_visa,
	cast(mtarjeta_master_consumo*1.0/nullif(ctarjeta_master_transacciones,0) as bigint) as cons_prom_master,
	coalesce(mtarjeta_visa_consumo,0) + coalesce(mtarjeta_master_consumo,0) as consumo_total_tc,
	coalesce(ctarjeta_visa_transacciones,0) + coalesce(ctarjeta_master_transacciones,0) as transacciones_totales_tc,
	cast((coalesce(mtarjeta_visa_consumo,0) + coalesce(mtarjeta_master_consumo,0))*1.0/(nullif((coalesce(ctarjeta_visa_transacciones,0) + coalesce(ctarjeta_master_transacciones,0)),0))as bigint) as consumo_promedio_tc,
	coalesce(cprestamos_personales,0) + coalesce(cprestamos_prendarios,0) + coalesce(cprestamos_hipotecarios,0) as cantidad_total_prestamos,
	coalesce(mprestamos_personales,0) + coalesce(mprestamos_prendarios,0) + coalesce(mprestamos_hipotecarios,0) as monto_total_prestamos,
	(coalesce(mprestamos_personales,0) + coalesce(mprestamos_prendarios,0) + coalesce(mprestamos_hipotecarios,0))/nullif((coalesce(cprestamos_personales,0) + coalesce(cprestamos_prendarios,0) + coalesce(cprestamos_hipotecarios,0)),0) as deuda_promedio_prestamo,
	coalesce(mplazo_fijo_dolares,0) + coalesce(mplazo_fijo_pesos,0) as monto_total_plazos_fijos,
	(coalesce(mplazo_fijo_dolares,0) + coalesce(mplazo_fijo_pesos,0))/nullif(cplazo_fijo,0) as dinero_prom_por_plazo_fijo,
	coalesce(minversion1_pesos,0) + coalesce(minversion1_dolares,0) as monto_total_inv_tipo1,
	(coalesce(minversion1_pesos,0) + coalesce(minversion1_dolares,0))/nullif(cinversion1,0) as dinero_prom_inv_tipo1,
	coalesce(minversion2,0)/nullif(cinversion1,0) as dinero_prom_inv_tipo2,
	coalesce(cplazo_fijo,0) + coalesce(cinversion1,0) + coalesce(cinversion2,0) as cant_inversiones_totales,
	coalesce(mplazo_fijo_dolares,0) + coalesce(mplazo_fijo_pesos,0) + coalesce(minversion1_pesos,0) + coalesce(minversion1_dolares,0) + coalesce(minversion2,0) as monto_inversiones_totales,
	(coalesce(mplazo_fijo_dolares,0) + coalesce(mplazo_fijo_pesos,0) + coalesce(minversion1_pesos,0) + coalesce(minversion1_dolares,0) + coalesce(minversion2,0))/nullif(coalesce(cplazo_fijo,0) + coalesce(cinversion1,0) + coalesce(cinversion2,0),0) as dinero_prom_por_inversion,
	coalesce(cseguro_vida,0) + coalesce(cseguro_auto,0) + coalesce(cseguro_vivienda,0) + coalesce(cseguro_accidentes_personales,0) as cant_seguros_totales,
	coalesce(mpayroll,0) + coalesce(mpayroll2,0) as monto_total_acreditaciones,
	coalesce(cpayroll2_trx,0) + coalesce(cpayroll_trx,0) as cantidad_total_acreditaciones,
	(coalesce(mpayroll,0) + coalesce(mpayroll2,0))/nullif(cliente_edad,0) as acreditaciones_sobre_edad,
	mcuenta_debitos_automaticos/nullif(ccuenta_debitos_automaticos,0) as monto_debito_promedio_cuenta,
	coalesce(ctarjeta_visa_debitos_automaticos,0) +  coalesce(ctarjeta_master_debitos_automaticos,0) as cantidad_debitos_en_tc,
	coalesce(mttarjeta_visa_debitos_automaticos,0) + coalesce(mttarjeta_master_debitos_automaticos,0) as monto_debitos_en_tc,
	coalesce(ccuenta_debitos_automaticos,0) + coalesce(ctarjeta_visa_debitos_automaticos,0) + coalesce(ctarjeta_master_debitos_automaticos,0) as cantidad_debitos_totales,
	coalesce(mcuenta_debitos_automaticos,0) + coalesce(mttarjeta_visa_debitos_automaticos,0) + coalesce(mttarjeta_master_debitos_automaticos,0) as monto_total_debitado_tc,
	coalesce(cpagodeservicios,0) + coalesce(cpagomiscuentas,0) as cantidad_pagos_servicio_totales,
	coalesce(mpagodeservicios,0) + coalesce(mpagomiscuentas,0) as monto_pago_servicios_totales,
	mcajeros_propios_descuentos/nullif(ccajeros_propios_descuentos,0) as descuento_cajero_promedio,
	coalesce(ctarjeta_visa_descuentos,0) + coalesce(ctarjeta_master_descuentos,0) as cantidad_descuentos_totales_tc,
	coalesce(ccomisiones_mantenimiento,0) + coalesce(ccomisiones_otras,0) as cantidad_comisiones_totales,
	coalesce(mcomisiones_mantenimiento,0) + coalesce(mcomisiones_otras,0) as monto_total_comisiones,
	(coalesce(mcomisiones_mantenimiento,0) + coalesce(mcomisiones_otras,0))/nullif(coalesce(ccomisiones_mantenimiento,0) + coalesce(ccomisiones_otras,0),0) as comision_promedio,
	coalesce(mforex_buy,0) + coalesce(mforex_sell,0) as monto_total_operado_forex,
	(coalesce(mforex_buy,0) + coalesce(mforex_sell,0))/nullif(cforex,0) as monto_operado_promedio_forex,
	coalesce(ctransferencias_recibidas,0) + coalesce(ctransferencias_emitidas,0) as transferencias_totales,
	abs(coalesce(mtransferencias_recibidas,0)) + abs(coalesce(mtransferencias_emitidas,0)) as montos_transferencias_totales_absolutas,
	coalesce(mtransferencias_recibidas,0) + coalesce(mtransferencias_emitidas,0) as montos_transferencias_totales_netas,
	(abs(coalesce(mtransferencias_recibidas,0)) + abs(coalesce(mtransferencias_emitidas,0)))/nullif(coalesce(ctransferencias_recibidas,0) + coalesce(ctransferencias_emitidas,0),0) as monto_transferencia_promedio,
	mextraccion_autoservicio/nullif(cextraccion_autoservicio,0) as extraccion_cajero_promedio,
	coalesce(ccajas_transacciones,0) + coalesce(ccajas_consultas,0) + coalesce(ccajas_depositos,0) + coalesce(ccajas_extracciones,0) + coalesce(ccajas_otras,0) as cantidad_interacciones_con_linea_caja,
	coalesce(catm_trx,0) + coalesce(catm_trx_other,0) as transacciones_totales_cajeros_automaticos,
	coalesce(matm,0) + coalesce(matm_other,0) as monto_total_cajeros_automaticos,
	(coalesce(matm,0) + coalesce(matm_other,0))/nullif(coalesce(catm_trx,0) + coalesce(catm_trx_other,0),0) as monto_promedio_operado_cajero_automatico,
	coalesce(Master_mconsumospesos,0) + coalesce(Master_mconsumosdolares,0) as master_consumo_total,
	Master_mlimitecompra/nullif((coalesce(mpayroll,0) + coalesce(mpayroll2,0)),0) as master_limite_compra_sobre_sueldo,
	coalesce(Master_madelantopesos,0) + coalesce(Master_madelantodolares,0) as extracciones_totales_master,
	coalesce(Visa_mconsumospesos,0) + coalesce(Visa_mconsumosdolares,0) as visa_consumo_total,
	Visa_mlimitecompra/nullif((coalesce(mpayroll,0) + coalesce(mpayroll2,0)),0) as visa_limite_compra_sobre_sueldo,
	case when Master_status = 0 then 1 else 0 end as master_abierta,
	case when Master_status in (6,7) then 1 else 0 end as master_en_proceso_cierre,
	case when Master_status = 9 then 1 else 0 end as master_cerrada,
	case when Visa_status = 0 then 1 else 0 end as visa_abierta,
	case when Visa_status in (6,7) then 1 else 0 end as visa_en_proceso_cierre,
	case when Visa_status = 9 then 1 else 0 end as visa_cerrada,
	coalesce(Master_madelantodolares ,0) + coalesce(Visa_madelantodolares,0) as adelantos_dolares_tc,
	coalesce(Master_mlimitecompra ,0) + coalesce(Visa_mlimitecompra,0) as milites_compra_total_tc
from #competencia_03_crudo
				),

#competencia_03 as (
select	
		numero_de_cliente,
		foto_mes,
		active_quarter,
		cliente_vip,
		internet,
		cliente_edad,
		cliente_antiguedad,
		cast(mrentabilidad/inflacion_acumulada as bigint) as mrentabilidad,
		cast(mrentabilidad_annual/inflacion_acumulada as bigint) as mrentabilidad_annual,
		cast(mcomisiones/inflacion_acumulada as bigint) as mcomisiones,
		cast(mactivos_margen/inflacion_acumulada as bigint) as mactivos_margen,
		cast(mpasivos_margen/inflacion_acumulada as bigint) as mpasivos_margen,
		cproductos,
		tcuentas,
		ccuenta_corriente,
		cast(mcuenta_corriente_adicional/inflacion_acumulada as bigint) as mcuenta_corriente_adicional,
		cast(mcuenta_corriente/inflacion_acumulada as bigint) as mcuenta_corriente,
		ccaja_ahorro,
		cast(mcaja_ahorro/inflacion_acumulada as bigint) as mcaja_ahorro,
		cast(mcaja_ahorro_adicional/inflacion_acumulada as bigint) as mcaja_ahorro_adicional,
		cast(mcaja_ahorro_dolares/inflacion_acumulada as bigint) as mcaja_ahorro_dolares,
		cdescubierto_preacordado,
		cast(mcuentas_saldo/inflacion_acumulada as bigint) as mcuentas_saldo,
		ctarjeta_debito,
		ctarjeta_debito_transacciones,
		cast(mautoservicio/inflacion_acumulada as bigint) as mautoservicio,
		ctarjeta_visa,
		ctarjeta_visa_transacciones,
		cast(mtarjeta_visa_consumo/inflacion_acumulada as bigint) as mtarjeta_visa_consumo,
		ctarjeta_master,
		ctarjeta_master_transacciones,
		cast(mtarjeta_master_consumo/inflacion_acumulada as bigint) as mtarjeta_master_consumo,
		cprestamos_personales,
		cast(mprestamos_personales/inflacion_acumulada as bigint) as mprestamos_personales,
		cprestamos_prendarios,
		cast(mprestamos_prendarios/inflacion_acumulada as bigint) as mprestamos_prendarios,
		cprestamos_hipotecarios,
		cast(mprestamos_hipotecarios/inflacion_acumulada as bigint) as mprestamos_hipotecarios,
		cplazo_fijo,
		cast(mplazo_fijo_dolares/inflacion_acumulada as bigint) as mplazo_fijo_dolares,
		cast(mplazo_fijo_pesos/inflacion_acumulada as bigint) as mplazo_fijo_pesos,
		cinversion1,
		cast(minversion1_pesos/inflacion_acumulada as bigint) as minversion1_pesos,
		cast(minversion1_dolares/inflacion_acumulada as bigint) as minversion1_dolares,
		cinversion2,
		cast(minversion2/inflacion_acumulada as bigint) as minversion2,
		cseguro_vida,
		cseguro_auto,
		cseguro_vivienda,
		cseguro_accidentes_personales,
		ccaja_seguridad,
		cpayroll_trx,
		cast(mpayroll/inflacion_acumulada as bigint) as mpayroll,
		cast(mpayroll2/inflacion_acumulada as bigint) as mpayroll2,
		cpayroll2_trx,
		ccuenta_debitos_automaticos,
		cast(mcuenta_debitos_automaticos/inflacion_acumulada as bigint) as mcuenta_debitos_automaticos,
		ctarjeta_visa_debitos_automaticos,
		cast(mttarjeta_visa_debitos_automaticos/inflacion_acumulada as bigint) as mttarjeta_visa_debitos_automaticos,
		ctarjeta_master_debitos_automaticos,
		cast(mttarjeta_master_debitos_automaticos/inflacion_acumulada as bigint) as mttarjeta_master_debitos_automaticos,
		cpagodeservicios,
		cast(mpagodeservicios/inflacion_acumulada as bigint) as mpagodeservicios,
		cpagomiscuentas,
		cast(mpagomiscuentas/inflacion_acumulada as bigint) as mpagomiscuentas,
		ccajeros_propios_descuentos,
		cast(mcajeros_propios_descuentos/inflacion_acumulada as bigint) as mcajeros_propios_descuentos,
		ctarjeta_visa_descuentos,
		cast(mtarjeta_visa_descuentos/inflacion_acumulada as bigint) as mtarjeta_visa_descuentos,
		ctarjeta_master_descuentos,
		cast(mtarjeta_master_descuentos/inflacion_acumulada as bigint) as mtarjeta_master_descuentos,
		ccomisiones_mantenimiento,
		cast(mcomisiones_mantenimiento/inflacion_acumulada as bigint) as mcomisiones_mantenimiento,
		ccomisiones_otras,
		cast(mcomisiones_otras/inflacion_acumulada as bigint) as mcomisiones_otras,
		cforex,
		cforex_buy,
		cast(mforex_buy/inflacion_acumulada as bigint) as mforex_buy,
		cforex_sell,
		cast(mforex_sell/inflacion_acumulada as bigint) as mforex_sell,
		ctransferencias_recibidas,
		cast(mtransferencias_recibidas/inflacion_acumulada as bigint) as mtransferencias_recibidas,
		ctransferencias_emitidas,
		cast(mtransferencias_emitidas/inflacion_acumulada as bigint) as mtransferencias_emitidas,
		cextraccion_autoservicio,
		cast(mextraccion_autoservicio/inflacion_acumulada as bigint) as mextraccion_autoservicio,
		ccheques_depositados,
		cast(mcheques_depositados/inflacion_acumulada as bigint) as mcheques_depositados,
		ccheques_emitidos,
		cast(mcheques_emitidos/inflacion_acumulada as bigint) as mcheques_emitidos,
		ccheques_depositados_rechazados,
		cast(mcheques_depositados_rechazados/inflacion_acumulada as bigint) as mcheques_depositados_rechazados,
		ccheques_emitidos_rechazados,
		cast(mcheques_emitidos_rechazados/inflacion_acumulada as bigint) as mcheques_emitidos_rechazados,
		tcallcenter,
		ccallcenter_transacciones,
		thomebanking,
		chomebanking_transacciones,
		ccajas_transacciones,
		ccajas_consultas,
		ccajas_depositos,
		ccajas_extracciones,
		ccajas_otras,
		catm_trx,
		cast(matm/inflacion_acumulada as bigint) as matm,
		catm_trx_other,
		cast(matm_other/inflacion_acumulada as bigint) as matm_other,
		ctrx_quarter,
		tmobile_app,
		cmobile_app_trx,
		Master_delinquency,
		Master_status,
		cast(Master_mfinanciacion_limite/inflacion_acumulada as bigint) as Master_mfinanciacion_limite,
		Master_Fvencimiento,
		Master_Finiciomora,
		cast(Master_msaldototal/inflacion_acumulada as bigint) as Master_msaldototal,
		cast(Master_msaldopesos/inflacion_acumulada as bigint) as Master_msaldopesos,
		cast(Master_msaldodolares/inflacion_acumulada as bigint) as Master_msaldodolares,
		cast(Master_mconsumospesos/inflacion_acumulada as bigint) as Master_mconsumospesos,
		cast(Master_mconsumosdolares/inflacion_acumulada as bigint) as Master_mconsumosdolares,
		cast(Master_mlimitecompra/inflacion_acumulada as bigint) as Master_mlimitecompra,
		cast(Master_madelantopesos/inflacion_acumulada as bigint) as Master_madelantopesos,
		cast(Master_madelantodolares/inflacion_acumulada as bigint) as Master_madelantodolares,
		Master_fultimo_cierre,
		cast(Master_mpagado/inflacion_acumulada as  bigint) as Master_mpagado,
		cast(Master_mpagospesos/inflacion_acumulada as  bigint) as Master_mpagospesos,
		cast(Master_mpagosdolares/inflacion_acumulada as  bigint) as Master_mpagosdolares,
		Master_fechaalta,
		cast(Master_mconsumototal/inflacion_acumulada as  bigint) as Master_mconsumototal,
		Master_cconsumos,
		cast(Master_cadelantosefectivo/inflacion_acumulada as  bigint) as Master_cadelantosefectivo,
		cast(Master_mpagominimo/inflacion_acumulada as  bigint) as Master_mpagominimo,
		Visa_delinquency,
		Visa_status,
		cast(Visa_mfinanciacion_limite/inflacion_acumulada as  bigint) as Visa_mfinanciacion_limite,
		Visa_Fvencimiento,
		Visa_Finiciomora,
		cast(Visa_msaldototal/inflacion_acumulada as bigint) as  Visa_msaldototal,
		cast(Visa_msaldopesos/inflacion_acumulada as bigint) as  Visa_msaldopesos,
		cast(Visa_msaldodolares/inflacion_acumulada as bigint) as  Visa_msaldodolares,
		cast(Visa_mconsumospesos/inflacion_acumulada as bigint) as  Visa_mconsumospesos,
		cast(Visa_mconsumosdolares/inflacion_acumulada as bigint) as  Visa_mconsumosdolares,
		cast(Visa_mlimitecompra/inflacion_acumulada as bigint) as  Visa_mlimitecompra,
		cast(Visa_madelantopesos/inflacion_acumulada as bigint) as  Visa_madelantopesos,
		cast(Visa_madelantodolares/inflacion_acumulada as bigint) as  Visa_madelantodolares,
		Visa_fultimo_cierre,
		cast(Visa_mpagado/inflacion_acumulada as bigint) as  Visa_mpagado,
		cast(Visa_mpagospesos/inflacion_acumulada as bigint) as  Visa_mpagospesos,
		cast(Visa_mpagosdolares/inflacion_acumulada as bigint) as  Visa_mpagosdolares,
		Visa_fechaalta,
		cast(Visa_mconsumototal/inflacion_acumulada as bigint) as  Visa_mconsumototal,
		Visa_cconsumos,
		cast(Visa_cadelantosefectivo/inflacion_acumulada as bigint) as  Visa_cadelantosefectivo,
		cast(Visa_mpagominimo/inflacion_acumulada as bigint) as  Visa_mpagominimo, --de aca para arriba son variables propias

		cast(rentabilidad_mensual/inflacion_acumulada as bigint) as  g1_rentabilidad_mensual, --de aca para abajo son variables de primera generacion
		cast(mcomisiones_rentabilidad/inflacion_acumulada as bigint) as  g1_mcomisiones_rentabilidad,
		cast(m_activos_pasivos_margen_neto/inflacion_acumulada as bigint) as  g1_m_activos_pasivos_margen_neto,
		cast(m_activos_pasivos_margen_absoluto/inflacion_acumulada as bigint) as  g1_m_activos_pasivos_margen_absoluto,
		cast(mtotal_cta_corriente/inflacion_acumulada as bigint) as  g1_mtotal_cta_corriente,
		c_cuentas as g1_c_cuentas,
		cast(mtotal_caja_ahorro/inflacion_acumulada as bigint) as  g1_mtotal_caja_ahorro,
		porcentaje_saldo_cta_corriente as g1_porcentaje_saldo_cta_corriente,
		porcentaje_saldo_caja_ahorro as g1_porcentaje_saldo_caja_ahorro,
		cant_transacciones_por_tarjeta_debito as g1_cant_transacciones_por_tarjeta_debito,
		cast(monto_prom_trx_tarjeta_debito/inflacion_acumulada as bigint) as  g1_monto_prom_trx_tarjeta_debito,
		cant_cuentas_visa_y_master as g1_cant_cuentas_visa_y_master,
		cast(cons_prom_visa/inflacion_acumulada as bigint) as  g1_cons_prom_visa,
		cast(cons_prom_master/inflacion_acumulada as bigint) as  g1_cons_prom_master,
		cast(consumo_total_tc/inflacion_acumulada as bigint) as  g1_consumo_total_tc,
		transacciones_totales_tc as g1_transacciones_totales_tc,
		cast(consumo_promedio_tc/inflacion_acumulada as bigint) as  g1_consumo_promedio_tc,
		cantidad_total_prestamos as g1_cantidad_total_prestamos,
		cast(monto_total_prestamos/inflacion_acumulada as bigint) as  g1_monto_total_prestamos,
		cast(deuda_promedio_prestamo/inflacion_acumulada as bigint) as  g1_deuda_promedio_prestamo,
		cast(monto_total_plazos_fijos/inflacion_acumulada as bigint) as  g1_monto_total_plazos_fijos,
		cast(dinero_prom_por_plazo_fijo/inflacion_acumulada as bigint) as  g1_dinero_prom_por_plazo_fijo,
		cast(monto_total_inv_tipo1/inflacion_acumulada as bigint) as  g1_monto_total_inv_tipo1,
		cast(dinero_prom_inv_tipo1/inflacion_acumulada as bigint) as  g1_dinero_prom_inv_tipo1,
		cast(dinero_prom_inv_tipo2/inflacion_acumulada as bigint) as  g1_dinero_prom_inv_tipo2,
		cant_inversiones_totales as g1_cant_inversiones_totales,
		cast(monto_inversiones_totales/inflacion_acumulada as bigint) as  g1_monto_inversiones_totales,
		cast(dinero_prom_por_inversion/inflacion_acumulada as bigint) as  g1_dinero_prom_por_inversion,
		cant_seguros_totales as g1_cant_seguros_totales,
		cast(monto_total_acreditaciones/inflacion_acumulada as bigint) as  g1_monto_total_acreditaciones,
		cantidad_total_acreditaciones as  g1_cantidad_total_acreditaciones,
		cast(acreditaciones_sobre_edad/inflacion_acumulada as bigint) as  g1_acreditaciones_sobre_edad,
		cast(monto_debito_promedio_cuenta/inflacion_acumulada as bigint) as  g1_monto_debitado_promedio_cuenta,
		cantidad_debitos_en_tc as g1_cantidad_debitos_en_tc,
		cast(monto_debitos_en_tc/inflacion_acumulada as  bigint) as g1_monto_debitos_en_tc,
		cantidad_debitos_totales as g1_cantidad_debitos_totales,
		cast(monto_total_debitado_tc/inflacion_acumulada as bigint) as g1_monto_total_debitado_tc,
		cantidad_pagos_servicio_totales as g1_cantidad_pagos_servicio_totales,
		cast(monto_pago_servicios_totales/inflacion_acumulada as bigint) as g1_monto_pago_servicios_totales,
		cast(descuento_cajero_promedio/inflacion_acumulada as bigint) as g1_descuento_cajero_promedio,
		cantidad_descuentos_totales_tc as g1_cantidad_descuentos_totales_tc,
		cantidad_comisiones_totales as g1_cantidad_comisiones_totales,
		cast(monto_total_comisiones/inflacion_acumulada as bigint) as g1_monto_total_comisiones,
		cast(comision_promedio/inflacion_acumulada as bigint) as g1_comision_promedio,
		cast(monto_total_operado_forex/inflacion_acumulada as bigint) as g1_monto_total_operado_forex,
		cast(monto_operado_promedio_forex/inflacion_acumulada as bigint) as g1_monto_operado_promedio_forex,
		transferencias_totales as g1_transferencias_totales,
		cast(montos_transferencias_totales_absolutas/inflacion_acumulada as bigint) as g1_montos_transferencias_totales_absolutas,
		cast(montos_transferencias_totales_netas/inflacion_acumulada as bigint) as g1_montos_transferencias_totales_netas,
		cast(monto_transferencia_promedio/inflacion_acumulada as bigint) as g1_monto_transferencia_promedio,
		cast(extraccion_cajero_promedio/inflacion_acumulada as bigint) as g1_extraccion_cajero_promedio,
		cantidad_interacciones_con_linea_caja as g1_cantidad_interacciones_con_linea_caja,
		transacciones_totales_cajeros_automaticos as g1_transacciones_totales_cajeros_automaticos,
		cast(monto_total_cajeros_automaticos/inflacion_acumulada as bigint) as g1_monto_total_cajeros_automaticos,
		cast(monto_promedio_operado_cajero_automatico/inflacion_acumulada as bigint) as g1_monto_promedio_operado_cajero_automatico,
		cast(master_consumo_total/inflacion_acumulada as bigint) as g1_master_consumo_total,
		cast(master_limite_compra_sobre_sueldo/inflacion_acumulada as bigint) as g1_master_limite_compra_sobre_sueldo,
		cast(extracciones_totales_master/inflacion_acumulada as bigint) as g1_extracciones_totales_master,
		cast(visa_consumo_total/inflacion_acumulada as bigint) as g1_visa_consumo_total,
		cast(visa_limite_compra_sobre_sueldo/inflacion_acumulada as bigint) as g1_visa_limite_compra_sobre_sueldo,
		master_abierta as g1_master_abierta,
		master_en_proceso_cierre as g1_master_en_proceso_cierre,
		master_cerrada as g1_master_cerrada,
		visa_abierta as g1_visa_abierta,
		visa_en_proceso_cierre as g1_visa_en_proceso_cierre,
		visa_cerrada as g1_visa_cerrada,
		cast(right(foto_mes,2) as bigint) as g1_numero_mes,
		cast(adelantos_dolares_tc/inflacion_acumulada as bigint) as g2_tarjetas_madelantosdolares,
		cast(milites_compra_total_tc/inflacion_acumulada as bigint) as g2_limite_compra_tarjetas_credito

	from competencia_previo_inflacion
),

#competencia_04 as (
select *,
	--Variables 2 generacion
    -- Combinaciones para ctrx_quarter
    ctrx_quarter*1.0 / NULLIF(g1_mtotal_caja_ahorro, 0) AS g2_ctrx_quarter_sobre_g1_mtotal_caja_ahorro,
    ctrx_quarter*1.0 / NULLIF(mpasivos_margen, 0) AS g2_ctrx_quarter_sobre_mpasivos_margen,
    ctrx_quarter*1.0 / NULLIF(g1_m_activos_pasivos_margen_absoluto, 0) AS g2_ctrx_quarter_sobre_g1_m_activos_pasivos_margen_absoluto,
    ctrx_quarter*1.0 / NULLIF(g1_consumo_total_tc, 0) AS g2_ctrx_quarter_sobre_g1_consumo_total_tc,
    ctrx_quarter*1.0 / NULLIF(mcuentas_saldo, 0) AS g2_ctrx_quarter_sobre_mcuentas_saldo,
    ctrx_quarter*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_ctrx_quarter_sobre_g1_monto_total_prestamos,
    ctrx_quarter*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_ctrx_quarter_sobre_g1_monto_total_acreditaciones,
    ctrx_quarter*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_ctrx_quarter_sobre_g2_tarjetas_madelantosdolares,
    ctrx_quarter*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_ctrx_quarter_sobre_g1_transacciones_totales_tc,
    ctrx_quarter*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_ctrx_quarter_sobre_mrentabilidad_annual,
    ctrx_quarter*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_ctrx_quarter_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g1_mtotal_caja_ahorro
    g1_mtotal_caja_ahorro*1.0 / NULLIF(mpasivos_margen, 0) AS g2_g1_mtotal_caja_ahorro_sobre_mpasivos_margen,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g1_m_activos_pasivos_margen_absoluto, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g1_m_activos_pasivos_margen_absoluto,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g1_consumo_total_tc, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g1_consumo_total_tc,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(mcuentas_saldo, 0) AS g2_g1_mtotal_caja_ahorro_sobre_mcuentas_saldo,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g1_monto_total_prestamos,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g1_monto_total_acreditaciones,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g2_tarjetas_madelantosdolares,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g1_transacciones_totales_tc,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_mtotal_caja_ahorro_sobre_mrentabilidad_annual,
    g1_mtotal_caja_ahorro*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_mtotal_caja_ahorro_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para mpasivos_margen
    mpasivos_margen*1.0 / NULLIF(g1_m_activos_pasivos_margen_absoluto, 0) AS g2_mpasivos_margen_sobre_g1_m_activos_pasivos_margen_absoluto,
    mpasivos_margen*1.0 / NULLIF(g1_consumo_total_tc, 0) AS g2_mpasivos_margen_sobre_g1_consumo_total_tc,
    mpasivos_margen*1.0 / NULLIF(mcuentas_saldo, 0) AS g2_mpasivos_margen_sobre_mcuentas_saldo,
    mpasivos_margen*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_mpasivos_margen_sobre_g1_monto_total_prestamos,
    mpasivos_margen*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_mpasivos_margen_sobre_g1_monto_total_acreditaciones,
    mpasivos_margen*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_mpasivos_margen_sobre_g2_tarjetas_madelantosdolares,
    mpasivos_margen*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_mpasivos_margen_sobre_g1_transacciones_totales_tc,
    mpasivos_margen*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_mpasivos_margen_sobre_mrentabilidad_annual,
    mpasivos_margen*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_mpasivos_margen_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g1_m_activos_pasivos_margen_absoluto
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g1_consumo_total_tc, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g1_consumo_total_tc,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(mcuentas_saldo, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_mcuentas_saldo,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g1_monto_total_prestamos,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g1_monto_total_acreditaciones,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g2_tarjetas_madelantosdolares,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g1_transacciones_totales_tc,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_mrentabilidad_annual,
    g1_m_activos_pasivos_margen_absoluto*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_m_activos_pasivos_margen_absoluto_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g1_consumo_total_tc
    g1_consumo_total_tc*1.0 / NULLIF(mcuentas_saldo, 0) AS g2_g1_consumo_total_tc_sobre_mcuentas_saldo,
    g1_consumo_total_tc*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_g1_consumo_total_tc_sobre_g1_monto_total_prestamos,
    g1_consumo_total_tc*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_g1_consumo_total_tc_sobre_g1_monto_total_acreditaciones,
    g1_consumo_total_tc*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_g1_consumo_total_tc_sobre_g2_tarjetas_madelantosdolares,
    g1_consumo_total_tc*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g1_consumo_total_tc_sobre_g1_transacciones_totales_tc,
    g1_consumo_total_tc*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_consumo_total_tc_sobre_mrentabilidad_annual,
    g1_consumo_total_tc*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_consumo_total_tc_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para mcuentas_saldo
    mcuentas_saldo*1.0 / NULLIF(g1_monto_total_prestamos, 0) AS g2_mcuentas_saldo_sobre_g1_monto_total_prestamos,
    mcuentas_saldo*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_mcuentas_saldo_sobre_g1_monto_total_acreditaciones,
    mcuentas_saldo*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_mcuentas_saldo_sobre_g2_tarjetas_madelantosdolares,
    mcuentas_saldo*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_mcuentas_saldo_sobre_g1_transacciones_totales_tc,
    mcuentas_saldo*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_mcuentas_saldo_sobre_mrentabilidad_annual,
    mcuentas_saldo*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_mcuentas_saldo_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g1_monto_total_prestamos
    g1_monto_total_prestamos*1.0 / NULLIF(g1_monto_total_acreditaciones, 0) AS g2_g1_monto_total_prestamos_sobre_g1_monto_total_acreditaciones,
    g1_monto_total_prestamos*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_g1_monto_total_prestamos_sobre_g2_tarjetas_madelantosdolares,
    g1_monto_total_prestamos*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g1_monto_total_prestamos_sobre_g1_transacciones_totales_tc,
    g1_monto_total_prestamos*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_monto_total_prestamos_sobre_mrentabilidad_annual,
    g1_monto_total_prestamos*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_monto_total_prestamos_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g1_monto_total_acreditaciones
    g1_monto_total_acreditaciones*1.0 / NULLIF(g2_tarjetas_madelantosdolares, 0) AS g2_g1_monto_total_acreditaciones_sobre_g2_tarjetas_madelantosdolares,
    g1_monto_total_acreditaciones*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g1_monto_total_acreditaciones_sobre_g1_transacciones_totales_tc,
    g1_monto_total_acreditaciones*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_monto_total_acreditaciones_sobre_mrentabilidad_annual,
    g1_monto_total_acreditaciones*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_monto_total_acreditaciones_sobre_g2_limite_compra_tarjetas_credito,
    -- Combinaciones para g2_tarjetas_madelantosdolares
    g2_tarjetas_madelantosdolares*1.0 / NULLIF(g1_transacciones_totales_tc, 0) AS g2_g2_tarjetas_madelantosdolares_sobre_g1_transacciones_totales_tc,
    g2_tarjetas_madelantosdolares*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g2_tarjetas_madelantosdolares_sobre_mrentabilidad_annual,
    g2_tarjetas_madelantosdolares*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g2_tarjetas_madelantosdolares_sobreg2_limite_compra_tarjetas_credito,
	-- Combinaciones para g1_transacciones_totales_tc
	g1_transacciones_totales_tc*1.0 / NULLIF(mrentabilidad_annual, 0) AS g2_g1_transacciones_totales_tc_sobre_mrentabilidad_annual,
    g1_transacciones_totales_tc*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_g1_transacciones_totales_tc_sobre_g2_limite_compra_tarjetas_credito,
	-- Combinaciones para mrentabilidad_annual
	mrentabilidad_annual*1.0 / NULLIF(g2_limite_compra_tarjetas_credito, 0) AS g2_mrentabilidad_annual_sobre_g2_limite_compra_tarjetas_credito

from #competencia_03 

),

#periodos as (
select distinct foto_mes  from #competencia_04
),

#clientes as (
select distinct numero_de_cliente  from #competencia_04
),
 
#todo as (
select numero_de_cliente, foto_mes  from #clientes left join #periodos on 1 = 1
),


#clase_ternaria_1 as (
select
    t.numero_de_cliente
    , t.foto_mes
    , case when c.numero_de_cliente is null then 0 else 1 end as mes_0 
from #todo t
left join #competencia_04 c on c.numero_de_cliente = t.numero_de_cliente 
	and c.foto_mes = t.foto_mes
),

#tabla_final as (
select
  foto_mes
  , numero_de_cliente
  ,mes_0
  , lead(mes_0, 1) over (partition by numero_de_cliente order by foto_mes) as mes_1
  , lead(mes_0, 2) over (partition by numero_de_cliente order by foto_mes) as mes_2 
from #clase_ternaria_1 where mes_0 = 1
),

#table_final_2 as (
select 
		foto_mes as foto_mes_2,
		numero_de_cliente as numero_de_cliente_2,
case	when foto_mes = '202109' then null
		when mes_0 = 1 and mes_1 = 1 and mes_2 = 1 then 'CONTINUA'
		when mes_0 = 1 and mes_1 is null then 'BAJA+1'
		when mes_0 = 1 and mes_1 = 1 and mes_2 is null then 'BAJA+2'
		end as clase_ternaria
from #tabla_final
),


#competencia_3 as (
select *
from #competencia_04 c
left join #table_final_2 t on c.numero_de_cliente = t.numero_de_cliente_2 and c.foto_mes = t.foto_mes_2
--where foto_mes in (201901,201902,201903,201904,201905,201906,201907,201908,201909,201910,201911,201912,202010,202011,202012,202101,202102,202103,202104,202105,202106,202107,202109)
where foto_mes in (202010,202011,202012,202101,202102,202103,202104,202105,202106,202107)
)

SELECT *
FROM (
    SELECT * 
    FROM #competencia_3
    WHERE clase_ternaria in ('BAJA+2','BAJA+1') and foto_mes <> 202107

    UNION ALL

    SELECT TOP 40 PERCENT * --40% de los continua agarrados de forma random
    FROM #competencia_3
    WHERE clase_ternaria = 'CONTINUA' and foto_mes <> 202107
    ORDER BY NEWID()

	UNION ALL

	SELECT * 
    FROM #competencia_3
    WHERE foto_mes = 202107
) AS subconsulta
order by numero_de_cliente, foto_mes asc

