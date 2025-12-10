# Example Pre-medication - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Pre-medication**

## Example Basic: Example Pre-medication

Profile: [Pre-transplant Medication](StructureDefinition-pre-medication.md)

**Pre-medication patient reference**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Antihypertensive treatment**: Amlodipine

**Rituximab pre-medication**: true

**Other pre-transplant medications**: Low-dose aspirin

**Antiviral prophylaxis pre-medication**: false

**identifier**: `http://example.org/fhir/NamingSystem/pre-medication-id`/PM0001

**code**: Pre-transplant medication record



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "pre-medication-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antihypertensive-treatment",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/pre-medication-antihypertensive-drug",
            "code" : "1332418",
            "display" : "Amlodipine"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-rituximab",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-other-medications",
      "valueString" : "Low-dose aspirin"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antiviral-phrophylaxis",
      "valueBoolean" : false
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/pre-medication-id",
      "value" : "PM0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/pre-medication-type",
        "code" : "pre-medication",
        "display" : "Pre-transplant medication record"
      }
    ]
  }
}

```
