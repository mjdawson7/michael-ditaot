<?xml version='1.0'?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">
    
    <xsl:template match="*[contains(@class,' ui-d/uicontrol ')]">
        <!-- insert an arrow before all but the first uicontrol in a menucascade -->
        <xsl:if test="ancestor::*[contains(@class,' ui-d/menucascade ')]">
            <xsl:variable name="uicontrolcount" select="count(preceding-sibling::*[contains(@class,' ui-d/uicontrol ')])"/>
            <xsl:if test="$uicontrolcount &gt; 0">
                <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'#menucascade-separator'"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:if>
        <xsl:apply-templates select="." mode="inlineTextOptionalKeyref">
            <xsl:with-param name="copyAttributes" as="element()"><wrapper xsl:use-attribute-sets="uicontrol_large"/></xsl:with-param>
        </xsl:apply-templates>
    </xsl:template>

</xsl:stylesheet>
