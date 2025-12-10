# Reference sequence - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reference sequence**

## Extension: Reference sequence 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-sequence | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantOccurrenceReferenceSequence |

Transcript ID based on a protein-coding RNA (mRNA), including accession and version number.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Occurrence](StructureDefinition-variant-occurrence.md)
* Examples for this Extension: [Basic/variant-occurrence-example-1](Basic-variant-occurrence-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-occurrence-reference-sequence)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-occurrence-reference-sequence.csv), [Excel](StructureDefinition-variant-occurrence-reference-sequence.xlsx), [Schematron](StructureDefinition-variant-occurrence-reference-sequence.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-occurrence-reference-sequence",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-sequence",
  "version" : "0.1.0",
  "name" : "VariantOccurrenceReferenceSequence",
  "title" : "Reference sequence",
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
  "description" : "Transcript ID based on a protein-coding RNA (mRNA), including accession and version number.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Reference sequence",
        "definition" : "Transcript ID based on a protein-coding RNA (mRNA), including accession and version number."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-reference-sequence"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
