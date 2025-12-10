# Example Target Region - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Target Region**

## Example Basic: Example Target Region

Profile: [Target Region](StructureDefinition-target-region.md)

**Genomic test ID relationship**: [Basic Exome sequencing](Basic-genomic-test-example-1.md)

**HGNC ID**: HGNC:1100

**HGNC symbol**: BRCA1

**Chromosome ID**: 17

**Start position**: 43044295

**End position**: 43125482

**identifier**: `http://example.org/fhir/NamingSystem/target-region-id`/TR0001

**code**: Gene-level target region



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "target-region-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-genomic-test-ref",
      "valueReference" : {
        "reference" : "Basic/genomic-test-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-id",
      "valueString" : "HGNC:1100"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-symbol",
      "valueString" : "BRCA1"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-chromosome-id",
      "valueInteger" : 17
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-start-position",
      "valueInteger" : 43044295
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-end-position",
      "valueInteger" : 43125482
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/target-region-id",
      "value" : "TR0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/target-region-type",
        "code" : "gene-region",
        "display" : "Gene-level target region"
      }
    ]
  }
}

```
