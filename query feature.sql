select	
		competencia_01_crudo.numero_de_cliente,
		foto_mes,
		active_quarter,
		cliente_vip,
		internet,
		cliente_edad,
		cliente_antiguedad,

		cast(coalesce(convert(decimal(10,2),cast(mrentabilidad as varchar (6))),0) as int) as ganancia_banco_del_mes,
		cast(coalesce(convert(decimal(10,2),cast(mrentabilidad_annual as varchar (6))),0) as int) as ganancia_banco_anual,

		case	when cast(coalesce(convert(decimal(10,2),cast(mrentabilidad as varchar (6))),0) as int) = 0 then 0 
				when cast(coalesce(convert(decimal(10,2),cast(mrentabilidad_annual as varchar (6))),0) as int) = 0 then 0 
				when mrentabilidad  is null then ''
				when mrentabilidad_annual  is null then '' else
				cast(coalesce(convert(decimal(10,2),cast(mrentabilidad as varchar (6))),0) as int)*1.0/
					cast(coalesce(convert(decimal(10,2),cast(mrentabilidad_annual as varchar (6))),0) as int) end as ganancia_porcentual_mes,

		mcomisiones,mactivos_margen,mpasivos_margen,

		cast(coalesce(convert(decimal(10,2),cast(mcomisiones as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mactivos_margen as varchar(6))),0) + 
			coalesce(convert(decimal(10,2),cast(mpasivos_margen as varchar (6))),0) as int) as ganancias_totales_banco,

		cproductos,
		tcuentas,
		ccuenta_corriente,
		ccaja_ahorro,

		mcuenta_corriente_adicional,mcuenta_corriente,

		cast(coalesce(convert(decimal(10,2),cast(mcuenta_corriente_adicional as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mcuenta_corriente as varchar (6))),0) as int) as pesos_cta_corriente,

		mcaja_ahorro,mcaja_ahorro_adicional,mcaja_ahorro_dolares,

		cast(coalesce(convert(decimal(10,2),cast(mcaja_ahorro as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mcaja_ahorro_adicional as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mcaja_ahorro_dolares as varchar (6))),0) as int) as pesos_caja_ahorro,
		
		cast(coalesce(convert(decimal(10,2),cast(mcuentas_saldo as varchar (6))),0) as int) as saldo_total,

		--case	when convert(decimal(10, 2), mcuentas_saldo) = 0 then 0 
		--		when mcuentas_saldo = '' then '' else
		--		(convert(decimal(10, 2), mcuenta_corriente_adicional) + convert(decimal(10, 2), mcuenta_corriente))/convert(decimal(10, 2),mcuentas_saldo) end as porcentaje_cta_corriente,
		--(cast(mcaja_ahorro as decimal) + cast(mcaja_ahorro_adicional as decimal) + cast(mcaja_ahorro_dolares as decimal))/mcuentas_saldo as porcentaje_caja_ahorro,

		cdescubierto_preacordado,

		ctarjeta_debito,
		ctarjeta_debito_transacciones,

		cast(coalesce(convert(decimal(10,2),cast(mautoservicio as varchar (6))),0) as int) as mautoservicio,

		ctarjeta_visa_transacciones, ctarjeta_master_transacciones,

		cast(coalesce(convert(decimal(10,2),cast(ctarjeta_visa_transacciones as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(ctarjeta_master_transacciones as varchar (6))),0) as int) as tarjetas_creditos,

		mtarjeta_visa_consumo, mtarjeta_master_consumo,

		cast(coalesce(convert(decimal(10,2),cast(mtarjeta_visa_consumo as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mtarjeta_master_consumo as varchar (6))),0) as int) as consumo_pesos_tarjetas_credito,

		ctarjeta_visa, ctarjeta_master,

		cast(coalesce(convert(decimal(10,2),cast(ctarjeta_visa as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(ctarjeta_master as varchar (6))),0) as int) as cantidad_cuentas_tarjeta_credito,
		
		cprestamos_personales,cprestamos_hipotecarios,cprestamos_prendarios,

		cast(coalesce(convert(decimal(10,2),cast(cprestamos_personales as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(cprestamos_hipotecarios as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(cprestamos_prendarios as varchar (6))),0) as int) as cantidad_prestamos,

		mprestamos_prendarios, mprestamos_hipotecarios,mprestamos_personales,

		cast(coalesce(convert(decimal(10,2),cast(mprestamos_prendarios as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mprestamos_hipotecarios as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(mprestamos_personales as varchar (6))),0) as int) as dinero_prestamos,

		mplazo_fijo_dolares,mplazo_fijo_pesos,minversion1_pesos,minversion2,minversion1_dolares,

		cast(coalesce(convert(decimal(10,2),cast(mplazo_fijo_dolares as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mplazo_fijo_pesos as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(minversion1_pesos as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(minversion1_dolares as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(minversion2 as varchar (6))),0) as int) as dinero_invertido,
		
		cplazo_fijo,cinversion1,cinversion2,

		cast(coalesce(convert(decimal(10,2),cast(cplazo_fijo as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(cinversion1 as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(cinversion2 as varchar (6))),0) as int) as cantidad_inversiones,

		cseguro_vida,cseguro_auto,cseguro_vivienda,cseguro_accidentes_personales,

		cast(coalesce(convert(decimal(10,2),cast(cseguro_vida as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(cseguro_auto as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(cseguro_vivienda as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(cseguro_accidentes_personales as varchar (6))),0) as int) as cantidad_seguros,

		ccaja_seguridad,

		mpayroll,mpayroll2,

		cast(coalesce(convert(decimal(10,2),cast(mpayroll as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mpayroll2 as varchar (6))),0) as int) as haberes,

		cpayroll2_trx,cpayroll_trx,

		cast(coalesce(convert(decimal(10,2),cast(cpayroll2_trx as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(cpayroll_trx as varchar (6))),0) as int) as cantidad_haberes,

		ccuenta_debitos_automaticos,
		mcuenta_debitos_automaticos,

		ctarjeta_visa_debitos_automaticos,ctarjeta_master_debitos_automaticos,

		cast(coalesce(convert(decimal(10,2),cast(ctarjeta_visa_debitos_automaticos as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(ctarjeta_master_debitos_automaticos as varchar (6))),0) as int) as cantidad_debitos_sobre_tc,

		mttarjeta_visa_debitos_automaticos, mttarjeta_master_debitos_automaticos,

		cast(coalesce(convert(decimal(10,2),cast(mttarjeta_visa_debitos_automaticos as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mttarjeta_master_debitos_automaticos as varchar (6))),0) as int) as pesos_debitos_sobre_tc,


		cpagodeservicios,
		mpagodeservicios,
		cpagomiscuentas,
		mpagomiscuentas,

		ccajeros_propios_descuentos,
		mcajeros_propios_descuentos,

		ctarjeta_visa_descuentos, ctarjeta_master_descuentos,

		cast(coalesce(convert(decimal(10,2),cast(ctarjeta_visa_descuentos as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(ctarjeta_master_descuentos as varchar (6))),0) as int) as cantidad_descuentos_tc,

		mtarjeta_visa_descuentos,mtarjeta_master_descuentos,

		cast(coalesce(convert(decimal(10,2),cast(mtarjeta_visa_descuentos as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mtarjeta_master_descuentos as varchar (6))),0) as int) as pesos_descuentos_tc,
		
		ccomisiones_mantenimiento, ccomisiones_otras,

		cast(coalesce(convert(decimal(10,2),cast(ccomisiones_mantenimiento as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(ccomisiones_otras as varchar (6))),0) as int) as cantidad_comisiones_banco_mes,

		mcomisiones_mantenimiento, mcomisiones_otras,

		cast(coalesce(convert(decimal(10,2),cast(mcomisiones_mantenimiento as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mcomisiones_otras as varchar (6))),0) as int) as pesos_comisiones_banco_mes,

		(convert(decimal(10, 2), cast(mcomisiones_mantenimiento as varchar (6))) + 
			convert(decimal(10, 2),cast(mcomisiones_otras as varchar (6))))*1.0/convert(decimal(10,2),cast(cproductos as varchar (6))) as comision_por_producto,

		cforex,cforex_buy,cforex_sell,

		cast(coalesce(convert(decimal(10,2),cast(cforex as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(cforex_buy as varchar (6))),0) +
			coalesce(convert(decimal(10,2),cast(cforex_sell as varchar (6))),0) as int) as cantidad_operaciones_forex,

		mforex_buy, mforex_sell,

		cast(coalesce(convert(decimal(10,2),cast(mforex_buy as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mforex_sell as varchar (6))),0) as int) as pesos_forex,

		ctransferencias_recibidas,
		ctransferencias_emitidas,

		mtransferencias_recibidas, mtransferencias_emitidas,

		cast(coalesce(convert(decimal(10,2),cast(mtransferencias_recibidas as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(mtransferencias_emitidas as varchar (6))),0) as int) as volumen_pesos_movidos,

		cast(
		   	 case when mcuentas_saldo = '' then ''
			 when convert(decimal(10,2), cast(mcuentas_saldo as varchar (6))) = 0 then 0
			 when mtransferencias_recibidas = '' then convert(decimal(10, 2),cast(mtransferencias_emitidas as varchar (6)))*1.0/convert(decimal(10,2),cast(mcuentas_saldo as varchar(6)))
			 when mtransferencias_emitidas = '' then convert(decimal(10, 2),cast(mtransferencias_recibidas as varchar (6)))*1.0/convert(decimal(10,2),cast(mcuentas_saldo as varchar (6))) else
			(convert(decimal(10, 2), cast(mtransferencias_recibidas as varchar (6))) + 
				convert(decimal(10, 2),cast(mtransferencias_emitidas as varchar (6))))*1.0/convert(decimal(10,2),cast(mcuentas_saldo as varchar (6))) end as int) as porcentaje_volumen_movido_saldo,

		Visa_mlimitecompra, Master_mlimitecompra,

		cast(coalesce(convert(decimal(10,2),cast(Visa_mlimitecompra as varchar (6))),0) + 
			coalesce(convert(decimal(10,2),cast(Master_mlimitecompra as varchar (6))),0) as int) as limite_compra,

		case
			when mpayroll is null or mpayroll2 is null then ''
			when (coalesce(convert(decimal(10,2),cast(mpayroll as varchar (6))),0)+coalesce(convert(decimal(10,2),cast(mpayroll2 as varchar (6))),0)) = 0 then 0 else
			cast((coalesce(convert(decimal(10,2),cast(Visa_mlimitecompra as varchar (6))),0)+coalesce(convert(decimal(10,2),cast(Master_mlimitecompra as varchar (6))),0))*1.0/
			(coalesce(convert(decimal(10,2),cast(mpayroll as varchar (6))),0)+coalesce(convert(decimal(10,2),cast(mpayroll2 as varchar(6))),0))as int) end as limite_compra_sueldo,

----------

		cextraccion_autoservicio
		,mextraccion_autoservicio
		,ccheques_depositados
		,mcheques_depositados
		,ccheques_emitidos
		,mcheques_emitidos
		,ccheques_depositados_rechazados
		,mcheques_depositados_rechazados
		,ccheques_emitidos_rechazados
		,mcheques_emitidos_rechazados
		,tcallcenter
		,ccallcenter_transacciones
		,thomebanking
		,chomebanking_transacciones
		,ccajas_transacciones
		,ccajas_consultas
		,ccajas_depositos
		,ccajas_extracciones
		,ccajas_otras
		,catm_trx
		,matm
		,catm_trx_other
		,matm_other
		,ctrx_quarter
		,tmobile_app
		,cmobile_app_trx
		,Master_delinquency
		,Master_status
		,Master_mfinanciacion_limite
		,Master_Fvencimiento
		,Master_Finiciomora
		,Master_msaldototal
		,Master_msaldopesos
		,Master_msaldodolares
		,Master_mconsumospesos
		,Master_mconsumosdolares
		,Master_madelantopesos
		,Master_madelantodolares
		,Master_fultimo_cierre
		,Master_mpagado
		,Master_mpagospesos
		,Master_mpagosdolares
		,Master_fechaalta
		,Master_mconsumototal
		,Master_cconsumos
		,Master_cadelantosefectivo
		,Master_mpagominimo
		,Visa_delinquency
		,Visa_status
		,Visa_mfinanciacion_limite
		,Visa_Fvencimiento
		,Visa_Finiciomora
		,Visa_msaldototal
		,Visa_msaldopesos
		,Visa_msaldodolares
		,Visa_mconsumospesos
		,Visa_mconsumosdolares
		,Visa_madelantopesos
		,Visa_madelantodolares
		,Visa_fultimo_cierre
		,Visa_mpagado
		,Visa_mpagospesos
		,Visa_mpagosdolares
		,Visa_fechaalta
		,Visa_mconsumototal
		,Visa_cconsumos
		,Visa_cadelantosefectivo
		,Visa_mpagominimo
		,clase_ternaria

from competencia_01_crudo 
        left join ( 
    select numero_de_cliente, 
            case when sum(mes_1) = 0 then 'BAJA+1' --ex BAJA +1 
                 when sum(mes_2) = 0 then 'BAJA+2' else 'CONTINUA' end as clase_ternaria 
        from ( 
        select numero_de_cliente, 
            case when foto_mes = '202103' then 1 else 0 end as mes_0, 
            case when foto_mes = '202104' then 1 else 0 end as mes_1, 
            case when foto_mes = '202105' then 1 else 0 end as mes_2 
        from competencia_01_crudo 
        where numero_de_cliente in (select distinct numero_de_cliente 
                                        from competencia_01_crudo 
                                        where foto_mes = (select min(foto_mes) from competencia_01_crudo)) 
        group by numero_de_cliente, foto_mes 
                )a 
        group by numero_de_cliente 
                    )c on competencia_01_crudo.numero_de_cliente = c.numero_de_cliente
						
			