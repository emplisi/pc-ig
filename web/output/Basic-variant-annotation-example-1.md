# Example Variant Annotation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Variant Annotation**

## Example Basic: Example Variant Annotation

Profile: [Variant Annotation](StructureDefinition-variant-annotation.md)

**Variant occurrence ID relationship**: [Basic Single nucleotide variant](Basic-variant-occurrence-example-1.md)

**Annotation database**: ClinVar

**Variant origin**: germline

**Variant pathogenicity**: pathogenic

**Variant class level**: ACMG Class 5

**Variant tier level**: Tier 1

**Allele frequency**: 0.0001

**Medication**: PARP inhibitor

**identifier**: `http://example.org/fhir/NamingSystem/variant-annotation-id`/VA0001

**code**: Clinical variant annotation



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "variant-annotation-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-occurrence-ref",
      "valueReference" : {
        "reference" : "Basic/variant-occurrence-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-annotation-database",
      "valueString" : "ClinVar"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-origin",
      "valueString" : "germline"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-pathogeny",
      "valueString" : "pathogenic"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-class-level",
      "valueString" : "ACMG Class 5"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-tier-level",
      "valueString" : "Tier 1"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-allele-frequency",
      "valueDecimal" : 0.0001
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-medication",
      "valueString" : "PARP inhibitor"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/variant-annotation-id",
      "value" : "VA0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/variant-annotation-type",
        "code" : "clinical",
        "display" : "Clinical variant annotation"
      }
    ]
  }
}

```
