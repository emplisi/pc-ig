# Post Event - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Post Event**

## Resource Profile: Post Event 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PostEvent |

 
Clinical events occurring after transplant, associated with a patient and event type. 

**Usages:**

* Refer to this Profile: [Post event ID relationship](StructureDefinition-outcome-post-event-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Post-event ID relationship](StructureDefinition-visit-post-event-ref.md)
* Examples for this Profile: [Basic/post-event-example-1](Basic-post-event-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/post-event)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-post-event.csv), [Excel](StructureDefinition-post-event.xlsx), [Schematron](StructureDefinition-post-event.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "post-event",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event",
  "version" : "0.1.0",
  "name" : "PostEvent",
  "title" : "Post Event",
  "status" : "draft",
  "date" : "2025-12-10T14:43:23+01:00",
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
  "description" : "Clinical events occurring after transplant, associated with a patient and event type.",
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
        "id" : "Basic.extension:postEventTypeId",
        "path" : "Basic.extension",
        "sliceName" : "postEventTypeId",
        "short" : "Post event type ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-ref"
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
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:onsetDate",
        "path" : "Basic.extension",
        "sliceName" : "onsetDate",
        "short" : "Event onset date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-onset-date"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:endDate",
        "path" : "Basic.extension",
        "sliceName" : "endDate",
        "short" : "Event end date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-end-date"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:description",
        "path" : "Basic.extension",
        "sliceName" : "description",
        "short" : "Description of the post-transplant event",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-description"
            ]
          }
        ]
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Post event ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/post-event-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Post-transplant event record category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/post-event-type-code"
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
