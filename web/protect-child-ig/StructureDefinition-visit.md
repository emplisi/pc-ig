# Visit - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Visit**

## Resource Profile: Visit 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:Visit |

 
Encounter profile representing a visit in the transplant follow-up schedule, aligned with the visit table. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Encounter/VisitExample1](Encounter-VisitExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/visit)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-visit.csv), [Excel](StructureDefinition-visit.xlsx), [Schematron](StructureDefinition-visit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visit",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit",
  "version" : "0.1.0",
  "name" : "Visit",
  "title" : "Visit",
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
  "description" : "Encounter profile representing a visit in the transplant follow-up schedule, aligned with the visit table.",
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
        }
      },
      {
        "id" : "Encounter.extension:transplant_id",
        "path" : "Encounter.extension",
        "sliceName" : "transplant_id",
        "short" : "transplant_id – reference to associated Transplant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:bio_sample_id",
        "path" : "Encounter.extension",
        "sliceName" : "bio_sample_id",
        "short" : "bio_sample_id – reference to BioSample",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-bio-sample-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:pre_medication_id",
        "path" : "Encounter.extension",
        "sliceName" : "pre_medication_id",
        "short" : "pre_medication_id – reference to PreMedication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-pre-medication-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:clinical_variable_id",
        "path" : "Encounter.extension",
        "sliceName" : "clinical_variable_id",
        "short" : "clinical_variable_id – reference to ClinicalVariable",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:concomitant_episode_id",
        "path" : "Encounter.extension",
        "sliceName" : "concomitant_episode_id",
        "short" : "concomitant_episode_id – reference to ConcomitantEpisode",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-concomitant-episode-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:microbiology_id",
        "path" : "Encounter.extension",
        "sliceName" : "microbiology_id",
        "short" : "microbiology_id – reference to Microbiology",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-microbiology-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:pat_inst_inv_id",
        "path" : "Encounter.extension",
        "sliceName" : "pat_inst_inv_id",
        "short" : "pat_inst_inv_id – reference to PatientInstrumentalInvestigation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:imm_ind_pat_id",
        "path" : "Encounter.extension",
        "sliceName" : "imm_ind_pat_id",
        "short" : "imm_ind_pat_id – reference to ImmunosuppressiveInductionPatient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:imm_main_pat_id",
        "path" : "Encounter.extension",
        "sliceName" : "imm_main_pat_id",
        "short" : "imm_main_pat_id – reference to ImmunosuppressiveMaintenancePatient",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-maintenance-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:lab_result_id",
        "path" : "Encounter.extension",
        "sliceName" : "lab_result_id",
        "short" : "lab_result_id – reference to LabResultObservation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-lab-result-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:post_event_id",
        "path" : "Encounter.extension",
        "sliceName" : "post_event_id",
        "short" : "post_event_id – reference to PostEvent",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-post-event-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:outcome_id",
        "path" : "Encounter.extension",
        "sliceName" : "outcome_id",
        "short" : "outcome_id – reference to Outcome",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-outcome-ref"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "Visit identifiers (visit_id from the data model)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier.system",
        "path" : "Encounter.identifier.system",
        "short" : "Namespace for the visit identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.identifier.value",
        "path" : "Encounter.identifier.value",
        "short" : "Visit ID (visit_id from the data model)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "Encounter status",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "Classification of visit setting (inpatient, outpatient, etc.)",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "Type of visit in the transplant follow-up schedule",
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/visit-type-vs"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "short" : "patient_id – transplant recipient for this visit",
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
        "short" : "Date of the visit",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
