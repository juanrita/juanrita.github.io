<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
    <head>
      <style>
        h1{
          font-family: monospace;
        }
    
        h2{
          font-family: monospace;
          margin-bottom: none;
        }
    
        html{
          background-color: rgb(180, 180, 180);
        }
    
        a{
          font-family: monospace;
          text-decoration: none;
          font-size: 16px;
        }
      </style>
    </head>
    <body>
      <h1>Trabajo XSLT y XQUERY</h1>
      <nav>
        <xsl:for-each select="//trabajo">
            <a href="{concat(@id, '.xml')}">
            <xsl:value-of select="@id">
            </xsl:value-of></a>
            <br/>
        </xsl:for-each>
      </nav>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>