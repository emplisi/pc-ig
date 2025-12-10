# Dose of immunosuppressant - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dose of immunosuppressant**

## Extension: Dose of immunosuppressant 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-dose | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveMaintenanceDose |

dose – maintenance dose of the immunosuppressant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md)
* Examples for this Extension: [Basic/immunosuppressive-maintenance-patient-example-1](Basic-immunosuppressive-maintenance-patient-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-maintenance-dose)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-maintenance-dose.csv), [Excel](StructureDefinition-immunosuppressive-maintenance-dose.xlsx), [Schematron](StructureDefinition-immunosuppressive-maintenance-dose.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-maintenance-dose",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-dose",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenanceDose",
  "title" : "Dose of immunosuppressant",
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
  "description" : "dose – maintenance dose of the immunosuppressant.",
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
        "short" : "Dose of immunosuppressant",
        "definition" : "dose – maintenance dose of the immunosuppressant."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-dose"
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
