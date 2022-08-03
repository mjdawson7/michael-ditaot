<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

  <!-- titles -->
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="background-color">
      <xsl:if test="$DRAFT='yes'">#FF00FF</xsl:if>
    </xsl:attribute>
  </xsl:attribute-set>
  <!-- never changed this one... part of exercise p.83. Only changed title font above
  <xsl:attribute-set name="__fo__root" use-attribute-sets="base-font">
    <xsl:attribute name="font-family">serif</xsl:attribute>
    <xsl:attribute name="xml:lang" select="translate($locale, '_', '-')"/>
    <xsl:attribute name="writing-mode" select="$writing-mode"/>
  </xsl:attribute-set>-->

</xsl:stylesheet>
