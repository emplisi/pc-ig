# HGVS c. notation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HGVS c. notation**

## Extension: HGVS c. notation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-c | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantOccurrenceHgvsC |

Nomenclature for the sequence variant at the DNA level (HGVS c. notation).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Variant Occurrence](StructureDefinition-variant-occurrence.md)
* Examples for this Extension: [Basic/variant-occurrence-example-1](Basic-variant-occurrence-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-occurrence-hgvs-c)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-occurrence-hgvs-c.csv), [Excel](StructureDefinition-variant-occurrence-hgvs-c.xlsx), [Schematron](StructureDefinition-variant-occurrence-hgvs-c.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-occurrence-hgvs-c",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-c",
  "version" : "0.1.0",
  "name" : "VariantOccurrenceHgvsC",
  "title" : "HGVS c. notation",
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
  "description" : "Nomenclature for the sequence variant at the DNA level (HGVS c. notation).",
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
        "short" : "HGVS c. notation",
        "definition" : "Nomenclature for the sequence variant at the DNA level (HGVS c. notation)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence-hgvs-c"
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
