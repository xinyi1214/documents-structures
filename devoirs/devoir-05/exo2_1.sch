<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern abstract = "true" id="Rom">
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context ="$element">
            <!-- Change the assert expression. -->
            <sch:assert test="self::*[child::teiHead and child::text()]"> le document contient bien un teiHeader et un text</sch:assert>
            <sch:assert test="count($attrib)>1">l'élément doit contenir au moins deux attributs</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern is-a="Rom" id="TEI">
        <sch:param name="element" value="TEI"/>
        <sch:param name="attrib" value="@*"/>
        
    </sch:pattern>
</sch:schema>