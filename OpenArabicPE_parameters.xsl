<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!-- identify the author of the change by means of a @xml:id -->
    <xsl:param name="p_id-editor" select="'pers_TG'"/>
    
    <!-- toggle debugging (not available in all stylesheets) -->
    <xsl:param name="p_verbose" select="false()"/>
    
    <!-- generate an id for the most recent change -->
    <xsl:param name="p_id-change" select="concat(generate-id(//tei:change[1]),'x')"/>
    
</xsl:stylesheet>