# Variant calling tools - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant calling tools**

## Extension: Variant calling tools 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:GenomicTestVariantCallingTools |

Name and version of the variant calling tool.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Test](StructureDefinition-genomic-test.md)
* Examples for this Extension: [Basic/genomic-test-example-1](Basic-genomic-test-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/genomic-test-variant-calling-tools)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-test-variant-calling-tools.csv), [Excel](StructureDefinition-genomic-test-variant-calling-tools.xlsx), [Schematron](StructureDefinition-genomic-test-variant-calling-tools.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-test-variant-calling-tools",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools",
  "version" : "0.1.0",
  "name" : "GenomicTestVariantCallingTools",
  "title" : "Variant calling tools",
  "status" : "draft",
  "date" : "2025-12-10T13:58:21+01:00",
  "publisher" : "Your Organization",
  "contact" : [
    {
      "name" : "Your Organization",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://example.org"
        }
      ]
    }
  ],
  "description" : "Name and version of the variant calling tool.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Variant calling tools",
        "definition" : "Name and version of the variant calling tool."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
