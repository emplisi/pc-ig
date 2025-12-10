# Example transplant donor - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example transplant donor**

## Example Patient: Example transplant donor

Profile: [Transplant Donor](StructureDefinition-donor.md)

Anonymous Patient Male, DoB: 1990-07-21 ( http://example.org/fhir/identifiers/donor#D000123)

-------

| | |
| :--- | :--- |
| [Donor allograft HLA Class I loci](StructureDefinition-donor-allograft-hla-class-i.md) | HLA-A |
| [Donor ABO group](StructureDefinition-donor-abo-group.md) | Group O |
| [Donor pre-kidney-transplant dialysis type](StructureDefinition-donor-pre-ktx-dialysis-type.md) | Hemodialysis |
| [Donor liver graft type](StructureDefinition-donor-liver-type.md) | Partial liver graft |
| [Donor allograft HLA Class II loci](StructureDefinition-donor-allograft-hla-class-ii.md) | HLA-DR |
| [Donor Rh factor](StructureDefinition-donor-rh-factor.md) | Rh positive |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleDonor1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-abo-group",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-abo-group",
            "code" : "O",
            "display" : "Group O"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-rh-factor",
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
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-i",
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
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-ii",
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
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-liver-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/donor-liver-type",
            "code" : "partial",
            "display" : "Partial liver graft"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-pre-ktx-dialysis-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/donor-pre-ktx-dialysis-type",
            "code" : "hemodialysis",
            "display" : "Hemodialysis"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/identifiers/donor",
      "value" : "D000123"
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-07-21"
}

```
