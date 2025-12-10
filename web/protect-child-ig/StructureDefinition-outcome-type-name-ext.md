# Outcome type name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome type name**

## Extension: Outcome type name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-name-ext | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:OutcomeTypeName |

Name of the outcome type.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Outcome Type](StructureDefinition-outcome-type.md)
* Examples for this Extension: [Basic/outcome-type-example-1](Basic-outcome-type-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/outcome-type-name-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-outcome-type-name-ext.csv), [Excel](StructureDefinition-outcome-type-name-ext.xlsx), [Schematron](StructureDefinition-outcome-type-name-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "outcome-type-name-ext",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-name-ext",
  "version" : "0.1.0",
  "name" : "OutcomeTypeName",
  "title" : "Outcome type name",
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
  "description" : "Name of the outcome type.",
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
        "short" : "Outcome type name",
        "definition" : "Name of the outcome type."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type-name-ext"
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
          "valueSet" : "http://example.org/fhir/ValueSet/outcome-type-name"
        }
      }
    ]
  }
}

```
