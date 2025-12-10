# Concomitant Medication - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concomitant Medication**

## Resource Profile: Concomitant Medication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ConcomitantMedication |

 
Concomitant medication records associated with a concomitant episode. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/concomitant-medication-example-1](Basic-concomitant-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/concomitant-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-concomitant-medication.csv), [Excel](StructureDefinition-concomitant-medication.xlsx), [Schematron](StructureDefinition-concomitant-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "concomitant-medication",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication",
  "version" : "0.1.0",
  "name" : "ConcomitantMedication",
  "title" : "Concomitant Medication",
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
  "description" : "Concomitant medication records associated with a concomitant episode.",
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
        "id" : "Basic.extension:concomitantEpisodeId",
        "path" : "Basic.extension",
        "sliceName" : "concomitantEpisodeId",
        "short" : "Concomitant episode ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-episode-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:medication",
        "path" : "Basic.extension",
        "sliceName" : "medication",
        "short" : "Concomitant medication (coded; see ConcomitantMedicationCategory)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-code"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Concomitant medication ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/concomitant-medication-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Concomitant medication category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/concomitant-medication-type"
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
