# Example Lab Test - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Lab Test**

## Example Basic: Example Lab Test

Profile: [Lab Test](StructureDefinition-lab-test.md)

**Lab test name**: Albumin

**identifier**: `http://example.org/fhir/NamingSystem/lab-test-id`/LT0001

**code**: Chemistry lab test



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "lab-test-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-test"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-test-name-ext",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/lab-test-name",
            "code" : "46273815",
            "display" : "Albumin"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/lab-test-id",
      "value" : "LT0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/lab-test-type",
        "code" : "chemistry",
        "display" : "Chemistry lab test"
      }
    ]
  }
}

```
