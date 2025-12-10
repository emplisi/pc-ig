# Example Genomic Test - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Genomic Test**

## Example Basic: Example Genomic Test

Profile: [Genomic Test](StructureDefinition-genomic-test.md)

**Reference Genome ID relationship**: [Basic GRCh38](Basic-reference-genome-grch38.md)

**Genomic Test Name**: ExomeSeq v1

**Genomic Test Version**: 1.2.3

**Sequencing device**: Illumina NovaSeq 6000

**Target capture**: Exome capture kit XYZ v5

**Read type**: Paired-end

**Read length**: 150

**Mean target coverage**: 120.5

**Per target base cover x100**: 95.3

**Alignment tools**: BWA-MEM 0.7.17

**Variant calling tools**: GATK HaplotypeCaller 4.2.0

**Chromosome coordinate**: GRCh38 (1-based, inclusive)

**Annotation tools**: VEP 104

**Annotation databases**: gnomAD v3.1, ClinVar 2025-01, dbNSFP 4.3

**identifier**: `http://example.org/fhir/NamingSystem/genomic-test-id`/GT0001

**code**: Exome sequencing



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "genomic-test-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-reference-genome",
      "valueReference" : {
        "reference" : "Basic/reference-genome-grch38"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-name",
      "valueString" : "ExomeSeq v1"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-version",
      "valueString" : "1.2.3"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-sequencing-device",
      "valueString" : "Illumina NovaSeq 6000"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-target-capture",
      "valueString" : "Exome capture kit XYZ v5"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-type",
      "valueString" : "Paired-end"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-read-length",
      "valueInteger" : 150
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-mean-target-coverage",
      "valueDecimal" : 120.5
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x",
      "valueDecimal" : 95.3
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-alignment-tools",
      "valueString" : "BWA-MEM 0.7.17"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-variant-calling-tools",
      "valueString" : "GATK HaplotypeCaller 4.2.0"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-chromosome-corrdinate",
      "valueString" : "GRCh38 (1-based, inclusive)"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-tools",
      "valueString" : "VEP 104"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-annotation-databases",
      "valueString" : "gnomAD v3.1, ClinVar 2025-01, dbNSFP 4.3"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/genomic-test-id",
      "value" : "GT0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/genomic-test-type",
        "code" : "exome",
        "display" : "Exome sequencing"
      }
    ]
  }
}

```
