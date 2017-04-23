<!DOCTYPE html>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>

			<head>
				<meta charset="UTF-8"/>
				<meta name="viewport" content="width=device-width"/>
				 
				 <title>
			         <xsl:value-of select="land/header/title/@text" />
			     </title>
			
				<link href="styles.css" rel="stylesheet" type="text/css" />
			</head> 
       


            <body>
            
            	<header>
	                    <xsl:value-of select="land/header/title/@text" />
            	</header>
            	<br/>
				<div class="abstand"> 
					Auf dem vorgegeben Bild ist eine <xsl:value-of select="land/header/title/@text"/> dargestellt. 
					Es sind darauf insgesamt <b><xsl:value-of select="count(land/staat)" /></b> Staaten zu sehen. 
					Hier können Sie wichtige Informationen über jeden Staat erfahren. Die Staaten sind alphabetisch geordnet! 
					Links neben dem Text können Sie die Flagge und rechts das Wappen des jeweiligen Staates betrachten. 
				</div> 
				
            
            	<xsl:for-each select="milch/produkt">
				<p class="abstandstaaten">
				<div class="name"><xsl:value-of select="@name" /> </div> <br/>
					
				<img class="flagge" title="Flagge" alt="Flagge" >
					<xsl:attribute name="src">
					 	<xsl:value-of select="image1"></xsl:value-of> 
					</xsl:attribute>
				</img>
				<br/>
				
				
				<img class="wappen" alt="Wappen" title="Wappen">
					<xsl:attribute name="src">
						 <xsl:value-of select="image2"></xsl:value-of> 
					</xsl:attribute>
				</img>
				
				<div class="textrechts">In <xsl:value-of select="@name" /> wird <xsl:value-of select=" amtsprache" /> gesprochen. <br/>
				<xsl:value-of select="name" /> ist eine <xsl:value-of select=" staatsform"/>, in der mit der Währung <xsl:value-of select="waehrung"/> gezahlt wird. <br/>
				Die Hauptstadt ist <xsl:value-of select="hauptstadt"/>. <br/> 
				<xsl:value-of select="name" /> hat eine Fläche von <xsl:value-of select="km"/> Quadratkilometer und es leben <xsl:value-of select="einw"/> (Stand <xsl:value-of select="einw/@stand" />) Einwohner in diesem Staat. <br/><br/>
				</div>			
				 
						
				<br/>
				
				<hr/>
				</p>
				</xsl:for-each>
			
		
		<footer><xsl:value-of select="land/daten/autor/@autorname" />, Informations- und Bilderquelle: <a href="http:\\de.wikipedia.org"> <xsl:value-of select="land/daten/quelle/@source" /> </a></footer>
			
          
            </body>

        </html>

    </xsl:template>




</xsl:stylesheet>


