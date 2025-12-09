# Concomitant disease ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concomitant disease ID relationship**

## Extension: Concomitant disease ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-disease-ref | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ConcomitantEpisodeDiseaseRef |

Reference to the concomitant disease record associated with this episode.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Concomitant Episode](StructureDefinition-concomitant-episode.md)
* Examples for this Extension: [Basic/concomitant-episode-example-1](Basic-concomitant-episode-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/concomitant-episode-disease-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-concomitant-episode-disease-ref.csv), [Excel](StructureDefinition-concomitant-episode-disease-ref.xlsx), [Schematron](StructureDefinition-concomitant-episode-disease-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "concomitant-episode-disease-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-disease-ref",
  "version" : "0.1.0",
  "name" : "ConcomitantEpisodeDiseaseRef",
  "title" : "Concomitant disease ID relationship",
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
  "description" : "Reference to the concomitant disease record associated with this episode.",
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
        "short" : "Concomitant disease ID relationship",
        "definition" : "Reference to the concomitant disease record associated with this episode."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode-disease-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-disease"
            ]
          }
        ]
      }
    ]
  }
}

```
