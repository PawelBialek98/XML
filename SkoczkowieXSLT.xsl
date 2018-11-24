<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>
    <!--<xsl:output method="html" />-->

    <xsl:template match="/">
        <html>
            <body>
                <h2>Skoczkowie</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Imie</th>
                        <th>Nazwisko</th>
                        <th>Data urodzenia</th>
                        <th>Miejsce urodzenia</th>
                        <th>Wzrost</th>
                        <th>Waga</th>
                        <th>Początek</th>
                        <th>Koniec</th>
                        <th>Rekord</th>
                    </tr>
                    <xsl:for-each select="strona/skoczkowie/skoczek">
                        <tr>
                            <td><xsl:value-of select="imie"/></td>
                            <td><xsl:value-of select="nazwisko"/></td>
                            <td><xsl:value-of select="dataUrodzenia"/></td>
                            <td><xsl:value-of select="miejsceUrodzenia"/></td>
                            <td><xsl:value-of select="wzrost"/></td>
                            <td><xsl:value-of select="waga"/></td>
                            <xsl:for-each select="kariera">
                                <tr>
                                    <td><xsl:value-of select="poczatek"/></td>
                                    <td><xsl:value-of select="koniec"/></td>
                                    <td><xsl:value-of select="rekord"/></td>
                                </tr>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
                <tr>
                    <xsl:for-each select="strona/kraje_pochodzenia/panstwo">
                        <td><xsl:value-of select="."/></td>
                    </xsl:for-each>
                </tr>
                <tr>
                    <xsl:for-each select="strona/autorzy/autor">
                        <td><xsl:value-of select="."/></td>
                    </xsl:for-each>
                </tr>
            </body>
        </html>
    </xsl:template>
    </xsl:stylesheet>