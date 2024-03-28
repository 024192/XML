<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Microblogging Posts</title>
            </head>
            <body>
                <h2>Microblog Posts</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Author</th>
                        <th style="text-align:left">Title</th>
                        <th style="text-align:left">Country</th>
                        <th style="text-align:left">Time</th>
                        <th style="text-align:left">Content</th>
                    </tr>
                    <xsl:for-each select="microblog/post">
                        <tr>
                            <td>
                                <xsl:value-of select="author">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="title">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="country">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="time">
                            </td>
                        </tr>                                   
                        <tr>
                            <td>
                                <xsl:value-of select="content">
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>