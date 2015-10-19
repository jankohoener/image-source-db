<?xml version="1.0" encoding="UTF-8"?>
<!-- TODO: Rewrite path rules for window.open() (problems with #'s') or remove entirely! -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml/" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="html">
<xsl:template match="/">
<html>
<head>
<meta charset="UTF-8" />
<title>Images and their sources</title>
<style type="text/css">
html { font-family: Lucida Console, Verdana, Arial, Comic Sans, Times New Roman; counter-reset: images; }
table { empty-cells: show; }
div.lastupdate { font-size: smaller; }
tbody td { border: 1px solid black; }
tbody td:hover { background: red; color: white; border: none; }
div.title { cursor: pointer; }
div.title:before { content: counter(images) ". "; counter-increment: images; }
</style>
</head>
<body>
<table>
<thead>
<tr>
<th>File name</th>
<th>Description</th>
<th>Date</th>
<th>Source</th>
<th>Author</th>
<th>Licence</th>
</tr>
</thead>
<tbody>
<xsl:for-each select="imagesources/image">
<tr>
<td>
<xsl:attribute name="onclick">window.open("<xsl:value-of select='filename' />");</xsl:attribute>
<div class="title" title="Click to view"><xsl:value-of select="filename" /><div class="lastupdate">(Last update: <xsl:value-of select="lastupdate" />)</div></div>
</td>
<td><xsl:value-of select="description" /></td>
<td><xsl:value-of select="date" /></td>
<td><xsl:value-of select="source" /></td>
<td><xsl:value-of select="author" /></td>
<td><xsl:value-of select="licence" /></td>
</tr>
</xsl:for-each>
</tbody>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
