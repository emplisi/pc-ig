# Weight - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Weight**

## Extension: Weight 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-weight | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ClinicalVariableWeight |

Patient’s weight in kilograms.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Clinical Variable](StructureDefinition-clinical-variable.md)
* Examples for this Extension: [Basic/clinical-variable-example-1](Basic-clinical-variable-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/clinical-variable-weight)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-clinical-variable-weight.csv), [Excel](StructureDefinition-clinical-variable-weight.xlsx), [Schematron](StructureDefinition-clinical-variable-weight.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "clinical-variable-weight",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-weight",
  "version" : "0.1.0",
  "name" : "ClinicalVariableWeight",
  "title" : "Weight",
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
  "description" : "Patient’s weight in kilograms.",
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
        "short" : "Weight",
        "definition" : "Patient’s weight in kilograms."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-weight"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      }
    ]
  }
}

```
