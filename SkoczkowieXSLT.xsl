<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
            doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" indent="yes"/>
    <!--<xsl:output method="html" />-->

    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
            <head>
                <title>Skoczkowie</title>
            </head>
            <body>
                <h2>Skoczkowie</h2>
                <table border="1">
                    <caption><b>Spis Skoczków</b></caption>
                    <tr>
                        <th>Imie i Nazwisko</th>
                        <th>Data i miejsce urodzenia</th>
                        <th>Narodowość</th>
                        <th>Wzrost</th>
                        <th>Waga</th>
                        <th>Czas trwania kariery</th>
                        <th>Rekord</th>
                    </tr>
                    <xsl:for-each select="StronaRaport/Skoczek">
                        <tr>
                            <td><xsl:value-of select="."/></td>
                            <td><xsl:value-of select="@Urodzony"/></td>
                            <td><xsl:value-of select="@Narodowość"/></td>
                            <td><xsl:value-of select="@Wzrost"/></td>
                            <td><xsl:value-of select="@Waga"/></td>
                            <td><xsl:value-of select="@Kariera"/></td>
                            <td><xsl:value-of select="@Rekord"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                <table border="2">
                    <caption><b>Podsumowanie</b></caption>
                    <tr>
                        <th>Ilość Skoczków</th>
                        <th>Ilość Polaków</th>
                        <th>Ilość Norwegów</th>
                        <th>Ilość Finów</th>
                        <th>Ilość Austriaków</th>
                        <th>Ilość Japończyków</th>
                        <th>Ilość Niemców</th>
                        <th>Ilość Szwajcarów</th>
                        <th>Ilość Słoweńców</th>
                        <th>Data wygenerowania dokumentu</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Skoczkow"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Polaków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Norwegów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Finów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Austriaków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Japończyków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Niemców"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Szwajcarów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Słoweńców"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Data_Wygenerowania_Raportu"/></td>
                    </tr>
                    <tr>
                        <th>Średni rekord</th>
                        <th>Średni rekord Polaków</th>
                        <th>Średni rekord Norwegów</th>
                        <th>Średni rekord Finów</th>
                        <th>Średni rekord Austriaków</th>
                        <th>Średni rekord Japończyków</th>
                        <th>Średni rekord Niemców</th>
                        <th>Średni rekord Szwajcarów</th>
                        <th>Średni rekord  Słoweńców</th>
                        <th>Średni wzrost</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Polaków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Norwegów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Finów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Austriaków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Japończyków"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Niemców"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Szwajcarów"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Słoweńców"/></td>
                        <td><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Wzrost"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
    </xsl:stylesheet>