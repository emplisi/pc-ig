# Donor-specific antibody (DSA) - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor-specific antibody (DSA)**

## Extension: Donor-specific antibody (DSA) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-dsa | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MarkerImmuneFunctionDsa |

Donor-specific antibody flag for the HLA antibody above (yes/no).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Marker of Immune Function](StructureDefinition-marker-immune-function.md)
* Examples for this Extension: [Basic/mark-imm-func-example-1](Basic-mark-imm-func-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/marker-immune-function-dsa)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-marker-immune-function-dsa.csv), [Excel](StructureDefinition-marker-immune-function-dsa.xlsx), [Schematron](StructureDefinition-marker-immune-function-dsa.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "marker-immune-function-dsa",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-dsa",
  "version" : "0.1.0",
  "name" : "MarkerImmuneFunctionDsa",
  "title" : "Donor-specific antibody (DSA)",
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
  "description" : "Donor-specific antibody flag for the HLA antibody above (yes/no).",
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
        "short" : "Donor-specific antibody (DSA)",
        "definition" : "Donor-specific antibody flag for the HLA antibody above (yes/no)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-dsa"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
