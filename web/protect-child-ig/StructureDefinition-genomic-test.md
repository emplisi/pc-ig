# Genomic Test - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic Test**

## Resource Profile: Genomic Test 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:GenomicTest |

 
Definition of a genomic test / sequencing platform and pipeline configuration. 

**Usages:**

* Refer to this Profile: [Genomic Test ID Relationship](StructureDefinition-bio-sample-genomic-test-ref.md), [Genomic test ID relationship](StructureDefinition-epigenome-study-genomic-test-ref.md), [Genomic test ID relationship](StructureDefinition-target-region-genomic-test-ref.md) and [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/genomic-test-example-1](Basic-genomic-test-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/genomic-test)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-test.csv), [Excel](StructureDefinition-genomic-test.xlsx), [Schematron](StructureDefinition-genomic-test.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-test",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test",
  "version" : "0.1.0",
  "name" : "GenomicTest",
  "title" : "Genomic Test",
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
  "description" : "Definition of a genomic test / sequencing platform and pipeline configuration.",
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
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-reference-genome"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:testName",
        "path" : "Basic.extension",
        "sliceName" : "testName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-name"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:testVersion",
        "path" : "Basic.extension",
        "sliceName" : "testVersion",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-version"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sequencingDevice",
        "path" : "Basic.extension",
        "sliceName" : "sequencingDevice",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-sequencing-device"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:targetCapture",
        "path" : "Basic.extension",
        "sliceName" : "targetCapture",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-target-capture"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:readType",
        "path" : "Basic.extension",
        "sliceName" : "readType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:readLength",
        "path" : "Basic.extension",
        "sliceName" : "readLength",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-length"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:meanTargetCoverage",
        "path" : "Basic.extension",
        "sliceName" : "meanTargetCoverage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-mean-target-coverage"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:perTargetBaseCover100x",
        "path" : "Basic.extension",
        "sliceName" : "perTargetBaseCover100x",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:alignmentTools",
        "path" : "Basic.extension",
        "sliceName" : "alignmentTools",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-alignment-tools"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantCallingTools",
        "path" : "Basic.extension",
        "sliceName" : "variantCallingTools",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:chromosomeCorrdinate",
        "path" : "Basic.extension",
        "sliceName" : "chromosomeCorrdinate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-chromosome-corrdinate"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:annotationTools",
        "path" : "Basic.extension",
        "sliceName" : "annotationTools",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-tools"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:annotationDatabases",
        "path" : "Basic.extension",
        "sliceName" : "annotationDatabases",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-databases"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Genomic Test ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/genomic-test-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Genomic test category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/genomic-test-type"
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
