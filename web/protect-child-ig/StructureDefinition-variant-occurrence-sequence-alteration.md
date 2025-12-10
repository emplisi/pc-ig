# Sequence alteration - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sequence alteration**

## Extension: Sequence alteration 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-sequence-alteration | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantOccurrenceSequenceAlteration |

Structural variant type.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Occurrence](StructureDefinition-variant-occurrence.md)
* Examples for this Extension: [Basic/variant-occurrence-example-1](Basic-variant-occurrence-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-occurrence-sequence-alteration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-occurrence-sequence-alteration.csv), [Excel](StructureDefinition-variant-occurrence-sequence-alteration.xlsx), [Schematron](StructureDefinition-variant-occurrence-sequence-alteration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-occurrence-sequence-alteration",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-sequence-alteration",
  "version" : "0.1.0",
  "name" : "VariantOccurrenceSequenceAlteration",
  "title" : "Sequence alteration",
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
  "description" : "Structural variant type.",
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
        "short" : "Sequence alteration",
        "definition" : "Structural variant type."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-sequence-alteration"
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
