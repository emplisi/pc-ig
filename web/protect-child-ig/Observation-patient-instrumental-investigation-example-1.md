# Example Patient Instrumental Investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Patient Instrumental Investigation**

## Example Observation: Example Patient Instrumental Investigation

Profile: [Patient Instrumental Investigation](StructureDefinition-patient-instrumental-investigation.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Instrumental investigation ID relationship**: [Basic](Basic-instrumental-investigation-example-1.md)

**Result of the instrumental investigation**: Normal

**Date of instrumental investigation**: 2024-03-10

**identifier**: `http://example.org/fhir/NamingSystem/patient-instrumental-investigation-id`/PII0001

**status**: Final

**code**: Patient instrumental investigation

**subject**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "patient-instrumental-investigation-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-instrument-ref",
      "valueReference" : {
        "reference" : "Basic/instrumental-investigation-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-result",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/patient-instrumental-investigation-result",
            "code" : "normal",
            "display" : "Normal"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-date",
      "valueDate" : "2024-03-10"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/patient-instrumental-investigation-id",
      "value" : "PII0001"
    }
  ],
  "status" : "final",
  "code" : {
    "text" : "Patient instrumental investigation"
  },
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  }
}

```
