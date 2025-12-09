# Heart rate - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Heart rate**

## Extension: Heart rate 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-heart-rate | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ClinicalVariableHeartRate |

Pulse rate in beats per minute.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Clinical Variable](StructureDefinition-clinical-variable.md)
* Examples for this Extension: [Basic/clinical-variable-example-1](Basic-clinical-variable-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/clinical-variable-heart-rate)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-clinical-variable-heart-rate.csv), [Excel](StructureDefinition-clinical-variable-heart-rate.xlsx), [Schematron](StructureDefinition-clinical-variable-heart-rate.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "clinical-variable-heart-rate",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-heart-rate",
  "version" : "0.1.0",
  "name" : "ClinicalVariableHeartRate",
  "title" : "Heart rate",
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
  "description" : "Pulse rate in beats per minute.",
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
        "short" : "Heart rate",
        "definition" : "Pulse rate in beats per minute."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-heart-rate"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
