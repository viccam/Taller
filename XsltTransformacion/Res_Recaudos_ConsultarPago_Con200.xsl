<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:rec="http://www.servicios.co/pagos/schemas"
	exclude-result-prefixes="xsl  xs rec">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="respuesta" select="factura" />
		<RespuestaLegado>
			<Res_Recaudos_ConsultarPago_Con200>
				<cabecera>
					<codigoRta>0</codigoRta>
					<mensajeRta>
						<xsl:value-of select="'EXITOSO'"/>
					</mensajeRta>
				</cabecera>
				<cuerpo>
					<referenciaFactura>
						<xsl:value-of select="$respuesta/idFactura"/>
					</referenciaFactura>
					<valorFactura>
						<xsl:value-of select="$respuesta/valorFactura"/>
					</valorFactura>
				</cuerpo>
			</Res_Recaudos_ConsultarPago_Con200>
			
		</RespuestaLegado>
	</xsl:template>
</xsl:stylesheet>