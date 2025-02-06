<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/collection">
    <html>
      <head>
        <title>Haihaus Downloads</title>

        <link href="./base.css" rel="stylesheet" />
      </head>

      <body>
        <header>
          <span>
            Haihaus Downloads
          </span>
        </header>

        <main>
          <table>
            <tr>
              <th>Manufacturer</th>
              <th>Software</th>
              <th>Edition</th>
              <th>Version</th>
              <th>Platform</th>
              <th>Download</th>
            </tr>

            <xsl:for-each select="manufacturer">
              <xsl:sort select="@name" />

              <xsl:for-each select="software">
                <xsl:sort select="@name" />

                <xsl:for-each select="release">
                  <xsl:sort select="@name" />

                  <xsl:for-each select="edition">
                    <xsl:sort select="@name" />

                    <xsl:for-each select="version">
                      <xsl:sort select="@name" />

                      <xsl:for-each select="platform">
                        <xsl:for-each select="file">
                          <xsl:sort select="@name" />

                          <tr>
                            <td>
                              <xsl:value-of select="../../../../../../@name" />
                            </td>

                            <td>
                              <xsl:value-of select="../../../../../@name" />
                              <xsl:text> </xsl:text>
                              <xsl:value-of select="../../../../@name" />
                            </td>

                            <td>
                              <xsl:value-of select="../../../@name" />
                            </td>

                            <td>
                              <xsl:value-of select="../../@name" />
                            </td>

                            <td>
                              <xsl:value-of select="../@os" />
                              <xsl:if test="../@arch"> (<xsl:value-of select="../@arch" />) </xsl:if>
                            </td>

                            <td>
                              <a href="{.}">
                                <xsl:value-of select="@name" />
                              </a>
                            </td>
                          </tr>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
          </table>
        </main>

        <footer>
          <p>© 2024 Daniel Hall</p>
          <p>Haihaus Downloads does not host any content and is not affialated with any brands
            listed.</p>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>