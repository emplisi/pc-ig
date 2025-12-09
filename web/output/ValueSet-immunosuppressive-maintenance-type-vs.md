# Immunosuppressive Maintenance to Patient Type ValueSet - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressive Maintenance to Patient Type ValueSet**

## ValueSet: Immunosuppressive Maintenance to Patient Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/immunosuppressive-maintenance-type-vs | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ImmunosuppressiveMaintenanceTypeVS |

 
Allowed types for immunosuppressive maintenance records. 

 **References** 

* [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "immunosuppressive-maintenance-type-vs",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/immunosuppressive-maintenance-type-vs",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenanceTypeVS",
  "title" : "Immunosuppressive Maintenance to Patient Type ValueSet",
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
  "description" : "Allowed types for immunosuppressive maintenance records.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/immunosuppressive-maintenance-type",
        "concept" : [
          {
            "code" : "maintenance-to-patient"
          }
        ]
      }
    ]
  }
}

```
