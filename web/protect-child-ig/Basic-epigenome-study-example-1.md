# Example Epigenome Study - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Epigenome Study**

## Example Basic: Example Epigenome Study

Profile: [Epigenome Study](StructureDefinition-epigenome-study.md)

**Genomic test ID relationship**: [Basic Exome sequencing](Basic-genomic-test-example-1.md)

**Bisulfite reference kit**: EZ DNA Methylation-Gold Kit

**Bisulfite date**: 2025-01-10

**Age at DNA extraction**: 45

**Array date**: 2025-01-12

**SNP reader device**: iScan System

**Sample type**: Blood

**Pool ID**: POOL-01

**Sample ID**: SAMPLE-123

**Sentrix barcode array**: 203456789012

**Sentrix position**: R01C01

**Chip type**: Infinium MethylationEPIC BeadChip

**Manifest number**: METH-EPIC-201

**Scan date**: 2025-01-13

**Raw data**: gs://bucket/methylation/ES0001/idat/

**Target disease ID**: OMIM:123456

**identifier**: `http://example.org/fhir/NamingSystem/epigenome-study-id`/ES0001

**code**: Methylation array epigenome study



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "epigenome-study-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-genomic-test-ref",
      "valueReference" : {
        "reference" : "Basic/genomic-test-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-bisulfite-reference-kit",
      "valueString" : "EZ DNA Methylation-Gold Kit"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-bisulfite-date",
      "valueDate" : "2025-01-10"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-age-at-dna-extraction",
      "valueDecimal" : 45
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-array-date",
      "valueDate" : "2025-01-12"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-snp-reader-device",
      "valueString" : "iScan System"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/biosample-tissue-type",
            "code" : "blood",
            "display" : "Blood"
          }
        ]
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-pool-id",
      "valueString" : "POOL-01"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-id",
      "valueString" : "SAMPLE-123"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sentrix-barcodearray",
      "valueString" : "203456789012"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sentrix-position",
      "valueString" : "R01C01"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-chip-type",
      "valueString" : "Infinium MethylationEPIC BeadChip"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-manifest-number",
      "valueString" : "METH-EPIC-201"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-scan-date",
      "valueDate" : "2025-01-13"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-raw-data",
      "valueString" : "gs://bucket/methylation/ES0001/idat/"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-target-disease-id",
      "valueString" : "OMIM:123456"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/epigenome-study-id",
      "value" : "ES0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/epigenome-study-type",
        "code" : "array",
        "display" : "Methylation array epigenome study"
      }
    ]
  }
}

```
