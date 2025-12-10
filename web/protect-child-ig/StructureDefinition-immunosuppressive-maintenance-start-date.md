# Start date of maintenance therapy - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Start date of maintenance therapy**

## Extension: Start date of maintenance therapy 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-start-date | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveMaintenanceStartDate |

Date when this maintenance immunosuppressant regimen was started.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md)
* Examples for this Extension: [Basic/immunosuppressive-maintenance-patient-example-1](Basic-immunosuppressive-maintenance-patient-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-maintenance-start-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-maintenance-start-date.csv), [Excel](StructureDefinition-immunosuppressive-maintenance-start-date.xlsx), [Schematron](StructureDefinition-immunosuppressive-maintenance-start-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-maintenance-start-date",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-start-date",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenanceStartDate",
  "title" : "Start date of maintenance therapy",
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
  "description" : "Date when this maintenance immunosuppressant regimen was started.",
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
        "short" : "Start date of maintenance therapy",
        "definition" : "Date when this maintenance immunosuppressant regimen was started."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-start-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
