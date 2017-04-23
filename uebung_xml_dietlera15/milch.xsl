<!DOCTYPE html>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<meta charset="UTF-8"/>
		<meta name="viewport" content="width=device-width"/>
		<meta name="author">
			<xsl:attribute name="content">
				<xsl:value-of select="milch/header/autor" /> 
			</xsl:attribute>
		</meta>
		<title>	<xsl:value-of select="milch/header/titel" /> </title>
		
		<!-- 
		<link href="css/reset.css" rel="stylesheet" type="text/css" />
    	<link href="css/normalize.css" rel="stylesheet" type="text/css" />
		 -->
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head> 
	
	<body>
    	<header>
			<xsl:value-of select="milch/header/titel" />
		</header>
		<main>	
			<section>
				<h1> <xsl:value-of select="milch/header/beschreibung" /> </h1>
			</section>
			<section> 
				<h3>Aufgabenstellung:</h3>
				<p>Erstellen Sie zu den Objekten in diesem Bild eine <em>XML</em> Datei samt 
				zugehöriger <em>DTD</em> und <em>XSD</em>! Sie sollen mindestens 5 
				unterschiedliche Elemente und 5 Attribute verwenden! Mindestens 1 Element sollte 
				mehrfach vorhanden sein!</p>
				<p>Erstellen Sie mittels <em>XSLT</em> ein <em>HTML5</em> Dokument, das obiges 
				Bild beschreibt. Jede Information des <em>XML</em> Dokuments soll im 
				<em>HTML</em> Dokument aufscheinen!</p>
				<p>Formatieren sie Ihr <em>HTML</em> Dokument überschaubar mit <em>CSS</em>!</p> 
			</section>
			<section> 
				<h3>Bildbeschreibung:</h3>
				<img src="img/src/milch.jpg" alt="Milch"/>
				 <p>Auf dem vorgegebenen Bild sind (meiner Meinung nach) Milchprodukte zu sehen.<br/>
				 Ich tippe auf dreimal Milch (ich kann über das Bild allerdings keinen
				 Unterschied erkennen), ein Joghurt, 5 mal Käse (wobei ich nicht alle
				 identifizieren kann), einmal Butter und Creme Fraiche.<br/>
				 Und ein Ei ... was mich ehrlichgesagt ziemlich verwirrt hat, da es ja kein 
				 Milchprodukt ist, aber ich hab das Ei einfach ignoriert (und wahrscheinlich auch
				 nicht alle Produkte im Bild beschrieben).</p>
			</section>
			<xsl:for-each select="milch/produkt">
				<section>
					<article>
						<h3><xsl:value-of select="name" /></h3>
						<p> Tier: <xsl:value-of select="tier" /> <br/>
						Beschreibung: <xsl:value-of select="beschreibung" /> <br/>
						Herkunft: <xsl:value-of select="herkunft" /> <br/>
						Preis: <xsl:value-of select="preis" /> <br/>
						Typ: <xsl:value-of select="@typ" /> <br/>
						Menge: <xsl:value-of select="@menge" /> <br/>
						Fettgehalt: <xsl:value-of select="@fettgehalt" /> </p>
						<img alt="Milchprodukt">
							<xsl:attribute name="src">
						 		<xsl:value-of select="bild/@src" /> 
							</xsl:attribute>
						</img>
					</article>
				</section>
			</xsl:for-each>
		</main>
		<footer>
			Autor: <xsl:value-of select="milch/autor" />
			Adresse: <xsl:value-of select="milch/autor" />
			Quelle: Wikipedia
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>