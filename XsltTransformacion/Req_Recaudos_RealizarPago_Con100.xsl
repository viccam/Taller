<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:sch="http://www.servicios.co/pagos/schemas"
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:ns1="http://pragma.co/ents/MessageDefinition/V1"
xmlns:ns="http://javeriana.co/ents/common/BaseMessageFormat/V1"
exclude-result-prefixes="xsl xs sch soapenv">

	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="refBodyIn" select="ns:requestMessageIn/Body/PeticionLegado/Req_Recaudos_RealizarPago_Con100/cuerpo"/>
		<soapenv:Envelope>
			<soapenv:Header>
			</soapenv:Header>
			<soapenv:Body>		
				<sch:Pago>
					<sch:referenciaFactura>
						<sch:referenciaFactura>
							<xsl:value-of select="$refBodyIn/referenciaFactura"/>
						</sch:referenciaFactura>
					</sch:referenciaFactura>
					<sch:totalPagar>
						<xsl:value-of select="$refBodyIn/valorAPagar"/>
					</sch:totalPagar>
				</sch:Pago>
			</soapenv:Body>
		</soapenv:Envelope>			
	</xsl:template>
</xsl:stylesheet>