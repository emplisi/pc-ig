# Lab Result - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Result**

## Resource Profile: Lab Result 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-observation | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:LabResultObservation |

 
Individual laboratory result for a transplant recipient, aligned with the lab_result table. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Lab result ID relationship](StructureDefinition-visit-lab-result-ref.md)
* Examples for this Profile: [Observation/lab-result-observation-example-1](Observation-lab-result-observation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/lab-result-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lab-result-observation.csv), [Excel](StructureDefinition-lab-result-observation.xlsx), [Schematron](StructureDefinition-lab-result-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lab-result-observation",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-observation",
  "version" : "0.1.0",
  "name" : "LabResultObservation",
  "title" : "Lab Result",
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
  "description" : "Individual laboratory result for a transplant recipient, aligned with the lab_result table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Observation.extension:lab_test_id",
        "path" : "Observation.extension",
        "sliceName" : "lab_test_id",
        "short" : "lab_test_id – reference to LabTest catalog row",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-labtest-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:patient_id",
        "path" : "Observation.extension",
        "sliceName" : "patient_id",
        "short" : "patient_id – reference to PatientTransplant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "lab_result_id – lab result identifier from the data model",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier.system",
        "path" : "Observation.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/lab-result-id"
      },
      {
        "id" : "Observation.identifier.value",
        "path" : "Observation.identifier.value",
        "min" : 1
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "Status of the lab result (e.g. final, amended)",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category.coding",
        "path" : "Observation.category.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.category.coding.system",
        "path" : "Observation.category.coding.system",
        "min" : 1,
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category"
      },
      {
        "id" : "Observation.category.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1,
        "fixedCode" : "laboratory"
      },
      {
        "id" : "Observation.category.coding.display",
        "path" : "Observation.category.coding.display",
        "patternString" : "Laboratory"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Lab test code (e.g. creatinine, ALT, etc.)",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Optional subject; DM patient_id is captured in extension[patient_id]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "date – date (and time) when the lab test was performed",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "value – value of the test as a numeric quantity with unit",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x].value",
        "path" : "Observation.value[x].value",
        "short" : "Numeric result (float) – maps the 'value' column",
        "min" : 1
      },
      {
        "id" : "Observation.value[x].unit",
        "path" : "Observation.value[x].unit",
        "short" : "Human-readable unit label (e.g. mg/dL, µmol/L)"
      },
      {
        "id" : "Observation.value[x].system",
        "path" : "Observation.value[x].system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/CodeSystem/lab-result-unit"
      },
      {
        "id" : "Observation.value[x].code",
        "path" : "Observation.value[x].code",
        "short" : "unit – unit of measurement (from LabResultUnitVS)",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/lab-result-unit-vs"
        }
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "Clinical interpretation (e.g. high, low, normal)"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "Specimen (bio_sample) from which the lab result was obtained",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
