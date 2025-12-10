# Example Concomitant Medication - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Concomitant Medication**

## Example Basic: Example Concomitant Medication

Profile: [Concomitant Medication](StructureDefinition-concomitant-medication.md)

**Concomitant episode ID relationship**: [Basic Concomitant disease episode](Basic-concomitant-episode-example-1.md)

**Medication**: Antihypertensive treatment

**identifier**: `http://example.org/fhir/NamingSystem/concomitant-medication-id`/CM0001

**code**: Concomitant medication



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "concomitant-medication-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-episode-ref",
      "valueReference" : {
        "reference" : "Basic/concomitant-episode-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-code",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/concomitant-medication-category",
            "code" : "antihypertensive",
            "display" : "Antihypertensive treatment"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/concomitant-medication-id",
      "value" : "CM0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/concomitant-medication-type",
        "code" : "concomitant",
        "display" : "Concomitant medication"
      }
    ]
  }
}

```
