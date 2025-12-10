# Outcome - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome**

## Resource Profile: Outcome 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:Outcome |

 
Outcome information for transplant patients, linked to multiple clinical domains. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Outcome ID relationship](StructureDefinition-visit-outcome-ref.md)
* Examples for this Profile: [Basic/outcome-example-1](Basic-outcome-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/outcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-outcome.csv), [Excel](StructureDefinition-outcome.xlsx), [Schematron](StructureDefinition-outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "outcome",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome",
  "version" : "0.1.0",
  "name" : "Outcome",
  "title" : "Outcome",
  "status" : "draft",
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Outcome information for transplant patients, linked to multiple clinical domains.",
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
        "id" : "Basic.extension:outcomeTypeId",
        "path" : "Basic.extension",
        "sliceName" : "outcomeTypeId",
        "short" : "Outcome type ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-ref"
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
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:date",
        "path" : "Basic.extension",
        "sliceName" : "date",
        "short" : "Outcome date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:preMedicationId",
        "path" : "Basic.extension",
        "sliceName" : "preMedicationId",
        "short" : "Pre-medication ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-pre-medication-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:clinicalVariableId",
        "path" : "Basic.extension",
        "sliceName" : "clinicalVariableId",
        "short" : "Clinical variable ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-clinical-variable-ref"
            ]
          }
        ]
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
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-concomitant-episode-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:microbiologyId",
        "path" : "Basic.extension",
        "sliceName" : "microbiologyId",
        "short" : "Microbiology ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-microbiology-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:patInstInvId",
        "path" : "Basic.extension",
        "sliceName" : "patInstInvId",
        "short" : "Patient instrumental investigation ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-patient-instrumental-investigation-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:labTestId",
        "path" : "Basic.extension",
        "sliceName" : "labTestId",
        "short" : "Lab test ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-lab-test-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:postEventId",
        "path" : "Basic.extension",
        "sliceName" : "postEventId",
        "short" : "Post event ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-post-event-ref"
            ]
          }
        ]
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Outcome ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/outcome-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Outcome record category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/outcome-type-code"
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
