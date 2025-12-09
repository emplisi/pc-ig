# Methylomic Study - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Methylomic Study**

## Resource Profile: Methylomic Study 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:MethylomicStudy |

 
Methylomic study / locus-level methylation metrics. 

**Usages:**

* Refer to this Profile: [Methylomic Study ID Relationship](StructureDefinition-bio-sample-methylomic-study-ref.md) and [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/methylomic-study-example-1](Basic-methylomic-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/methylomic-study)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-methylomic-study.csv), [Excel](StructureDefinition-methylomic-study.xlsx), [Schematron](StructureDefinition-methylomic-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "methylomic-study",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study",
  "version" : "0.1.0",
  "name" : "MethylomicStudy",
  "title" : "Methylomic Study",
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
  "description" : "Methylomic study / locus-level methylation metrics.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Basic",
        "path" : "Basic"
      },
      {
        "id" : "Basic.extension",
        "path" : "Basic.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Basic.extension:referenceGenomeId",
        "path" : "Basic.extension",
        "sliceName" : "referenceGenomeId",
        "short" : "Reference genome ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-reference-genome-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:targetRegionId",
        "path" : "Basic.extension",
        "sliceName" : "targetRegionId",
        "short" : "Target region ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-target-region-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:betaValue",
        "path" : "Basic.extension",
        "sliceName" : "betaValue",
        "short" : "Beta value",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-beta-value"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:mValue",
        "path" : "Basic.extension",
        "sliceName" : "mValue",
        "short" : "M value",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-m-value"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:detectionPValue",
        "path" : "Basic.extension",
        "sliceName" : "detectionPValue",
        "short" : "Detection p-value",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-detection-p-value"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:readCount",
        "path" : "Basic.extension",
        "sliceName" : "readCount",
        "short" : "Read count",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-read-count"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:methylatedReads",
        "path" : "Basic.extension",
        "sliceName" : "methylatedReads",
        "short" : "Methylated reads",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-methylated-reads"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Methylomic study ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/methylomic-study-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Methylomic study category",
        "mustSupport" : true
      },
      {
        "id" : "Basic.code.coding",
        "path" : "Basic.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Basic.code.coding.system",
        "path" : "Basic.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/CodeSystem/methylomic-study-type"
      },
      {
        "id" : "Basic.code.coding.code",
        "path" : "Basic.code.coding.code",
        "min" : 1
      }
    ]
  }
}

```
