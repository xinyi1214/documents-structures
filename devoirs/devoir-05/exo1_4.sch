<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context="ville">
            <!-- Change the assert expression. -->
            <sch:assert test="upper-case(text())">les noms des villes devraient être tous en majuscule pour la consistance</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>