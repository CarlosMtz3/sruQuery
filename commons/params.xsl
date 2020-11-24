<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:mods="http://www.loc.gov/mods/v3" xpath-default-namespace="http://www.loc.gov/mods/v3"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0" xmlns="http://www.loc.gov/mods/v3"
    xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs xd xlink">
    
    
    <xsl:variable name="filePath" select="document-uri(.)"/>
    <xd:doc scope="stylesheet">
        <xd:desc>
            <xd:p><xd:b>Created on:</xd:b> Jun 19, 2017</xd:p>
            <xd:p><xd:b>Author:</xd:b> cmartinez</xd:p>
            <xd:p>Pulled out in June 2017 as part of the refactoring project</xd:p>
        </xd:desc>
        <xd:desc name="global_parameters" scope="component">
            <xd:ul>
                <xd:li><xd:em>vendorName:</xd:em>The metadata provider, consists primarily of publishers</xd:li>
                <xd:li><xd:em>fullFilePath</xd:em>The full file path of the current document-node being processed</xd:li>
                <xd:li><xd:em>archiveFile:</xd:em> Filename of the current document-node(xml or zip); originally holds the source metadata.</xd:li>
                <xd:li><xd:em>originalFilename:</xd:em>Name of the file currently being processed.</xd:li>
                <xd:li><xd:em>workingDir:</xd:em> Name of the directory containing the file currently being processed.</xd:li>
            </xd:ul>
        </xd:desc>
    </xd:doc>
    <xsl:param name="vendorName" select="*//mods:publisher[1]"/>
    <xsl:param name="archiveFile" select="tokenize(document-uri(.), '/')[last()]" />
    <xsl:param name="originalFilename" select="replace($archiveFile,'(.\w*)(\.xml)','$1')"/>
    <xsl:param name="workingDir" select="substring-before(base-uri(), ($originalFilename))"/>
 
 
</xsl:stylesheet>