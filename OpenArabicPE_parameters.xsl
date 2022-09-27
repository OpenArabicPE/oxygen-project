<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:oape="https://openarabicpe.github.io/ns" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs xsi"
    version="3.0">
    
    <!-- identify the author of the change by means of a @xml:id -->
    <xsl:param name="p_id-editor" select="'pers_TG'"/>
    <xsl:param name="p_editor">
        <tei:respStmt xml:lang="en">
            <tei:resp>TEI edition</tei:resp>
            <tei:persName xml:id="pers_TG"><tei:forename>Till</tei:forename> <tei:surname>Grallert</tei:surname></tei:persName>
        </tei:respStmt>
    </xsl:param>
    
    <!-- toggle debugging (not available in all stylesheets) -->
    <xsl:param name="p_verbose" select="true()"/>
    
    <!-- generate an id for the most recent change -->
    <xsl:param name="p_id-change" select="generate-id(//tei:revisionDesc[1]/tei:change[last()])"/>
    <!-- ID for the standard print edition -->
    <xsl:param name="p_id-print-edition" select="'#edition_1'"/>
    
    <!-- generate an @xml:id for the selected element -->
    <!-- input: node -->
    <!-- output: xml:id as string -->
    <xsl:function name="oape:generate-xml-id">
        <xsl:param name="p_node"/>
       <!-- <xsl:if test="$p_debug = true()">
            <xsl:message>
                <xsl:text>oape:generate-xml-id</xsl:text>
            </xsl:message>
            <xsl:message>
                <xsl:text>Input: </xsl:text><xsl:copy-of select="$p_node"/>
            </xsl:message>
        </xsl:if>-->
        <!--<xsl:variable name="v_element-name"
            select="
                if(starts-with(name($p_node), 'tei:')) 
                then(substring-after(name($p_node), 'tei:'))
                else(name($p_node))"/>-->
        <xsl:variable name="v_element-name"
            select="$p_node/descendant-or-self::node()[1]/name()"/>
        <xsl:variable name="v_element-name" select=" replace($v_element-name, 'tei:', '')"/>
        <xsl:variable name="v_position" select="count($p_node/preceding::node()[name() = $v_element-name])"/>
        <!--<xsl:if test="$p_verbose = true()">
            <xsl:message>
                <xsl:value-of select="$v_element-name"/>
                <xsl:text> at position </xsl:text>
                <xsl:value-of select="$v_position"/>
            </xsl:message>
        </xsl:if>-->
        <xsl:value-of select="concat($v_element-name, '_', $v_position + 1, '.', generate-id($p_node))"/>
    </xsl:function>
    
</xsl:stylesheet>