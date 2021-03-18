<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table>
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" order="ascending"/>
                        <xsl:choose>
                            <xsl:when test="precio &gt; 100">
                                <tr>
                                    <td>
                                        <xsl:value-of select="precio"/>
                                    </td>
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="libro/@año"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="precio &lt; 100">
                                <tr>
                                    <td>
                                        <xsl:value-of select="precio"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="libro/@año"/>
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