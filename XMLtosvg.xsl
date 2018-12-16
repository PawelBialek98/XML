<!--<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				version="2.0">
				
<!--<xsl:output method="xml" indent="yes" media-type="image/svg" />-->
	<xsl:template match="StronaRaport">
		<svg width="40cm" height="75cm"  xmlns="http://www.w3.org/2000/svg">


			<text x="45" y="50" font-family="Arial" font-size="55" fill="blue">Skoczkowie i ich rekordy</text>
			<xsl:for-each select="Skoczek">
				<xsl:variable name="pozycja" select="position()*60"/>
				<xsl:variable name="pozycja2" select="position()*5"/>
				<xsl:variable name="rekord" select="@Rekord"/>
				<text x="85" y="{$pozycja+100}" font-family="Arial" font-size="35" fill="green"> <xsl:value-of select="."/> </text>
				<rect x="450" y="{$pozycja+70}" height="30" width="0" fill="blue" stroke="black" stroke-width="1">
                <animate attributeType="XML" attributeName="width" from="0" to="{$rekord}"
                         dur="3s" fill="freeze"/>
				</rect>
				<text x="{780-$pozycja2}" y="{$pozycja+100}" font-family="Arial" font-size="35" fill="orange"> <xsl:value-of select="@Rekord"/> </text>
			</xsl:for-each>
		</svg>
	</xsl:template>
</xsl:stylesheet>