# Immunosuppressive Maintenance to Patient - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressive Maintenance to Patient**

## Resource Profile: Immunosuppressive Maintenance to Patient 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ImmunosuppressiveMaintenancePatient |

 
Maintenance immunosuppressive therapy given to the transplant patient, aligned with the immunosuppressive_maintenance_patient table. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Immunosuppressive maintenance ID relationship](StructureDefinition-visit-immunosuppressive-maintenance-ref.md)
* Examples for this Profile: [Basic/immunosuppressive-maintenance-patient-example-1](Basic-immunosuppressive-maintenance-patient-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-maintenance-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-maintenance-patient.csv), [Excel](StructureDefinition-immunosuppressive-maintenance-patient.xlsx), [Schematron](StructureDefinition-immunosuppressive-maintenance-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-maintenance-patient",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenancePatient",
  "title" : "Immunosuppressive Maintenance to Patient",
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
  "description" : "Maintenance immunosuppressive therapy given to the transplant patient, aligned with the immunosuppressive_maintenance_patient table.",
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
        },
        "min" : 3
      },
      {
        "id" : "Basic.extension:patient_id",
        "path" : "Basic.extension",
        "sliceName" : "patient_id",
        "short" : "patient_id – reference to PatientTransplant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:immunosuppressant_id",
        "path" : "Basic.extension",
        "sliceName" : "immunosuppressant_id",
        "short" : "immunosuppressant_id – reference to Immunosuppressant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:dose",
        "path" : "Basic.extension",
        "sliceName" : "dose",
        "short" : "dose – maintenance dose of the immunosuppressant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-dose"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:unit_id",
        "path" : "Basic.extension",
        "sliceName" : "unit_id",
        "short" : "unit_id – identifier of the dose unit (from DM)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-unit-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:start_date",
        "path" : "Basic.extension",
        "sliceName" : "start_date",
        "short" : "start_date – date maintenance therapy started",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-start-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:end_date",
        "path" : "Basic.extension",
        "sliceName" : "end_date",
        "short" : "end_date – date maintenance therapy stopped",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-end-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "imm_main_pat_id – identifier of the immunosuppressive maintenance record",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/immunosuppressive-maintenance-patient-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Type of immunosuppressive maintenance record",
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BasicResourceType"
            }
          ],
          "strength" : "required",
          "description" : "Codes for identifying types of resources not yet defined by FHIR.",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/immunosuppressive-maintenance-type-vs"
        }
      }
    ]
  }
}

```
