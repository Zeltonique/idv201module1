<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <!-- Send a sorted list to the apply template -->
  <xsl:template match="/">
      <letters>
        <xsl:apply-templates select="lineup/artist">
          <!-- Sort by the index element -->
          <xsl:sort select="name" order="ascending" />
        </xsl:apply-templates>
      </letters>
  </xsl:template>
  
  <!-- Take the sorted list of letters and just print out a copy, in order, to the output file -->
  <xsl:template match="@*|node()">
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
