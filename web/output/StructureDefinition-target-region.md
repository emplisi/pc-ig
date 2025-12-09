# Target Region - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Target Region**

## Resource Profile: Target Region 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:TargetRegion |

 
Target gene / genomic region associated with a genomic test platform. 

**Usages:**

* Refer to this Profile: [Target region ID relationship](StructureDefinition-variant-occurrence-target-region-ref.md)
* Examples for this Profile: [Basic/target-region-example-1](Basic-target-region-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/target-region)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-target-region.csv), [Excel](StructureDefinition-target-region.xlsx), [Schematron](StructureDefinition-target-region.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "target-region",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region",
  "version" : "0.1.0",
  "name" : "TargetRegion",
  "title" : "Target Region",
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
  "description" : "Target gene / genomic region associated with a genomic test platform.",
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
        "id" : "Basic.extension:genomicTestId",
        "path" : "Basic.extension",
        "sliceName" : "genomicTestId",
        "short" : "Genomic test ID (platform relationship)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-genomic-test-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:hgncId",
        "path" : "Basic.extension",
        "sliceName" : "hgncId",
        "short" : "HGNC ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:hgncSymbol",
        "path" : "Basic.extension",
        "sliceName" : "hgncSymbol",
        "short" : "HGNC symbol",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-symbol"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:chromosomeId",
        "path" : "Basic.extension",
        "sliceName" : "chromosomeId",
        "short" : "Chromosome ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-chromosome-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:startPosition",
        "path" : "Basic.extension",
        "sliceName" : "startPosition",
        "short" : "Start position",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-start-position"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:endPosition",
        "path" : "Basic.extension",
        "sliceName" : "endPosition",
        "short" : "End position",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-end-position"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Target gene ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/target-region-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Target region category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/target-region-type"
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
