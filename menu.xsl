<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Breakfast Menu</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            margin: 20px;
          }
          .menu-item {
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            padding: 10px;
          }
          .menu-header {
            background-color: #008080;
            color: white;
            font-weight: bold;
            padding: 10px;
            font-size: 16px;
          }
          .description {
            margin-top: 5px;
            padding-left: 10px;
            font-size: 14px;
          }
          .calories {
            font-style: italic;
            color: #555;
          }
        </style>
      </head>
      <body>
        <h1>Breakfast Menu</h1>
        <xsl:for-each select="breakfast_menu/food">
          <div class="menu-item">
            <div class="menu-header">
              <xsl:value-of select="name" /> - $<xsl:value-of select="price" />
            </div>
            <div class="description">
              <xsl:value-of select="description" />
              <span class="calories">
                (<xsl:value-of select="calories" /> calories per serving)
              </span>
            </div>
          </div>
        </xsl:for-each>
        <h1>Breakfast Over $5.00</h1>
        <xsl:for-each select="breakfast_menu/food[price &gt; 5.00]">
          <div class="menu-item">
            <div class="menu-header">
              <xsl:value-of select="name" /> - $<xsl:value-of select="price" />
            </div>
            <div class="description">
              <xsl:value-of select="description" />
              <span class="calories">
                (<xsl:value-of select="calories" /> calories per serving)
              </span>
            </div>
          </div>
        </xsl:for-each>
        <h1>Breakfast Low Calories (under 700)</h1>
        <xsl:for-each select="breakfast_menu/food[calories &lt; 700]">
          <div class="menu-item">
            <div class="menu-header">
              <xsl:value-of select="name" /> - $<xsl:value-of select="price" />
            </div>
            <div class="description">
              <xsl:value-of select="description" />
              <span class="calories">
                (<xsl:value-of select="calories" /> calories per serving)
              </span>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
