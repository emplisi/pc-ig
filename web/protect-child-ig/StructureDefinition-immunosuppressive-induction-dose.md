# Immunosuppressant dose - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressant dose**

## Extension: Immunosuppressant dose 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ImmunosuppressiveInductionDose |

Dose of the selected immunosuppressant used for induction.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressant Induction to Patient](StructureDefinition-immunosuppressive-induction-patient.md)
* Examples for this Extension: [Basic/imm-ind-pat-example-1](Basic-imm-ind-pat-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-induction-dose)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-induction-dose.csv), [Excel](StructureDefinition-immunosuppressive-induction-dose.xlsx), [Schematron](StructureDefinition-immunosuppressive-induction-dose.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-induction-dose",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveInductionDose",
  "title" : "Immunosuppressant dose",
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
  "description" : "Dose of the selected immunosuppressant used for induction.",
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
        "short" : "Immunosuppressant dose",
        "definition" : "Dose of the selected immunosuppressant used for induction."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose"
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
