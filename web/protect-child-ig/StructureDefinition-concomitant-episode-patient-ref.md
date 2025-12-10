# Patient ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient ID relationship**

## Extension: Patient ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-patient-ref | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ConcomitantEpisodePatientRef |

Reference to the patient for whom the concomitant episode is recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Concomitant Episode](StructureDefinition-concomitant-episode.md)
* Examples for this Extension: [Basic/concomitant-episode-example-1](Basic-concomitant-episode-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/concomitant-episode-patient-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-concomitant-episode-patient-ref.csv), [Excel](StructureDefinition-concomitant-episode-patient-ref.xlsx), [Schematron](StructureDefinition-concomitant-episode-patient-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "concomitant-episode-patient-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-patient-ref",
  "version" : "0.1.0",
  "name" : "ConcomitantEpisodePatientRef",
  "title" : "Patient ID relationship",
  "status" : "draft",
  "date" : "2025-12-09T16:44:49+01:00",
  "publisher" : "Your Organization",
  "contact" : [
    {
      "name" : "Your Organization",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://example.org"
        }
      ]
    }
  ],
  "description" : "Reference to the patient for whom the concomitant episode is recorded.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Patient ID relationship",
        "definition" : "Reference to the patient for whom the concomitant episode is recorded."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-patient-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ]
      }
    ]
  }
}

```
