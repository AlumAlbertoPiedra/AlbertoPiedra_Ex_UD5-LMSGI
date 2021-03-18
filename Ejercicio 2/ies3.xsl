<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text> Nombre y Apellidos: Alberto Piedra Venegas </xsl:text> <xsl:text>&#xA;</xsl:text> 
        <xsl:for-each select="ies/ciclos/ciclo"> <xsl:text>&#xA;</xsl:text> 
            <xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>)
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>