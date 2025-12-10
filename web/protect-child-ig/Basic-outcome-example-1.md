# Example Outcome - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Outcome**

## Example Basic: Example Outcome

Profile: [Outcome](StructureDefinition-outcome.md)

**Outcome type ID relationship**: [Basic Clinical outcome type](Basic-outcome-type-example-1.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Outcome date**: 2024-06-01

**Pre-medication ID relationship**: [Basic Pre-transplant medication record](Basic-pre-medication-example-1.md)

**Clinical variable ID relationship**: [Basic Vital signs](Basic-clinical-variable-example-1.md)

**Concomitant episode ID relationship**: [Basic Concomitant disease episode](Basic-concomitant-episode-example-1.md)

**Microbiology ID relationship**: [Observation Microbiology studies (set)](Observation-microbiology-example-1.md)

**Patient instrumental investigation ID relationship**: [Observation](Observation-patient-instrumental-investigation-example-1.md)

**Lab test ID relationship**: [Basic Chemistry lab test](Basic-lab-test-example-1.md)

**Post event ID relationship**: [Basic Post-transplant event](Basic-post-event-example-1.md)

**identifier**: `http://example.org/fhir/NamingSystem/outcome-id`/OUT0001

**code**: Clinical outcome



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "outcome-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-ref",
      "valueReference" : {
        "reference" : "Basic/outcome-type-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-date",
      "valueDate" : "2024-06-01"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-pre-medication-ref",
      "valueReference" : {
        "reference" : "Basic/pre-medication-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-clinical-variable-ref",
      "valueReference" : {
        "reference" : "Basic/clinical-variable-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-concomitant-episode-ref",
      "valueReference" : {
        "reference" : "Basic/concomitant-episode-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-microbiology-ref",
      "valueReference" : {
        "reference" : "Observation/microbiology-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-patient-instrumental-investigation-ref",
      "valueReference" : {
        "reference" : "Observation/patient-instrumental-investigation-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-lab-test-ref",
      "valueReference" : {
        "reference" : "Basic/lab-test-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-post-event-ref",
      "valueReference" : {
        "reference" : "Basic/post-event-example-1"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/outcome-id",
      "value" : "OUT0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/outcome-type-code",
        "code" : "clinical",
        "display" : "Clinical outcome"
      }
    ]
  }
}

```
