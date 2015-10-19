<?xml version="1.0" encoding="UTF-8"?>
<!-- TODO: Pfad-Regeln für window.open() umschreiben (oder komplett raus) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml/" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="html">
<xsl:template match="/">
<html lang="de-de">
<head>
<meta charset="UTF-8" />
<title>Bilder und ihre Quellen</title>
<style type="text/css">
html { font-family: Lucida Console, Verdana, Arial, Comic Sans, Times New Roman; counter-reset: bilder; }
table { empty-cells: show; }
div.letztesupdate { font-size: smaller; }
tbody td { border: 1px solid black; }
tbody td:hover { background: red; color: white; border: none; }
div.titel { cursor: pointer; }
div.titel:before { content: counter(bilder) ". "; counter-increment: bilder; }
</style>
</head>
<body>
<table>
<thead>
<tr>
<td>Dateiname</td>
<td>Beschreibung</td>
<td>Datum</td>
<td>Quelle</td>
<td>Autor</td>
<td>Lizenz</td>
</tr>
</thead>
<tbody>
<xsl:for-each select="bildquellen/bild">
<tr>
<td>
<xsl:attribute name="onclick">window.open("<xsl:value-of select='dateiname' />");</xsl:attribute>
<div class="titel" title="Zum Angucken anklicken"><xsl:value-of select="dateiname" /><div class="letztesupdate">(Letztes Update: <xsl:value-of select="letztesupdate" />)</div></div>
</td>
<td><xsl:value-of select="beschreibung" /></td>
<td><xsl:value-of select="datum" /></td>
<td><xsl:value-of select="quelle" /></td>
<td><xsl:value-of select="autor" /></td>
<td><xsl:value-of select="lizenz" /></td>
</tr>
</xsl:for-each>
</tbody>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
