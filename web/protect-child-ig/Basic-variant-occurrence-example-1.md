# Example Variant Occurrence - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Variant Occurrence**

## Example Basic: Example Variant Occurrence

Profile: [Variant Occurrence](StructureDefinition-variant-occurrence.md)

**Target region ID relationship**: [Basic Gene-level target region](Basic-target-region-example-1.md)

**Reference sequence**: NM_007294.4

**dbSNP rsID**: rs80357713

**Reference allele**: A

**Alternate allele**: C

**HGVS c. notation**: c.5266dupC

**HGVS p. notation**: p.(Gln1756Profs*74)

**Variant read depth**: 120

**Variant exon number**: 20

**Copy number**: 2

**CNV locus**: chr17:43044295-43125482

**Fusion breakpoint**: NA

**Fusion supporting reads**: 0

**Sequence alteration**: missense_variant

**Variant feature**: pathogenic_variant

**Genetic origin**: somatic

**Genotype**: heterozygous

**identifier**: `http://example.org/fhir/NamingSystem/variant-occurrence-id`/VO0001

**code**: Single nucleotide variant



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "variant-occurrence-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-target-region-ref",
      "valueReference" : {
        "reference" : "Basic/target-region-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-sequence",
      "valueString" : "NM_007294.4"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-rs-id",
      "valueString" : "rs80357713"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-allele",
      "valueString" : "A"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-alternate-allele",
      "valueString" : "C"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-c",
      "valueString" : "c.5266dupC"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-p",
      "valueString" : "p.(Gln1756Profs*74)"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-read-depth",
      "valueInteger" : 120
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-exon-number",
      "valueInteger" : 20
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-copy-number",
      "valueDecimal" : 2
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-cnv-locus",
      "valueString" : "chr17:43044295-43125482"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-fusion-breakpoint",
      "valueString" : "NA"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-fusion-supporting-reads",
      "valueInteger" : 0
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-sequence-alteration",
      "valueString" : "missense_variant"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-feature",
      "valueString" : "pathogenic_variant"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-genetic-origin",
      "valueString" : "somatic"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-genotype",
      "valueString" : "heterozygous"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/variant-occurrence-id",
      "value" : "VO0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/variant-occurrence-type",
        "code" : "snv",
        "display" : "Single nucleotide variant"
      }
    ]
  }
}

```
