# BKV FISH on kidney biopsy - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BKV FISH on kidney biopsy**

## Extension: BKV FISH on kidney biopsy 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-fish-kidney-biopsy | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:MicrobiologyBKVFISHKidneyBiopsy |

bkv_fish_kidney_biopsy – BK virus FISH on kidney biopsy; false=Negative, true=Positive.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbiology](StructureDefinition-microbiology.md)
* Examples for this Extension: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology-bkv-fish-kidney-biopsy)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology-bkv-fish-kidney-biopsy.csv), [Excel](StructureDefinition-microbiology-bkv-fish-kidney-biopsy.xlsx), [Schematron](StructureDefinition-microbiology-bkv-fish-kidney-biopsy.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology-bkv-fish-kidney-biopsy",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-fish-kidney-biopsy",
  "version" : "0.1.0",
  "name" : "MicrobiologyBKVFISHKidneyBiopsy",
  "title" : "BKV FISH on kidney biopsy",
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
  "description" : "bkv_fish_kidney_biopsy – BK virus FISH on kidney biopsy; false=Negative, true=Positive.",
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
        "short" : "BKV FISH on kidney biopsy",
        "definition" : "bkv_fish_kidney_biopsy – BK virus FISH on kidney biopsy; false=Negative, true=Positive."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-fish-kidney-biopsy"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
