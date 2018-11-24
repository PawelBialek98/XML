<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
        <xsl:template match="/">
            <xsl:element name="StronaRaport">
                <xsl:apply-templates select="strona/skoczkowie"/>

                <xsl:element name="Podsumowanie">
                    <xsl:element name="Ilość_Skoczkow">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek)"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Polaków">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no1'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Norwegów">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no2'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Finów">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no3'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Austriaków">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no4'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Japończyków">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no5'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Niemców">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no6'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Szwajcarów">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no7'])"/>
                    </xsl:element>
                    <xsl:element name="Ilość_Słoweńców">
                        <xsl:value-of select="count(strona/skoczkowie/skoczek[@narodowość='no8'])"/>
                    </xsl:element>
                    <xsl:element name="Data_Wygenerowania_Raportu">
                        <xsl:value-of select="format-dateTime(current-dateTime(),'[D01]-[M01]-[Y0001]')" />
                    </xsl:element>
                </xsl:element>

            </xsl:element>
        </xsl:template>
    <xsl:template match="strona/skoczkowie">
        <xsl:for-each select="skoczek">
            <xsl:sort select="kariera/rekord" order="descending"/>
            <xsl:element name="Skoczek">
                <xsl:attribute name="Urodzony">
                    <xsl:value-of select="concat(dataUrodzenia, ' w ', miejsceUrodzenia)"/>
                </xsl:attribute>
                <xsl:choose>
                    <xsl:when test="string(@narodowość) = 'no1'">
                        <xsl:attribute name="Narodowość">Polska</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no2'">
                        <xsl:attribute name="Narodowość">Norwegia</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no3'">
                        <xsl:attribute name="Narodowość">Finlandia</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no4'">
                        <xsl:attribute name="Narodowość">Austria</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no5'">
                        <xsl:attribute name="Narodowość">Japonia</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no6'">
                        <xsl:attribute name="Narodowość">Niemcy</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no7'">
                        <xsl:attribute name="Narodowość">Szwajcaria</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="string(@narodowość) = 'no2'">
                        <xsl:attribute name="Narodowość">Słowenia</xsl:attribute>
                    </xsl:when>
                </xsl:choose>
                <xsl:attribute name="Wzrost">
                    <xsl:value-of select="concat(wzrost, ' ', wzrost/@jednostka)"/>
                </xsl:attribute>
                <xsl:attribute name="Waga">
                    <xsl:value-of select="concat(waga, ' ', waga/@jednostka)"/>
                </xsl:attribute>
                <xsl:attribute name="Kariera">
                    <xsl:value-of select="concat(kariera/poczatek, ' - ', kariera/koniec)"/>
                </xsl:attribute>
                <xsl:attribute name="Rekord">
                    <xsl:value-of select="kariera/rekord"/>
                </xsl:attribute>
                <xsl:value-of select="concat(imie, ' ', nazwisko)"/>
            </xsl:element>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>