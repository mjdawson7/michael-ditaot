<?xml version="1.0" encoding="utf-8"?>
<!--
This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->
<!-- (c) Copyright Suite Solutions -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">
   <xsl:variable name="mirror-page-margins" select="true()"/>
     <!-- The default of 215.9mm x 279.4mm is US Letter size (8.5x11in) -->
  <xsl:variable name="page-width">215.9mm</xsl:variable>
  <xsl:variable name="page-height">279.4mm</xsl:variable>
  
  <xsl:variable name="page-margins">20mm</xsl:variable>

  <!-- Change these if your page has different margins on different sides. -->
  <xsl:variable name="page-margin-inside" select="$page-margins"></xsl:variable>
  <xsl:variable name="page-margin-outside" select="$page-margins"></xsl:variable>
  <xsl:variable name="page-margin-top" select="$page-margins"></xsl:variable>
  <xsl:variable name="page-margin-bottom" select="$page-margins"></xsl:variable>
  
  <xsl:variable name="body-margin">35mm</xsl:variable>
   
</xsl:stylesheet>
