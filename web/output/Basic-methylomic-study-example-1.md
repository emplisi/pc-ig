# Example Methylomic Study - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Methylomic Study**

## Example Basic: Example Methylomic Study

Profile: [Methylomic Study](StructureDefinition-methylomic-study.md)

**Reference genome ID relationship**: [Basic GRCh38](Basic-reference-genome-grch38.md)

**Target region ID**: TR0001

**Beta value**: 0.72

**M value**: 1.85

**Detection p-value**: 0.0003

**Read count**: 250

**Methylated reads**: 180

**identifier**: `http://example.org/fhir/NamingSystem/methylomic-study-id`/MS0001

**code**: Locus-level methylomic record



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "methylomic-study-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-reference-genome-ref",
      "valueReference" : {
        "reference" : "Basic/reference-genome-grch38"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-target-region-id",
      "valueString" : "TR0001"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-beta-value",
      "valueDecimal" : 0.72
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-m-value",
      "valueDecimal" : 1.85
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-detection-p-value",
      "valueDecimal" : 0.0003
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-read-count",
      "valueInteger" : 250
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-methylated-reads",
      "valueInteger" : 180
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/methylomic-study-id",
      "value" : "MS0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/methylomic-study-type",
        "code" : "locus",
        "display" : "Locus-level methylomic record"
      }
    ]
  }
}

```
