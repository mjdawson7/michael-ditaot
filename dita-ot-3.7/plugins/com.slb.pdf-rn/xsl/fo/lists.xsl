<?xml version='1.0'?>

<!-- 
Copyright © 2004-2006 by Idiom Technologies, Inc. All rights reserved. 
IDIOM is a registered trademark of Idiom Technologies, Inc. and WORLDSERVER
and WORLDSTART are trademarks of Idiom Technologies, Inc. All other 
trademarks are the property of their respective owners. 

IDIOM TECHNOLOGIES, INC. IS DELIVERING THE SOFTWARE "AS IS," WITH 
ABSOLUTELY NO WARRANTIES WHATSOEVER, WHETHER EXPRESS OR IMPLIED,  AND IDIOM
TECHNOLOGIES, INC. DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE AND WARRANTY OF NON-INFRINGEMENT. IDIOM TECHNOLOGIES, INC. SHALL NOT
BE LIABLE FOR INDIRECT, INCIDENTAL, SPECIAL, COVER, PUNITIVE, EXEMPLARY,
RELIANCE, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO LOSS OF 
ANTICIPATED PROFIT), ARISING FROM ANY CAUSE UNDER OR RELATED TO  OR ARISING 
OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF IDIOM
TECHNOLOGIES, INC. HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 

Idiom Technologies, Inc. and its licensors shall not be liable for any
damages suffered by any person as a result of using and/or modifying the
Software or its derivatives. In no event shall Idiom Technologies, Inc.'s
liability for any damages hereunder exceed the amounts received by Idiom
Technologies, Inc. as a result of this transaction.

These terms and conditions supersede the terms and conditions in any
licensing agreement to the extent that such terms and conditions conflict
with those set forth herein.

This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->

<!-- Elements for steps have been relocated to task-elements.xsl -->
<!-- Templates for <dl> are in tables.xsl -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <!-- from exercise starting p. 70 Select specific elements by context. Doesn't work... lists.xsl has updated since the book was published?
        <xsl:template match="*[contains(@class, ' topic/ul ')]/*[contains(@class, ' topic/li ')]">
        <xsl:choose>
            <xsl:when test="not(preceding-sibling::li)">
                <fo:list-item xsl:use-attribute-sets="ul.li.first">
                    <xsl:call-template name="commonattributes"/>
                    <fo:list-item-label xsl:use-attribute-sets="ul.li__label">
                        <fo:block xsl:use-attribute-sets="ul.li__label__content">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="concat('Unordered List bullet ', (($depth - 1) mod 4) + 1)"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:list-item-label>
                    <fo:list-item-body xsl:use-attribute-sets="ul.li__body">
                        <fo:block xsl:use-attribute-sets="ul.li__content">
                            <xsl:apply-templates/>
                        </fo:block>
                    </fo:list-item-body>
                </fo:list-item>
            </xsl:when>
            <xsl:otherwise>
                <fo:list-item xsl:use-attribute-sets="ul.li">
                    <xsl:call-template name="commonattributes"/>
                    <fo:list-item-label xsl:use-attribute-sets="ul.li__label">
                        <fo:block xsl:use-attribute-sets="ul.li__label__content">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="concat('Unordered List bullet ', (($depth - 1) mod 4) + 1)"/>
                            </xsl:call-template>
                        </fo:block>
                    </fo:list-item-label>
                    <fo:list-item-body xsl:use-attribute-sets="ul.li__body">
                        <fo:block xsl:use-attribute-sets="ul.li__content">
                            <xsl:apply-templates/>
                        </fo:block>
                    </fo:list-item-body>
                </fo:list-item>  
            </xsl:otherwise>
        </xsl:choose>
        <xsl:variable name="depth" select="count(ancestor::*[contains(@class, ' topic/ul ')])"/>
        
    </xsl:template>-->
    
</xsl:stylesheet>