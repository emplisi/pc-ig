# Example Instrumental Investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Instrumental Investigation**

## Example Basic: Example Instrumental Investigation

Profile: [Instrumental Investigation](StructureDefinition-instrumental-investigation.md)

**Instrumental investigation name**: Liver doppler ultrasound

**identifier**: `http://example.org/fhir/NamingSystem/instrumental-investigation-id`/INST0001

**code**: Instrumental investigation test definition



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "instrumental-investigation-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation-name-ext",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/instrumental-investigation-name",
            "code" : "718078008",
            "display" : "Liver doppler ultrasound"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/instrumental-investigation-id",
      "value" : "INST0001"
    }
  ],
  "code" : {
    "text" : "Instrumental investigation test definition"
  }
}

```
