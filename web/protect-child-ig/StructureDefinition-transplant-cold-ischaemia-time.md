# Cold ischaemia time (minutes) - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cold ischaemia time (minutes)**

## Extension: Cold ischaemia time (minutes) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-cold-ischaemia-time | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TransplantColdIschaemiaTime |

Cold ischaemia time for the graft in minutes (cold_ischemia_time).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant](StructureDefinition-transplant.md)
* Examples for this Extension: [Encounter/TransplantExample1](Encounter-TransplantExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant-cold-ischaemia-time)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant-cold-ischaemia-time.csv), [Excel](StructureDefinition-transplant-cold-ischaemia-time.xlsx), [Schematron](StructureDefinition-transplant-cold-ischaemia-time.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant-cold-ischaemia-time",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-cold-ischaemia-time",
  "version" : "0.1.0",
  "name" : "TransplantColdIschaemiaTime",
  "title" : "Cold ischaemia time (minutes)",
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
  "description" : "Cold ischaemia time for the graft in minutes (cold_ischemia_time).",
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
        "short" : "Cold ischaemia time (minutes)",
        "definition" : "Cold ischaemia time for the graft in minutes (cold_ischemia_time)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-cold-ischaemia-time"
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
