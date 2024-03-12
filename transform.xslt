<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Micro Blogging Site</title>
      </head>
      <body>
        <h1>Posts</h1>
        <xsl:apply-templates select="microblog/posts/post" />
      </body>
    </html>
  </xsl:template>

  <xsl:template match="post">
    <h2><xsl:value-of select="title" /></h2>
    <p>
      <xsl:value-of select="content" />
    </p>
    <h3>Comments</h3>
    <ul>
      <xsl:apply-templates select="comments/comment" />
    </ul>
  </xsl:template>

  <xsl:template match="comment">
    <li><xsl:value-of select="content" /></li>
  </xsl:template>

</xsl:stylesheet>