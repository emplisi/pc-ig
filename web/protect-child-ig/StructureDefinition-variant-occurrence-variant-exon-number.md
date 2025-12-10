# Variant exon number - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant exon number**

## Extension: Variant exon number 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-exon-number | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantOccurrenceVariantExonNumber |

Exon number in which the variant occurred.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Occurrence](StructureDefinition-variant-occurrence.md)
* Examples for this Extension: [Basic/variant-occurrence-example-1](Basic-variant-occurrence-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-occurrence-variant-exon-number)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-occurrence-variant-exon-number.csv), [Excel](StructureDefinition-variant-occurrence-variant-exon-number.xlsx), [Schematron](StructureDefinition-variant-occurrence-variant-exon-number.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-occurrence-variant-exon-number",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-exon-number",
  "version" : "0.1.0",
  "name" : "VariantOccurrenceVariantExonNumber",
  "title" : "Variant exon number",
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
  "description" : "Exon number in which the variant occurred.",
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
        "short" : "Variant exon number",
        "definition" : "Exon number in which the variant occurred."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-variant-exon-number"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
