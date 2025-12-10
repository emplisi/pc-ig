# HGNC symbol - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HGNC symbol**

## Extension: HGNC symbol 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-symbol | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TargetRegionHGNCSymbol |

Gene symbol given by HGNC nomenclature.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Target Region](StructureDefinition-target-region.md)
* Examples for this Extension: [Basic/target-region-example-1](Basic-target-region-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/target-region-hgnc-symbol)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-target-region-hgnc-symbol.csv), [Excel](StructureDefinition-target-region-hgnc-symbol.xlsx), [Schematron](StructureDefinition-target-region-hgnc-symbol.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "target-region-hgnc-symbol",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-symbol",
  "version" : "0.1.0",
  "name" : "TargetRegionHGNCSymbol",
  "title" : "HGNC symbol",
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
  "description" : "Gene symbol given by HGNC nomenclature.",
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
        "short" : "HGNC symbol",
        "definition" : "Gene symbol given by HGNC nomenclature."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-hgnc-symbol"
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
