# Time from diagnosis to transplant (months) - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Time from diagnosis to transplant (months)**

## Extension: Time from diagnosis to transplant (months) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-time-diagnosis-to-transplant | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TransplantTimeDiagnosisToTransplant |

Months between disease diagnosis and transplant date (time_diag_to_tx).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant](StructureDefinition-transplant.md)
* Examples for this Extension: [Encounter/TransplantExample1](Encounter-TransplantExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant-time-diagnosis-to-transplant)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant-time-diagnosis-to-transplant.csv), [Excel](StructureDefinition-transplant-time-diagnosis-to-transplant.xlsx), [Schematron](StructureDefinition-transplant-time-diagnosis-to-transplant.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant-time-diagnosis-to-transplant",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-time-diagnosis-to-transplant",
  "version" : "0.1.0",
  "name" : "TransplantTimeDiagnosisToTransplant",
  "title" : "Time from diagnosis to transplant (months)",
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
  "description" : "Months between disease diagnosis and transplant date (time_diag_to_tx).",
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
        "short" : "Time from diagnosis to transplant (months)",
        "definition" : "Months between disease diagnosis and transplant date (time_diag_to_tx)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-time-diagnosis-to-transplant"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
