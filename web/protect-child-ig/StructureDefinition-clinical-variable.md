# Clinical Variable - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical Variable**

## Resource Profile: Clinical Variable 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ClinicalVariable |

 
Clinical variables and vital signs recorded for a transplant patient. 

**Usages:**

* Refer to this Profile: [Clinical variable ID relationship](StructureDefinition-outcome-clinical-variable-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Clinical variable ID relationship](StructureDefinition-visit-clinical-variable-ref.md)
* Examples for this Profile: [Basic/clinical-variable-example-1](Basic-clinical-variable-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/clinical-variable)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-clinical-variable.csv), [Excel](StructureDefinition-clinical-variable.xlsx), [Schematron](StructureDefinition-clinical-variable.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "clinical-variable",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable",
  "version" : "0.1.0",
  "name" : "ClinicalVariable",
  "title" : "Clinical Variable",
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
  "description" : "Clinical variables and vital signs recorded for a transplant patient.",
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
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:date",
        "path" : "Basic.extension",
        "sliceName" : "date",
        "short" : "Date vitals were measured",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:weight",
        "path" : "Basic.extension",
        "sliceName" : "weight",
        "short" : "Weight (kg)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-weight"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:height",
        "path" : "Basic.extension",
        "sliceName" : "height",
        "short" : "Height (cm)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-height"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:systolicBloodPressure",
        "path" : "Basic.extension",
        "sliceName" : "systolicBloodPressure",
        "short" : "Systolic blood pressure (mmHg)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-systolic-blood-pressure"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:diastolicBloodPressure",
        "path" : "Basic.extension",
        "sliceName" : "diastolicBloodPressure",
        "short" : "Diastolic blood pressure (mmHg)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-diastolic-blood-pressure"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:heartRate",
        "path" : "Basic.extension",
        "sliceName" : "heartRate",
        "short" : "Heart rate (beats/min)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-heart-rate"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:oxygenSaturation",
        "path" : "Basic.extension",
        "sliceName" : "oxygenSaturation",
        "short" : "Oxygen saturation at rest (%)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-oxygen-saturation"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:temperature",
        "path" : "Basic.extension",
        "sliceName" : "temperature",
        "short" : "Body temperature (°C)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-temperature"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Clinical variable ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/clinical-variable-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Clinical variable category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/clinical-variable-type"
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
