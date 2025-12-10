# HLA antibody class or locus - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HLA antibody class or locus**

## Extension: HLA antibody class or locus 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-hla-antibody-class | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MarkerImmuneFunctionHlaAntibodyClass |

Class or locus of the HLA antibody being recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Marker of Immune Function](StructureDefinition-marker-immune-function.md)
* Examples for this Extension: [Basic/mark-imm-func-example-1](Basic-mark-imm-func-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/marker-immune-function-hla-antibody-class)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-marker-immune-function-hla-antibody-class.csv), [Excel](StructureDefinition-marker-immune-function-hla-antibody-class.xlsx), [Schematron](StructureDefinition-marker-immune-function-hla-antibody-class.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "marker-immune-function-hla-antibody-class",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-hla-antibody-class",
  "version" : "0.1.0",
  "name" : "MarkerImmuneFunctionHlaAntibodyClass",
  "title" : "HLA antibody class or locus",
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
  "description" : "Class or locus of the HLA antibody being recorded.",
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
        "short" : "HLA antibody class or locus",
        "definition" : "Class or locus of the HLA antibody being recorded."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-hla-antibody-class"
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
