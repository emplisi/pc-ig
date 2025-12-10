# Variant tier level - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant tier level**

## Extension: Variant tier level 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-tier-level | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:VariantAnnotationVariantTierLevel |

Tier level for the variant (e.g., Tier 1, Tier 2).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Annotation](StructureDefinition-variant-annotation.md)
* Examples for this Extension: [Basic/variant-annotation-example-1](Basic-variant-annotation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-annotation-variant-tier-level)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-annotation-variant-tier-level.csv), [Excel](StructureDefinition-variant-annotation-variant-tier-level.xlsx), [Schematron](StructureDefinition-variant-annotation-variant-tier-level.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-annotation-variant-tier-level",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-tier-level",
  "version" : "0.1.0",
  "name" : "VariantAnnotationVariantTierLevel",
  "title" : "Variant tier level",
  "status" : "draft",
  "date" : "2025-12-09T16:44:49+01:00",
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
  "description" : "Tier level for the variant (e.g., Tier 1, Tier 2).",
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
        "short" : "Variant tier level",
        "definition" : "Tier level for the variant (e.g., Tier 1, Tier 2)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-tier-level"
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
