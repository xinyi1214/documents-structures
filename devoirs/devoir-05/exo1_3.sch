<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <!-- Change the attribute to point the element being the context of the assert expression. -->
        <sch:rule context="ouverture">
            <!-- Change the assert expression. -->
            <sch:report test="@saufjour=''">les points de vente sont ouverts tous les jours, devraient prendre des vacances</sch:report>
        </sch:rule>
    </sch:pattern>
</sch:schema>