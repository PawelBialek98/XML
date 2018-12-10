<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
     <xsl:output method="text" indent="yes"/>
    
    <xsl:variable name="spaces" select="'                                                  '"/>

    <xsl:template match="/StronaRaport">
| IMIE I NAZWISKO       | URODZONY                           | NARODOWOŚĆ   | WZROST | WAGA   | KARIERA     | REKORD|
        <xsl:value-of select="'&#xa;'" />
        <xsl:apply-templates select="Skoczek" />
        <xsl:value-of select="'&#xa;'" />
        <xsl:apply-templates select="Podsumowanie"/>
    </xsl:template>
    <xsl:template match="Skoczek">
        <xsl:call-template name="print-padded">
            <xsl:with-param name="Imi" select="concat(. , substring($spaces, 1, 22 - string-length(.)))"/>
            <xsl:with-param name="Uro" select="concat(@Urodzony, substring($spaces, 1, 35 - string-length(@Urodzony)))"/>
            <xsl:with-param name="Nar" select="concat(@Narodowość, substring($spaces, 1, 13 - string-length(@Narodowość)))"/>
            <xsl:with-param name="Wzr" select="concat(@Wzrost, substring($spaces, 1, 7 - string-length(@Wzrost)))"/>
            <xsl:with-param name="Wag" select="concat(@Waga, substring($spaces, 1, 7 - string-length(@Waga)))"/>
            <xsl:with-param name="Kar" select="concat(@Kariera, substring($spaces, 1, 12 - string-length(@Kariera)))"/>
            <xsl:with-param name="Rek" select="concat(@Rekord, substring($spaces, 1, 6 - string-length(@Rekord)))"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="Podsumowanie">
| KRAJE      | ILOŚC SKOCZKÓW | ŚREDNI REKORD |
        <xsl:value-of select="'&#13;'"/>
        <xsl:value-of select="concat('| ŚWIAT', substring($spaces, 1, 6), '| ',
        Ilość_Skoczkow, substring($spaces, 1, 13),'| ', Średni_Rekord, substring($spaces, 1, 8), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| POLSKA', substring($spaces, 1, 5), '| ',
        Ilość_Polaków, substring($spaces, 1, 14),'| ', Średni_Rekord_Polaków, substring($spaces, 1, 9), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| NORWEGIA', substring($spaces, 1, 3), '| ',
        Ilość_Norwegów, substring($spaces, 1, 14),'| ', Średni_Rekord_Norwegów, substring($spaces, 1, 8), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| FINLANDIA', substring($spaces, 1, 2), '| ',
        Ilość_Finów, substring($spaces, 1, 14),'| ', Średni_Rekord_Finów, substring($spaces, 1, 11), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| AUSTRIA', substring($spaces, 1, 4), '| ',
        Ilość_Austriaków, substring($spaces, 1, 14),'| ', Średni_Rekord_Austriaków, substring($spaces, 1, 11), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| JAPONIA', substring($spaces, 1, 4), '| ',
        Ilość_Japończyków, substring($spaces, 1, 14),'| ', Średni_Rekord_Japończyków, substring($spaces, 1, 9), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| NIEMCY', substring($spaces, 1, 5), '| ',
        Ilość_Niemców, substring($spaces, 1, 14),'| ', Średni_Rekord_Niemców, substring($spaces, 1, 11), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| SZWAJCARIA', substring($spaces, 1, 1), '| ',
        Ilość_Szwajcarów, substring($spaces, 1, 14),'| ', Średni_Rekord_Szwajcarów, substring($spaces, 1, 9), '|', '&#xa;')"/>
        <xsl:value-of select="concat('| SŁOWENIA', substring($spaces, 1, 3), '| ',
        Ilość_Słoweńców, substring($spaces, 1, 14),'| ', Średni_Rekord_Słoweńców, substring($spaces, 1, 8), '|', '&#xa;')"/>
        <xsl:value-of select="'&#xa;'"/>
        <xsl:value-of select="concat('DATA WYGENEROWANIA RAPORTU: ', Data_Wygenerowania_Raportu, '&#xa;')"/>
        <xsl:value-of select="concat('ŚREDNI WZROST SKOCZKÓW: ', Średni_Wzrost, '&#xa;')"/>
    </xsl:template>

    <xsl:template name="print-padded">
        <xsl:param name="Imi" />
        <xsl:param name="Uro" />
        <xsl:param name="Nar" />
        <xsl:param name="Wzr" />
        <xsl:param name="Wag" />
        <xsl:param name="Kar" />
        <xsl:param name="Rek" />
        <xsl:value-of select="concat('| ',$Imi,'| ', $Uro, '| ', $Nar, '| ', $Wzr, '| ', $Wag, '| ', $Kar, '| ', $Rek,
            '|', '&#xa;')" />
    </xsl:template>
</xsl:stylesheet>