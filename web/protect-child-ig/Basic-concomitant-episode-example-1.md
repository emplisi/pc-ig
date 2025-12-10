# Example Concomitant Episode - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Concomitant Episode**

## Example Basic: Example Concomitant Episode

Profile: [Concomitant Episode](StructureDefinition-concomitant-episode.md)

**Concomitant disease ID relationship**: [Basic Relevant concomitant disease(s)](Basic-concomitant-disease-example-1.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Episode date**: 2025-01-10

**Episode description**: Episode of decompensated heart failure requiring hospitalization.

**identifier**: `http://example.org/fhir/NamingSystem/concomitant-episode-id`/CE0001

**code**: Concomitant disease episode



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "concomitant-episode-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-disease-ref",
      "valueReference" : {
        "reference" : "Basic/concomitant-disease-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-date",
      "valueDate" : "2025-01-10"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-description",
      "valueString" : "Episode of decompensated heart failure requiring hospitalization."
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/concomitant-episode-id",
      "value" : "CE0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/concomitant-episode-type",
        "code" : "episode",
        "display" : "Concomitant disease episode"
      }
    ]
  }
}

```
