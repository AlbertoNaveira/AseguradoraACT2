<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
<xsl:key name="tipoSeguro" match="garantia" use="tipo"/>
<xsl:template match="/">
    <html>
        <head>
            <title>Ejercicio 2 - Lenguaje de Marcas - Aseguradora</title>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <meta name="description" content="Garantia económica, respuesta rápida, coberturas sanitarias"/>
            <meta name="keywords" content="seguro, garantia, capital, cobertura, salud, asistencia"/>
            <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        </head>   
        <body>
            <h2>Tabla informativa por tipo de seguro</h2>
            <table>
                <tr>
                <th>Tipo de Seguro</th>
                <th>Nº de Póliza</th>
                <th>Capital Asegurado</th>
                <th>Esta en Vigor</th>
                </tr>
                <xsl:apply-templates select="//asegurado"/>
            </table>
        </body>
    </html>
</xsl:template>

<xsl:template match="asegurado">
  <xsl:apply-templates select="garantia"/>
</xsl:template>

<xsl:template match="garantia">
  <tr>
    <td class="tipo-seguro"><xsl:value-of select="tipo"/></td>
    <td><xsl:value-of select="../../numero"/></td>
    <td><xsl:value-of select="capital"/></td>
    <td><xsl:value-of select="@vigor"/></td>
  </tr>
</xsl:template>

</xsl:stylesheet>