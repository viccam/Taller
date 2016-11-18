<?xml version="1.0"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:ns1="http://pragma.co/ents/MessageDefinition/V1"
xmlns:ns="http://javeriana.co/ents/common/BaseMessageFormat/V1">
<xsl:output method="text" indent="yes"/>
<xsl:strip-space elements="*"/>

<xsl:template match="/">
	<xsl:variable name="body" select="ns:requestMessageIn/Body/PeticionLegado/Req_Recaudos_ConsultarPago_Con200/cuerpo"/>
			<xsl:text>HTTP</xsl:text>
			<xsl:text>GET</xsl:text>
			<xsl:value-of select="$body/referenciaFactura"/>
  </xsl:template>
</xsl:stylesheet>