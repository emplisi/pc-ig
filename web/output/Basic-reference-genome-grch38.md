# Example Reference Genome GRCh38 - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Reference Genome GRCh38**

## Example Basic: Example Reference Genome GRCh38

Profile: [Reference Genome](StructureDefinition-reference-genome.md)

**Reference genome FASTA path**: /data/genomes/GRCh38/GRCh38.fa

**identifier**: `http://example.org/fhir/NamingSystem/reference-genome-id`/RG0001

**code**: GRCh38



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "reference-genome-grch38",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome-fasta-path",
      "valueString" : "/data/genomes/GRCh38/GRCh38.fa"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/reference-genome-id",
      "value" : "RG0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/reference-genome-build",
        "code" : "GRCh38",
        "display" : "GRCh38"
      }
    ]
  }
}

```
