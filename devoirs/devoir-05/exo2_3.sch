<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern abstract="true" id="Rom">
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context="$element">
            <!-- Change the assert expression. -->
            <sch:assert test="self::*[child::head and descendant::node()]"> chaque div qui sont des actes contiennent un élément head et plusieurs scènes.</sch:assert>
            <sch:assert test="count($attri)>2">l'élément doit contenir plursieurs attributs</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern is-a="Rom" id="div">
        <sch:param name="element" value="div"/>
        <sch:param name="attri" value="@*"/>
    </sch:pattern>
</sch:schema>