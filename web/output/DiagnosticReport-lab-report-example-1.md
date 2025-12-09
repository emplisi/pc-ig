# Example Laboratory Report - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Laboratory Report**

## Example DiagnosticReport: Example Laboratory Report

Profile: [Laboratory DiagnosticReport](StructureDefinition-lab-report.md)

## Laboratory report (Laboratory ) 

| | |
| :--- | :--- |
| Subject | Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456) |
| When For | 2023-09-02 09:15:00+0100 |
| Reported | 2023-09-02 11:30:00+0100 |

**Report Details**

* **Code**: [Creatinine [Mass/volume] in Serum or Plasma](Observation-lab-result-observation-example-1.md)
  * **Value**: 1.2 mg/dL(Details: Lab Result Unit CodeSystem codemg_per_dL = 'mg/dL')
  * **Flags**: Final,High



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "lab-report-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11502-2",
        "display" : "Laboratory report"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  },
  "effectiveDateTime" : "2023-09-02T09:15:00+01:00",
  "issued" : "2023-09-02T11:30:00+01:00",
  "specimen" : [
    {
      "reference" : "Specimen/biosample-example-1"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/lab-result-observation-example-1"
    }
  ]
}

```
