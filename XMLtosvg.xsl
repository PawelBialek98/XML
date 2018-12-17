<!--<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				version="2.0">
				
<!--<xsl:output method="xml" indent="yes" media-type="image/svg" />-->
	<xsl:template match="StronaRaport">
		<svg width="40cm" height="75cm"  xmlns="http://www.w3.org/2000/svg">

			<script type="text/ecmascript"> <![CDATA[
		    function changeColor(evt) {
		      	var rect = evt.target;
		      	var currentFill = rect.getAttribute("fill");
		      	if (currentFill=="blue")
		        	rect.setAttribute("fill", "green");
		      	else
		        	rect.setAttribute("fill", "blue");
		   		}

		   	function getRandomInt(min, max) {
  				return Math.floor(Math.random() * (max - min + 1) + min);
				}

			function something(evt) {
    			var pom = evt.target;
    			var currentSize = pom.getAttribute("font-size");
    			setInterval(function() {
    				pom.setAttribute("font-size", getRandomInt(10,50));
    			}, 100);
         		}
	  		]]> </script>

			<text x="45" y="50" font-family="Arial" font-size="55" fill="blue">Skoczkowie i ich rekordy</text>
			<xsl:for-each select="Skoczek">
				<xsl:variable name="pozycja" select="position()*60"/>
				<xsl:variable name="rekord" select="@Rekord"/>
				<text x="85" y="{$pozycja+100}" font-family="Arial" font-size="35" fill="green"> <xsl:value-of select="."/> </text>
				<rect onclick="changeColor(evt)" x="450" y="{$pozycja+70}" height="30" width="0" fill="blue" stroke="black" stroke-width="1">
                <animate attributeType="XML" attributeName="width" from="0" to="{10 * ($rekord - 190)}"
                         dur="3s" fill="freeze"/>
				</rect>
				<text onclick="something(evt)" transform="rotate(0)" id="rekord" x="{460+10*($rekord - 190)}" y="{$pozycja+100}" font-family="Arial" font-size="35" fill="orange">
					<xsl:value-of select="@Rekord"/>
				</text>
			</xsl:for-each>
		</svg>
	</xsl:template>
</xsl:stylesheet>