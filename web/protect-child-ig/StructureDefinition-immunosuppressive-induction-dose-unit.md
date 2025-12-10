# Dose unit - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dose unit**

## Extension: Dose unit 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose-unit | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveInductionDoseUnit |

Unit for the selected immunosuppressant dose.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressant Induction to Patient](StructureDefinition-immunosuppressive-induction-patient.md)
* Examples for this Extension: [Basic/imm-ind-pat-example-1](Basic-imm-ind-pat-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-induction-dose-unit)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-induction-dose-unit.csv), [Excel](StructureDefinition-immunosuppressive-induction-dose-unit.xlsx), [Schematron](StructureDefinition-immunosuppressive-induction-dose-unit.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-induction-dose-unit",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose-unit",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveInductionDoseUnit",
  "title" : "Dose unit",
  "status" : "draft",
  "date" : "2025-12-10T14:43:23+01:00",
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
  "description" : "Unit for the selected immunosuppressant dose.",
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
        "short" : "Dose unit",
        "definition" : "Unit for the selected immunosuppressant dose."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose-unit"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://example.org/fhir/ValueSet/immunosuppressive-induction-dose-unit"
        }
      }
    ]
  }
}

```
