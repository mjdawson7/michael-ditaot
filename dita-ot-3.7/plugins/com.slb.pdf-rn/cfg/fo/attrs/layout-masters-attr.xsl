<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.

Copyright 2011 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="2.0">
    
    <xsl:attribute-set name="region-body.odd">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#C0C0C0</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.even">
    <xsl:attribute name="margin-top">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="margin-bottom">
      <xsl:value-of select="$body-margin"/>
    </xsl:attribute>
    <xsl:attribute name="background-color">#C0C0C0</xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}">
      <xsl:value-of select="$page-margin-outside"/>
    </xsl:attribute>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}">
      <xsl:value-of select="$page-margin-inside"/>
    </xsl:attribute>
  </xsl:attribute-set>
  
</xsl:stylesheet>
