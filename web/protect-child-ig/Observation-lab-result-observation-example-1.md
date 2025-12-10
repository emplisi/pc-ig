# Example Lab Result Observation - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Lab Result Observation**

## Example Observation: Example Lab Result Observation

Profile: [Lab Result](StructureDefinition-lab-result-observation.md)

**Lab test reference**: [Basic Chemistry lab test](Basic-lab-test-example-1.md)

**Lab result patient reference**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**identifier**: `http://example.org/fhir/NamingSystem/lab-result-id`/LR0001

**status**: Final

**category**: Laboratory

**code**: Creatinine [Mass/volume] in Serum or Plasma

**effective**: 2023-09-02 09:15:00+0100

**value**: 1.2 mg/dL(Details: Lab Result Unit CodeSystem codemg_per_dL = 'mg/dL')

**interpretation**: High

**specimen**: [Specimen: extension = 2025-01-20,->Basic Exome sequencing,->Basic Methylation array epigenome study,->Basic Locus-level methylomic record,35.2; identifier = http://example.org/fhir/NamingSystem/bio-sample-id#BS0001; type = Blood](Specimen-biosample-example-1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "lab-result-observation-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-observation"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-labtest-ref",
      "valueReference" : {
        "reference" : "Basic/lab-test-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/lab-result-id",
      "value" : "LR0001"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "2160-0",
        "display" : "Creatinine [Mass/volume] in Serum or Plasma"
      }
    ]
  },
  "effectiveDateTime" : "2023-09-02T09:15:00+01:00",
  "valueQuantity" : {
    "value" : 1.2,
    "unit" : "mg/dL",
    "system" : "http://example.org/fhir/CodeSystem/lab-result-unit",
    "code" : "mg_per_dL"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }
      ]
    }
  ],
  "specimen" : {
    "reference" : "Specimen/biosample-example-1"
  }
}

```
