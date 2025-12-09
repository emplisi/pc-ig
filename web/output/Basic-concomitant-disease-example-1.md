# Example Concomitant Disease - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Concomitant Disease**

## Example Basic: Example Concomitant Disease

Profile: [Concomitant Disease](StructureDefinition-concomitant-disease.md)

**Concomitant disease name(s)**: Hypertension

**identifier**: `http://example.org/fhir/NamingSystem/concomitant-disease-id`/CD0001

**code**: Relevant concomitant disease(s)



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "concomitant-disease-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-disease"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-disease-name",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/concomitant-disease-category",
            "code" : "hypertension",
            "display" : "Hypertension"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/concomitant-disease-id",
      "value" : "CD0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/concomitant-disease-type",
        "code" : "relevant",
        "display" : "Relevant concomitant disease(s)"
      }
    ]
  }
}

```
