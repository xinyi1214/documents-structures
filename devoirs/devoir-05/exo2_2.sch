<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern abstract="true" id="Rom">
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context="$element">
            <!-- Change the assert expression. -->
            <sch:assert test="self::*[child::text()]">un élément contient toujours un enfant paragraphe</sch:assert>
            <sch:assert test="count($attrib)>0">un élément doit contenir au moins un attribut</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern is-a="Rom" id="sp">
        <sch:param name="element" value="projectDesc"/>
        <sch:param name="attrib" value="sp"/>
        
    </sch:pattern>
</sch:schema>