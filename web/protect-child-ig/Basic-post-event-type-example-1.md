# Example Post Event Type - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Post Event Type**

## Example Basic: Example Post Event Type

Profile: [Post Event Type](StructureDefinition-post-event-type.md)

**Post event type name**: Episodes of AKI after LTx

**identifier**: `http://example.org/fhir/NamingSystem/post-event-type-id`/PET0001

**code**: Clinical post-transplant event



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "post-event-type-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-name-ext",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/post-event-type-name",
            "code" : "episodes-aki-after-ltx",
            "display" : "Episodes of AKI after LTx"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/post-event-type-id",
      "value" : "PET0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/post-event-type-category",
        "code" : "clinical-event",
        "display" : "Clinical post-transplant event"
      }
    ]
  }
}

```
