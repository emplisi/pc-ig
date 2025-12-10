# Variant pathogenicity - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant pathogenicity**

## Extension: Variant pathogenicity 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-pathogeny | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantAnnotationVariantPathogeny |

Pathogenicity assessment (e.g., pathogenic, likely pathogenic, VUS, benign).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Annotation](StructureDefinition-variant-annotation.md)
* Examples for this Extension: [Basic/variant-annotation-example-1](Basic-variant-annotation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-annotation-variant-pathogeny)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-annotation-variant-pathogeny.csv), [Excel](StructureDefinition-variant-annotation-variant-pathogeny.xlsx), [Schematron](StructureDefinition-variant-annotation-variant-pathogeny.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-annotation-variant-pathogeny",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-pathogeny",
  "version" : "0.1.0",
  "name" : "VariantAnnotationVariantPathogeny",
  "title" : "Variant pathogenicity",
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
  "description" : "Pathogenicity assessment (e.g., pathogenic, likely pathogenic, VUS, benign).",
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
        "short" : "Variant pathogenicity",
        "definition" : "Pathogenicity assessment (e.g., pathogenic, likely pathogenic, VUS, benign)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-pathogeny"
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
