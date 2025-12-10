# Example transplant recipient - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example transplant recipient**

## Example Patient: Example transplant recipient

Profile: [Transplant Recipient](StructureDefinition-patient-transplant.md)

Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)

-------

| | |
| :--- | :--- |
| [Date of renal disease diagnosis](StructureDefinition-patient-renal-disease-diagnosis-date.md) | 2021-02-10 |
| [Liver disease diagnosis code](StructureDefinition-patient-liver-disease-code.md) | Biliary atresia |
| [Patient Rh factor](StructureDefinition-patient-rh-factor.md) | Rh positive |
| [Date of histological diagnosis](StructureDefinition-patient-histological-diagnosis-date.md) | 2020-05-01 |
| [Patient allograft HLA Class I](StructureDefinition-patient-allograft-hla-class-i.md) | HLA-A |
| [Patient allograft HLA Class II](StructureDefinition-patient-allograft-hla-class-ii.md) | HLA-DR |
| [Patient last PRA](StructureDefinition-patient-last-pra.md) | 60 |
| [Renal disease diagnosis code](StructureDefinition-patient-renal-disease-code.md) | Chronic kidney disease, stage 3 |
| [Patient maximum PRA](StructureDefinition-patient-max-pra.md) | 80 |
| [Liver disease diagnosis (free text)](StructureDefinition-patient-liver-disease-extra.md) | Progressive cholestatic disease |
| [Patient ABO group](StructureDefinition-patient-abo-group.md) | Group A |
| [Date of liver disease diagnosis](StructureDefinition-patient-liver-disease-diagnosis-date.md) | 2019-11-15 |
| [Renal disease diagnosis (free text)](StructureDefinition-patient-renal-disease-extra.md) | Likely secondary to calcineurin-inhibitor toxicity |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExamplePatientTransplant1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-abo-group",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-abo-group",
            "code" : "A",
            "display" : "Group A"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-rh-factor",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-rh-factor",
            "code" : "positive",
            "display" : "Rh positive"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-max-pra",
      "valueInteger" : 80
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-last-pra",
      "valueInteger" : 60
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-i",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-i",
            "code" : "HLA-A"
          },
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-i",
            "code" : "HLA-B"
          },
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-i",
            "code" : "HLA-C"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-ii",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-ii",
            "code" : "HLA-DR"
          },
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-ii",
            "code" : "HLA-DP"
          },
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-hla-class-ii",
            "code" : "HLA-DQ"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-histological-diagnosis-date",
      "valueDate" : "2020-05-01"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-diagnosis-date",
      "valueDate" : "2019-11-15"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-code",
      "valueCodeableConcept" : {
        "text" : "Biliary atresia"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-diagnosis-date",
      "valueDate" : "2021-02-10"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-code",
      "valueCodeableConcept" : {
        "text" : "Chronic kidney disease, stage 3"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-extra",
      "valueString" : "Progressive cholestatic disease"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-renal-disease-extra",
      "valueString" : "Likely secondary to calcineurin-inhibitor toxicity"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/identifiers/patient",
      "value" : "P000456"
    }
  ],
  "gender" : "female",
  "birthDate" : "2012-03-12"
}

```
