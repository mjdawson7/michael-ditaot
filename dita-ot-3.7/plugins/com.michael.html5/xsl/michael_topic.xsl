<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
                xmlns:ditamsg="http://dita-ot.sourceforge.net/ns/200704/ditamsg"
                version="2.0"
                exclude-result-prefixes="xs dita-ot dita2html ditamsg">
  <!-- Michael HTML def list work -->
  <!-- this part makes the DL list into ul in the output-->
  <xsl:template match="*[contains(@class, ' topic/dl ')]" name="topic.dl">
    <xsl:call-template name="setaname"/>
    <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
    <ul>
      <!-- handle DL compacting - default=yes -->
      <xsl:if test="@compact = 'no'">
        <xsl:attribute name="class">dlexpand</xsl:attribute>
      </xsl:if>
      <xsl:call-template name="commonattributes"/>
      <xsl:apply-templates select="@compact"/>
      <xsl:call-template name="setid"/>
      <xsl:apply-templates/>
    </ul>
    <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
  </xsl:template>
  
  <xsl:template match="*[contains(@class, ' topic/dlentry ')]" name="topic.dlentry">
    <li class="dlentry">
      <xsl:apply-templates/>
    </li>
  </xsl:template>
  <!-- dl to ul section end-->
</xsl:stylesheet>
