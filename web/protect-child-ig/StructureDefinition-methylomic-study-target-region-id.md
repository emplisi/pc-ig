# Target region ID - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Target region ID**

## Extension: Target region ID 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-target-region-id | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MethylomicStudyTargetRegionId |

Identifier of the target region for which methylation information is recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Methylomic Study](StructureDefinition-methylomic-study.md)
* Examples for this Extension: [Basic/methylomic-study-example-1](Basic-methylomic-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/methylomic-study-target-region-id)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-methylomic-study-target-region-id.csv), [Excel](StructureDefinition-methylomic-study-target-region-id.xlsx), [Schematron](StructureDefinition-methylomic-study-target-region-id.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "methylomic-study-target-region-id",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-target-region-id",
  "version" : "0.1.0",
  "name" : "MethylomicStudyTargetRegionId",
  "title" : "Target region ID",
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
  "description" : "Identifier of the target region for which methylation information is recorded.",
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
        "short" : "Target region ID",
        "definition" : "Identifier of the target region for which methylation information is recorded."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-target-region-id"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
