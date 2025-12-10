# Transplant - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant**

## Resource Profile: Transplant 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:Transplant |

 
Encounter profile representing a transplant, linking the transplant recipient and donor and aligned with the transplant table. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Transplant ID relationship](StructureDefinition-visit-transplant-ref.md)
* Examples for this Profile: [Encounter/TransplantExample1](Encounter-TransplantExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant.csv), [Excel](StructureDefinition-transplant.xlsx), [Schematron](StructureDefinition-transplant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant",
  "version" : "0.1.0",
  "name" : "Transplant",
  "title" : "Transplant",
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
  "description" : "Encounter profile representing a transplant, linking the transplant recipient and donor and aligned with the transplant table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
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
        "min" : 6
      },
      {
        "id" : "Encounter.extension:donor_id",
        "path" : "Encounter.extension",
        "sliceName" : "donor_id",
        "short" : "donor_id – reference to the donor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-donor-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:d_r_weight_ration",
        "path" : "Encounter.extension",
        "sliceName" : "d_r_weight_ration",
        "short" : "d_r_weight_ration – donor/recipient graft weight ratio",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-donor-recipient-weight-ratio"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:vessel_mismatch_d_r",
        "path" : "Encounter.extension",
        "sliceName" : "vessel_mismatch_d_r",
        "short" : "vessel_mismatch_d_r – vessel mismatch (Yes/No)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vessel-mismatch"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:cold_ischemia_time",
        "path" : "Encounter.extension",
        "sliceName" : "cold_ischemia_time",
        "short" : "cold_ischemia_time – cold ischaemia time (minutes)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-cold-ischaemia-time"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:time_diag_to_tx",
        "path" : "Encounter.extension",
        "sliceName" : "time_diag_to_tx",
        "short" : "time_diag_to_tx – months between diagnosis and transplant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-time-diagnosis-to-transplant"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:warm_ischemia_time_1",
        "path" : "Encounter.extension",
        "sliceName" : "warm_ischemia_time_1",
        "short" : "1_warm_ischemia_time – first warm ischaemia time (minutes)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-first-warm-ischemia-time"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:warm_ischemia_time_2",
        "path" : "Encounter.extension",
        "sliceName" : "warm_ischemia_time_2",
        "short" : "2_warm_ischemia_time – second warm ischaemia time (kidney only, minutes)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-second-warm-ischemia-time"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:vascular_anomalies",
        "path" : "Encounter.extension",
        "sliceName" : "vascular_anomalies",
        "short" : "vascular_anomalies – vascular anatomical variants (specify)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vascular-anomalies"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:type_surgical_biliary_anastomosis",
        "path" : "Encounter.extension",
        "sliceName" : "type_surgical_biliary_anastomosis",
        "short" : "type_surgical_biliary_anastomosis – biliary reconstruction type (liver only)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-biliary-anastomosis-type"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:intraoperative_complications",
        "path" : "Encounter.extension",
        "sliceName" : "intraoperative_complications",
        "short" : "intraoperative_complications – complications during surgery (liver only)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-intraoperative-complications"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:intraoperative_complications_other",
        "path" : "Encounter.extension",
        "sliceName" : "intraoperative_complications_other",
        "short" : "intraoperative_complications_other – free text for other complications",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-intraoperative-complications-other"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:nephrectomy_original_kidney",
        "path" : "Encounter.extension",
        "sliceName" : "nephrectomy_original_kidney",
        "short" : "nephrectomy_original_kidney – nephrectomy of native kidney (kidney only)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-nephrectomy-original-kidney"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:kidney_side",
        "path" : "Encounter.extension",
        "sliceName" : "kidney_side",
        "short" : "kidney_side – transplanted kidney side (left/right/both)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-kidney-side"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "transplant_id – transplant identifier from the data model",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier.system",
        "path" : "Encounter.identifier.system",
        "short" : "Namespace for the transplant identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "short" : "Transplant ID (transplant_id)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Status of the transplant encounter",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Classification of encounter (e.g. inpatient)",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "tx_type – transplant type (liver, kidney, combined)",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "EncounterType"
            }
          ],
          "strength" : "required",
          "description" : "The type of encounter.",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/transplant-type-vs"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "patient_id – the transplant recipient (PatientTransplant)",
        "min" : 1,
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
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period.start",
        "path" : "Encounter.period.start",
        "short" : "date_tx – date (and optionally time) of the transplant",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
