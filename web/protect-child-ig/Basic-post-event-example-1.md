# Example Post-Transplant Event - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Post-Transplant Event**

## Example Basic: Example Post-Transplant Event

Profile: [Post Event](StructureDefinition-post-event.md)

**Post event type ID relationship**: [Basic Clinical post-transplant event](Basic-post-event-type-example-1.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Event onset date**: 2024-05-10

**Event end date**: 2024-05-16

**Event description**: Hospitalization due to bacterial cholangitis treated with IV antibiotics.

**identifier**: `http://example.org/fhir/NamingSystem/post-event-id`/PE0001

**code**: Post-transplant event



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "post-event-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-ref",
      "valueReference" : {
        "reference" : "Basic/post-event-type-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-onset-date",
      "valueDate" : "2024-05-10"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-end-date",
      "valueDate" : "2024-05-16"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-description",
      "valueString" : "Hospitalization due to bacterial cholangitis treated with IV antibiotics."
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/post-event-id",
      "value" : "PE0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/post-event-type-code",
        "code" : "event",
        "display" : "Post-transplant event"
      }
    ]
  }
}

```
