<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:rec="http://www.servicios.co/pagos/schemas"
	exclude-result-prefixes="xsl  xs rec">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="respuesta" select="rec:Resultado" />
		<RespuestaLegado>
			<Res_Recaudos_RealizarPago_Con100>
				<cabecera>
					<codigoRta>0</codigoRta>
					<mensajeRta>
						<xsl:value-of select="$respuesta/rec:mensaje"/>
					</mensajeRta>
				</cabecera>
				<cuerpo>
					<referenciaFactura>
						<xsl:value-of select="$respuesta/rec:referenciaFactura/rec:referenciaFactura"/>
					</referenciaFactura>
					<mensajeRta>
						<xsl:value-of select="$respuesta/rec:mensaje"/>
					</mensajeRta>
				</cuerpo>
			</Res_Recaudos_RealizarPago_Con100>
			
		</RespuestaLegado>
	</xsl:template>
</xsl:stylesheet>