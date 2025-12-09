# Example Immunosuppressant - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Immunosuppressant**

## Example Basic: Example Immunosuppressant

Profile: [Immunosuppressant](StructureDefinition-immunosuppressant.md)

**Immunosuppressant name**: Steroid (methylprednisolone)

**identifier**: `http://example.org/fhir/NamingSystem/immunosuppressant-id`/IMM0001

**code**: Immunosuppressive drug



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "immunosuppressant-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant-name",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/immunosuppressant-drug-type",
            "code" : "1506270",
            "display" : "Steroid (methylprednisolone)"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/immunosuppressant-id",
      "value" : "IMM0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/immunosuppressant-type",
        "code" : "drug",
        "display" : "Immunosuppressive drug"
      }
    ]
  }
}

```
