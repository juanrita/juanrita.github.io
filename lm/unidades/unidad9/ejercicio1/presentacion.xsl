<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Curriculum Vitae</title>
    <style>
        body {
            color: blue;
        }
        .subtitulo {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Curriculum Vitae</h1>
    <h2 class="subtitulo">Datos personales</h2>
        <h3>Nombre: <xsl:value-of select="/curriculum/datos/nombre"/></h3>
        <h3>Apellidos: <xsl:value-of select="/curriculum/datos/apellidos"/></h3>
        <h3>E-Mail: <xsl:value-of select="/curriculum/datos/email"/></h3>
        <img>
            <xsl:attribute name="src">
                <xsl:value-of select="/curriculum/datos/foto"></xsl:value-of>
            </xsl:attribute>
        </img>
    <h2 class="subtitulo">Redes Sociales</h2>
        <ul>
            <xsl:for-each select="/curriculum/rrss/red">
                <li>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="enlace"/>
                        </xsl:attribute>
                        <xsl:value-of select="nombre"/>
                    </a>
                </li>
            </xsl:for-each>
        </ul>
    <h2 class="subtitulo">FormaciÃ³n</h2>
        <ul>
            <xsl:for-each select="/curriculum/formacion/superior">
                <li>
                    <xsl:value-of select="."/>
                </li>
            </xsl:for-each>
        </ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
