# AECA / other non-HLA antibodies - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AECA / other non-HLA antibodies**

## Extension: AECA / other non-HLA antibodies 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-aeca-other | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:MarkerImmuneFunctionAecaOther |

Anti-endothelial cell antibodies or other non-HLA antibodies not captured above.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Marker of Immune Function](StructureDefinition-marker-immune-function.md)
* Examples for this Extension: [Basic/mark-imm-func-example-1](Basic-mark-imm-func-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/marker-immune-function-aeca-other)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-marker-immune-function-aeca-other.csv), [Excel](StructureDefinition-marker-immune-function-aeca-other.xlsx), [Schematron](StructureDefinition-marker-immune-function-aeca-other.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "marker-immune-function-aeca-other",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-aeca-other",
  "version" : "0.1.0",
  "name" : "MarkerImmuneFunctionAecaOther",
  "title" : "AECA / other non-HLA antibodies",
  "status" : "draft",
  "date" : "2025-12-09T16:44:49+01:00",
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
  "description" : "Anti-endothelial cell antibodies or other non-HLA antibodies not captured above.",
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
        "short" : "AECA / other non-HLA antibodies",
        "definition" : "Anti-endothelial cell antibodies or other non-HLA antibodies not captured above."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-aeca-other"
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
