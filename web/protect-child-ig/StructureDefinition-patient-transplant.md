# Transplant Recipient - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant Recipient**

## Resource Profile: Transplant Recipient 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientTransplant |

 
Transplant recipient profile based on the FHIR Patient resource, aligned with the patient table. 

**Usages:**

* Refer to this Profile: [Biological Sample](StructureDefinition-biosample.md), [Patient ID relationship](StructureDefinition-clinical-variable-patient-ref.md), [Patient ID relationship](StructureDefinition-concomitant-episode-patient-ref.md), [Patient ID relationship](StructureDefinition-immunosuppressive-induction-patient-ref.md)...Show 13 more,[Recipient patient reference](StructureDefinition-immunosuppressive-maintenance-patient-ref.md),[Laboratory DiagnosticReport](StructureDefinition-lab-report.md),[Lab Result](StructureDefinition-lab-result-observation.md),[Lab result patient reference](StructureDefinition-lab-result-patient-ref.md),[Patient ID relationship](StructureDefinition-marker-immune-function-patient-ref.md),[Patient ID relationship](StructureDefinition-microbiology-patient-ref.md),[Patient ID relationship](StructureDefinition-outcome-patient-ref.md),[Patient ID relationship](StructureDefinition-patient-instrumental-investigation-patient-ref.md),[Patient ID relationship](StructureDefinition-post-event-patient-ref.md),[Pre-medication patient reference](StructureDefinition-pre-medication-patient-ref.md),[Transplant Case Logical Model](StructureDefinition-transplant-case.md),[Transplant](StructureDefinition-transplant.md)and[Visit](StructureDefinition-visit.md)
* Examples for this Profile: [Patient/ExamplePatientTransplant1](Patient-ExamplePatientTransplant1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-transplant)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-transplant.csv), [Excel](StructureDefinition-patient-transplant.xlsx), [Schematron](StructureDefinition-patient-transplant.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-transplant",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant",
  "version" : "0.1.0",
  "name" : "PatientTransplant",
  "title" : "Transplant Recipient",
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
  "description" : "Transplant recipient profile based on the FHIR Patient resource, aligned with the patient table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
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
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
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
        "min" : 11
      },
      {
        "id" : "Patient.extension:patientABOGroup",
        "path" : "Patient.extension",
        "sliceName" : "patientABOGroup",
        "short" : "ABO blood group of the transplant recipient (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-abo-group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:patientRhFactor",
        "path" : "Patient.extension",
        "sliceName" : "patientRhFactor",
        "short" : "Rh factor of the transplant recipient (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-rh-factor"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:maxPRA",
        "path" : "Patient.extension",
        "sliceName" : "maxPRA",
        "short" : "Maximum PRA (%) before transplant (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-max-pra"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:lastPRA",
        "path" : "Patient.extension",
        "sliceName" : "lastPRA",
        "short" : "Most recent PRA (%) before transplant (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-last-pra"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:allograftHLAClassI",
        "path" : "Patient.extension",
        "sliceName" : "allograftHLAClassI",
        "short" : "Recipient’s HLA Class I loci relevant for transplant (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-i"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:allograftHLAClassII",
        "path" : "Patient.extension",
        "sliceName" : "allograftHLAClassII",
        "short" : "Recipient’s HLA Class II loci relevant for transplant (Required)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-ii"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:histologicalDiagnosisDate",
        "path" : "Patient.extension",
        "sliceName" : "histologicalDiagnosisDate",
        "short" : "Date of histological diagnosis (Mandatory)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-histological-diagnosis-date"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:liverDiseaseDiagnosisDate",
        "path" : "Patient.extension",
        "sliceName" : "liverDiseaseDiagnosisDate",
        "short" : "Date of liver disease diagnosis (Mandatory)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-diagnosis-date"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:liverDiseaseCode",
        "path" : "Patient.extension",
        "sliceName" : "liverDiseaseCode",
        "short" : "Primary liver disease diagnosis (Mandatory)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-code"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:liverDiseaseExtra",
        "path" : "Patient.extension",
        "sliceName" : "liverDiseaseExtra",
        "short" : "Free-text description of liver disease (Optional)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-extra"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:renalDiseaseDiagnosisDate",
        "path" : "Patient.extension",
        "sliceName" : "renalDiseaseDiagnosisDate",
        "short" : "Date of renal disease diagnosis (Mandatory)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-diagnosis-date"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:renalDiseaseCode",
        "path" : "Patient.extension",
        "sliceName" : "renalDiseaseCode",
        "short" : "Primary renal disease diagnosis (Mandatory)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-code"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:renalDiseaseExtra",
        "path" : "Patient.extension",
        "sliceName" : "renalDiseaseExtra",
        "short" : "Free-text description of renal disease (Optional)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-extra"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Patient identifiers (hospital, transplant registry ID)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "short" : "Namespace for the patient identifier (e.g. transplant registry)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Patient ID (patient_id from the data model)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "Recipient administrative gender",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "Recipient date of birth",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
