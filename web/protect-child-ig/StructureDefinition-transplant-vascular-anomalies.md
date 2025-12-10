# Vascular anomalies - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vascular anomalies**

## Extension: Vascular anomalies 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vascular-anomalies | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:TransplantVascularAnomalies |

Presence of relevant arterial/venous anatomical variants (vascular_anomalies).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant](StructureDefinition-transplant.md)
* Examples for this Extension: [Encounter/TransplantExample1](Encounter-TransplantExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant-vascular-anomalies)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant-vascular-anomalies.csv), [Excel](StructureDefinition-transplant-vascular-anomalies.xlsx), [Schematron](StructureDefinition-transplant-vascular-anomalies.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant-vascular-anomalies",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vascular-anomalies",
  "version" : "0.1.0",
  "name" : "TransplantVascularAnomalies",
  "title" : "Vascular anomalies",
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
  "description" : "Presence of relevant arterial/venous anatomical variants (vascular_anomalies).",
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
        "short" : "Vascular anomalies",
        "definition" : "Presence of relevant arterial/venous anatomical variants (vascular_anomalies)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vascular-anomalies"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
