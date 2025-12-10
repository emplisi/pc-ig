<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Encounter
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Encounter</sch:title>
    <sch:rule context="f:Encounter">
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-bio-sample-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-bio-sample-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-pre-medication-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-pre-medication-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-concomitant-episode-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-concomitant-episode-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-microbiology-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-microbiology-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-maintenance-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-maintenance-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-lab-result-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-lab-result-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-post-event-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-post-event-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-outcome-ref']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-outcome-ref': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:period) &gt;= 1">period: minimum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:identifier</sch:title>
    <sch:rule context="f:Encounter/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Encounter/f:period</sch:title>
    <sch:rule context="f:Encounter/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
