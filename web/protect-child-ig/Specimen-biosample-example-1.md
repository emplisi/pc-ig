# Example Biological Sample - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Biological Sample**

## Example Specimen: Example Biological Sample

Profile: [Biological Sample](StructureDefinition-biosample.md)

**Sample send to INGEMM date**: 2025-01-20

**Genomic Test ID Relationship**: [Basic Exome sequencing](Basic-genomic-test-example-1.md)

**Epigenome Study ID Relationship**: [Basic Methylation array epigenome study](Basic-epigenome-study-example-1.md)

**Methylomic Study ID Relationship**: [Basic Locus-level methylomic record](Basic-methylomic-study-example-1.md)

**DNA concentration**: 35.2

**identifier**: `http://example.org/fhir/NamingSystem/bio-sample-id`/BS0001

**type**: Peripheral blood

**subject**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2025-01-15 |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "biosample-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-send-ingemm-date",
      "valueDate" : "2025-01-20"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-genomic-test-ref",
      "valueReference" : {
        "reference" : "Basic/genomic-test-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-epigenome-study-ref",
      "valueReference" : {
        "reference" : "Basic/epigenome-study-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-methylomic-study-ref",
      "valueReference" : {
        "reference" : "Basic/methylomic-study-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration",
      "valueDecimal" : 35.2
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/bio-sample-id",
      "value" : "BS0001"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/biosample-tissue-type",
        "code" : "blood",
        "display" : "Blood"
      }
    ],
    "text" : "Peripheral blood"
  },
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  },
  "collection" : {
    "collectedDateTime" : "2025-01-15"
  }
}

```
