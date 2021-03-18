<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> IES Nuestra Sra. de los Remedios </h1>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <xsl:choose>
                            <xsl:when test="decretoTitulo/@año &lt; 2009">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="decretoTitulo/@año"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año = 2009">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td bgcolor="#0000FF">
                                        <xsl:value-of select="decretoTitulo/@año"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="decretoTitulo/@año &gt; 2009">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td bgcolor="#00FF00">
                                        <xsl:value-of select="decretoTitulo/@año"/>
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>