<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:output method="xml" encoding="UTF-8"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="Skoczkowie" page-height="29cm" page-width="21cm" margin-bottom="2cm" margin-top="2cm" margin-left="1.5cm" margin-right="1.5cm" font-size="12pt" font-family="sans-serif">
                    <fo:region-body margin-top="1cm"/>
                    <fo:region-before extent="1.5cm"/>
                    <fo:region-after extent="1.5cm"/>
                </fo:simple-page-master>
                <fo:simple-page-master master-name="Podsumowanie" page-height="29cm" page-width="21cm" margin-bottom="2cm" margin-top="2cm" margin-left="1.5cm" margin-right="1.5cm" font-size="12pt" font-family="sans-serif">
                    <fo:region-body margin-top="1cm"/>
                    <fo:region-before extent="1.5cm"/>
                    <fo:region-after extent="1.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="Skoczkowie">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block display-align="right"><fo:page-number/></fo:block>
				</fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                <xsl:for-each select="/StronaRaport/Skoczek">
                        <fo:table border="solid 2pt blue"  background-color="orange" display-align="left">
							<fo:table-header>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold">Imie i Nazwisko</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" margin-right="20mm">Narodowosc</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" margin-left="2mm">Data i miejsce urodzenia</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Wzrost</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Waga</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Kariera</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold">Rekord</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell display-align="left">
									<fo:block><xsl:value-of select="."/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left" margin-right="15mm">
									<fo:block><xsl:value-of select="@Narodowość"/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left">
									<fo:block><xsl:value-of select="@Urodzony"/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left" margin-left="2mm">
									<fo:block><xsl:value-of select="@Wzrost"/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left">
									<fo:block><xsl:value-of select="@Waga"/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left">
									<fo:block><xsl:value-of select="@Kariera"/></fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="left">
									<fo:block><xsl:value-of select="@Rekord"/></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
                        </fo:table>
                    </xsl:for-each>
                </fo:flow>
            </fo:page-sequence>
			
			<fo:page-sequence master-reference="Podsumowanie">
				<fo:static-content flow-name="xsl-region-after">
					<fo:block display-align="right"><fo:page-number/></fo:block>
				</fo:static-content>
                <fo:flow flow-name="xsl-region-body">
					<fo:block text-align="center" margin-bottom="0.2cm">Podsumowanie</fo:block>
						<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Skoczkow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Skoczkow"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Polaow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Polaków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Polakow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Polaków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Norwegow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Norwegów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Norwegow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Norwegów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Finow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Finów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Finow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Finów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Austriakow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Austriaków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Austriakow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Austriaków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Japonczykow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Japończyków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Japonczykow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Japończyków"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Niemcow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Niemców"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Niemcow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Niemców"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Szwajcarow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Szwajcarów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Szwajcarow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Szwajcarów"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Ilosc Slowencow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Ilość_Słoweńców"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Rekord Slowencow: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Rekord_Słoweńców"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Data Wygenerowania Raportu: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Data_Wygenerowania_Raportu"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
							</fo:list-block>
							<fo:list-block>
							<fo:list-item>
								<fo:list-item-label>
									<fo:block>Sredni Wzrost: </fo:block>
								</fo:list-item-label>
								<fo:list-item-body>
									<fo:block margin-left="8cm"><xsl:value-of select="StronaRaport/Podsumowanie/Średni_Wzrost"/></fo:block>
								</fo:list-item-body>
							</fo:list-item>
						</fo:list-block>
				</fo:flow>
			</fo:page-sequence>
        </fo:root>
    </xsl:template>

</xsl:stylesheet>