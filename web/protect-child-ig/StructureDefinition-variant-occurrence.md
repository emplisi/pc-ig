# Variant Occurrence - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant Occurrence**

## Resource Profile: Variant Occurrence 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantOccurrence |

 
Variant occurrence information within a target region. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Variant occurrence ID relationship](StructureDefinition-variant-annotation-variant-occurrence-ref.md)
* Examples for this Profile: [Basic/variant-occurrence-example-1](Basic-variant-occurrence-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-occurrence)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-occurrence.csv), [Excel](StructureDefinition-variant-occurrence.xlsx), [Schematron](StructureDefinition-variant-occurrence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-occurrence",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence",
  "version" : "0.1.0",
  "name" : "VariantOccurrence",
  "title" : "Variant Occurrence",
  "status" : "draft",
  "date" : "2025-12-10T14:43:23+01:00",
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
  "description" : "Variant occurrence information within a target region.",
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
        "id" : "Basic.extension:targetRegionId",
        "path" : "Basic.extension",
        "sliceName" : "targetRegionId",
        "short" : "Target region ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-target-region-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:referenceSequence",
        "path" : "Basic.extension",
        "sliceName" : "referenceSequence",
        "short" : "Reference sequence",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-sequence"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:rsId",
        "path" : "Basic.extension",
        "sliceName" : "rsId",
        "short" : "dbSNP rsID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-rs-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:referenceAllele",
        "path" : "Basic.extension",
        "sliceName" : "referenceAllele",
        "short" : "Reference allele",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-allele"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:alternateAllele",
        "path" : "Basic.extension",
        "sliceName" : "alternateAllele",
        "short" : "Alternate allele",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-alternate-allele"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:hgvsC",
        "path" : "Basic.extension",
        "sliceName" : "hgvsC",
        "short" : "HGVS c. notation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-c"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:hgvsP",
        "path" : "Basic.extension",
        "sliceName" : "hgvsP",
        "short" : "HGVS p. notation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-p"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantReadDepth",
        "path" : "Basic.extension",
        "sliceName" : "variantReadDepth",
        "short" : "Variant read depth",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-read-depth"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantExonNumber",
        "path" : "Basic.extension",
        "sliceName" : "variantExonNumber",
        "short" : "Variant exon number",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-exon-number"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:copyNumber",
        "path" : "Basic.extension",
        "sliceName" : "copyNumber",
        "short" : "Copy number",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-copy-number"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:cnvLocus",
        "path" : "Basic.extension",
        "sliceName" : "cnvLocus",
        "short" : "CNV locus",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-cnv-locus"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:fusionBreakpoint",
        "path" : "Basic.extension",
        "sliceName" : "fusionBreakpoint",
        "short" : "Fusion breakpoint",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-fusion-breakpoint"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:fusionSupportingReads",
        "path" : "Basic.extension",
        "sliceName" : "fusionSupportingReads",
        "short" : "Fusion supporting reads",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-fusion-supporting-reads"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sequenceAlteration",
        "path" : "Basic.extension",
        "sliceName" : "sequenceAlteration",
        "short" : "Sequence alteration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-sequence-alteration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantFeature",
        "path" : "Basic.extension",
        "sliceName" : "variantFeature",
        "short" : "Variant feature",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-feature"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:geneticOrigin",
        "path" : "Basic.extension",
        "sliceName" : "geneticOrigin",
        "short" : "Genetic origin",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-genetic-origin"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:genotype",
        "path" : "Basic.extension",
        "sliceName" : "genotype",
        "short" : "Genotype",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-genotype"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Variant occurrence ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/variant-occurrence-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Variant occurrence category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/variant-occurrence-type"
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
