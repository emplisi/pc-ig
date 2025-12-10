# Concomitant Episode - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concomitant Episode**

## Resource Profile: Concomitant Episode 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ConcomitantEpisode |

 
Clinical episode related to a concomitant disease for a transplant patient. 

**Usages:**

* Refer to this Profile: [Concomitant episode ID relationship](StructureDefinition-concomitant-medication-episode-ref.md), [Concomitant episode ID relationship](StructureDefinition-outcome-concomitant-episode-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Concomitant episode ID relationship](StructureDefinition-visit-concomitant-episode-ref.md)
* Examples for this Profile: [Basic/concomitant-episode-example-1](Basic-concomitant-episode-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/concomitant-episode)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-concomitant-episode.csv), [Excel](StructureDefinition-concomitant-episode.xlsx), [Schematron](StructureDefinition-concomitant-episode.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "concomitant-episode",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode",
  "version" : "0.1.0",
  "name" : "ConcomitantEpisode",
  "title" : "Concomitant Episode",
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
  "description" : "Clinical episode related to a concomitant disease for a transplant patient.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Basic",
        "path" : "Basic"
      },
      {
        "id" : "Basic.extension",
        "path" : "Basic.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Basic.extension:concomitantDiseaseId",
        "path" : "Basic.extension",
        "sliceName" : "concomitantDiseaseId",
        "short" : "Concomitant disease ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-disease-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:patientId",
        "path" : "Basic.extension",
        "sliceName" : "patientId",
        "short" : "Patient ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:date",
        "path" : "Basic.extension",
        "sliceName" : "date",
        "short" : "Date of the concomitant episode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:description",
        "path" : "Basic.extension",
        "sliceName" : "description",
        "short" : "Description of the concomitant episode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-description"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Concomitant episode ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/concomitant-episode-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Concomitant episode category",
        "mustSupport" : true
      },
      {
        "id" : "Basic.code.coding",
        "path" : "Basic.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Basic.code.coding.system",
        "path" : "Basic.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/CodeSystem/concomitant-episode-type"
      },
      {
        "id" : "Basic.code.coding.code",
        "path" : "Basic.code.coding.code",
        "min" : 1
      }
    ]
  }
}

```
