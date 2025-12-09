<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Basic
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Basic</sch:title>
    <sch:rule context="f:Basic">
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-reference-genome']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-reference-genome': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-name']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-version']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-version': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-sequencing-device']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-sequencing-device': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-target-capture']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-target-capture': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-type']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-type': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-length']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-length': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-mean-target-coverage']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-mean-target-coverage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-alignment-tools']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-alignment-tools': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-chromosome-corrdinate']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-chromosome-corrdinate': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-tools']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-tools': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-databases']) &lt;= 1">extension with URL = 'http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-databases': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 1">identifier: maximum cardinality of 'identifier' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Basic/f:identifier</sch:title>
    <sch:rule context="f:Basic/f:identifier">
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
    <sch:title>f:Basic/f:code</sch:title>
    <sch:rule context="f:Basic/f:code">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Basic/f:code/f:coding</sch:title>
    <sch:rule context="f:Basic/f:code/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
