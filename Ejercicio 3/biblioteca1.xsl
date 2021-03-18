<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:template match="/">
        <xsl:text> Nombre y Apellidos: Alberto Piedra Venegas </xsl:text> <xsl:text>&#xA;</xsl:text> 
        <xsl:for-each select="bib/libro/autor"> <xsl:sort select="apellido" order="ascending"/><xsl:text>&#xA;</xsl:text> 
            <xsl:value-of select="apellido"/>, <xsl:value-of select="nombre"/>  
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>