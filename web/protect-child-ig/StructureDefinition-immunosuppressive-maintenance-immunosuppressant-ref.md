# Immunosuppressant ID relationship - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressant ID relationship**

## Extension: Immunosuppressant ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveMaintenanceImmunosuppressantRef |

immunosuppressant_id – reference to the immunosuppressant drug used for maintenance.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md)
* Examples for this Extension: [Basic/immunosuppressive-maintenance-patient-example-1](Basic-immunosuppressive-maintenance-patient-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressive-maintenance-immunosuppressant-ref.csv), [Excel](StructureDefinition-immunosuppressive-maintenance-immunosuppressant-ref.xlsx), [Schematron](StructureDefinition-immunosuppressive-maintenance-immunosuppressant-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressive-maintenance-immunosuppressant-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenanceImmunosuppressantRef",
  "title" : "Immunosuppressant ID relationship",
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
  "description" : "immunosuppressant_id – reference to the immunosuppressant drug used for maintenance.",
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
        "short" : "Immunosuppressant ID relationship",
        "definition" : "immunosuppressant_id – reference to the immunosuppressant drug used for maintenance."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant"
            ]
          }
        ]
      }
    ]
  }
}

```
