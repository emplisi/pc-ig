# Epigenome Study - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Epigenome Study**

## Resource Profile: Epigenome Study 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:EpigenomeStudy |

 
Epigenome (e.g. methylation array) study metadata and platform details. 

**Usages:**

* Refer to this Profile: [Epigenome Study ID Relationship](StructureDefinition-bio-sample-epigenome-study-ref.md) and [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/epigenome-study-example-1](Basic-epigenome-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/epigenome-study)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-epigenome-study.csv), [Excel](StructureDefinition-epigenome-study.xlsx), [Schematron](StructureDefinition-epigenome-study.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "epigenome-study",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study",
  "version" : "0.1.0",
  "name" : "EpigenomeStudy",
  "title" : "Epigenome Study",
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
  "description" : "Epigenome (e.g. methylation array) study metadata and platform details.",
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
        "short" : "Genomic test ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-genomic-test-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:bisulfiteReferenceKit",
        "path" : "Basic.extension",
        "sliceName" : "bisulfiteReferenceKit",
        "short" : "Bisulfite reference kit",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-bisulfite-reference-kit"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:bisulfiteDate",
        "path" : "Basic.extension",
        "sliceName" : "bisulfiteDate",
        "short" : "Bisulfite date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-bisulfite-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:ageAtDNAExtraction",
        "path" : "Basic.extension",
        "sliceName" : "ageAtDNAExtraction",
        "short" : "Age at DNA extraction (years)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-age-at-dna-extraction"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:arrayDate",
        "path" : "Basic.extension",
        "sliceName" : "arrayDate",
        "short" : "Array date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-array-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:snpReaderDevice",
        "path" : "Basic.extension",
        "sliceName" : "snpReaderDevice",
        "short" : "SNP reader device",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-snp-reader-device"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sampleType",
        "path" : "Basic.extension",
        "sliceName" : "sampleType",
        "short" : "Sample type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:poolId",
        "path" : "Basic.extension",
        "sliceName" : "poolId",
        "short" : "Pool ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-pool-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sampleId",
        "path" : "Basic.extension",
        "sliceName" : "sampleId",
        "short" : "Sample ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sentrixBarcodeArray",
        "path" : "Basic.extension",
        "sliceName" : "sentrixBarcodeArray",
        "short" : "Sentrix barcode array",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sentrix-barcodearray"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:sentrixPosition",
        "path" : "Basic.extension",
        "sliceName" : "sentrixPosition",
        "short" : "Sentrix position",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sentrix-position"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:chipType",
        "path" : "Basic.extension",
        "sliceName" : "chipType",
        "short" : "Chip type",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-chip-type"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:manifestNumber",
        "path" : "Basic.extension",
        "sliceName" : "manifestNumber",
        "short" : "Manifest number",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-manifest-number"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:scanDate",
        "path" : "Basic.extension",
        "sliceName" : "scanDate",
        "short" : "Scan date",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-scan-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:rawData",
        "path" : "Basic.extension",
        "sliceName" : "rawData",
        "short" : "Raw data (file/link identifier)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-raw-data"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:targetDiseaseId",
        "path" : "Basic.extension",
        "sliceName" : "targetDiseaseId",
        "short" : "Target disease ID",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-target-disease-id"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Epigenome study ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/epigenome-study-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Epigenome study category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/epigenome-study-type"
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
