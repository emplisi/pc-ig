# Example Outcome Type - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Outcome Type**

## Example Basic: Example Outcome Type

Profile: [Outcome Type](StructureDefinition-outcome-type.md)

**Outcome type name**: Chronic renal failure after pLTx

**identifier**: `http://example.org/fhir/NamingSystem/outcome-type-id`/OT0001

**code**: Clinical outcome type



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "outcome-type-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-name-ext",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/outcome-type-name",
            "code" : "198185",
            "display" : "Chronic renal failure after pLTx"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/outcome-type-id",
      "value" : "OT0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/outcome-type-category",
        "code" : "clinical",
        "display" : "Clinical outcome type"
      }
    ]
  }
}

```
