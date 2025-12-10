# Variant origin - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant origin**

## Extension: Variant origin 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-origin | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantAnnotationVariantOrigin |

Origin of the variant (e.g., inherited, de novo, somatic).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Annotation](StructureDefinition-variant-annotation.md)
* Examples for this Extension: [Basic/variant-annotation-example-1](Basic-variant-annotation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-annotation-variant-origin)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-annotation-variant-origin.csv), [Excel](StructureDefinition-variant-annotation-variant-origin.xlsx), [Schematron](StructureDefinition-variant-annotation-variant-origin.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-annotation-variant-origin",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-origin",
  "version" : "0.1.0",
  "name" : "VariantAnnotationVariantOrigin",
  "title" : "Variant origin",
  "status" : "draft",
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Origin of the variant (e.g., inherited, de novo, somatic).",
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
        "short" : "Variant origin",
        "definition" : "Origin of the variant (e.g., inherited, de novo, somatic)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-origin"
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
