# Concomitant episode ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concomitant episode ID relationship**

## Extension: Concomitant episode ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-episode-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ConcomitantMedicationEpisodeRef |

Reference to the concomitant episode this medication belongs to.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Concomitant Medication](StructureDefinition-concomitant-medication.md)
* Examples for this Extension: [Basic/concomitant-medication-example-1](Basic-concomitant-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/concomitant-medication-episode-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-concomitant-medication-episode-ref.csv), [Excel](StructureDefinition-concomitant-medication-episode-ref.xlsx), [Schematron](StructureDefinition-concomitant-medication-episode-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "concomitant-medication-episode-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-episode-ref",
  "version" : "0.1.0",
  "name" : "ConcomitantMedicationEpisodeRef",
  "title" : "Concomitant episode ID relationship",
  "status" : "draft",
  "date" : "2025-12-10T13:58:21+01:00",
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
  "description" : "Reference to the concomitant episode this medication belongs to.",
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
        "short" : "Concomitant episode ID relationship",
        "definition" : "Reference to the concomitant episode this medication belongs to."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication-episode-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode"
            ]
          }
        ]
      }
    ]
  }
}

```
