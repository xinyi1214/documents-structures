<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context="ouverture">
            <!-- Change the assert expression. -->
            <sch:assert test="@debut">un élément a toujours un début</sch:assert>
            <sch:assert test="@fin">un élément a toujours un fin</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>