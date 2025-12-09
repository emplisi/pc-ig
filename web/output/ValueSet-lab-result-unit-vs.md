# Lab Result Unit ValueSet - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Result Unit ValueSet**

## ValueSet: Lab Result Unit ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/lab-result-unit-vs | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:LabResultUnitVS |

 
Allowed units of measurement for lab result values (unit column). 

 **References** 

* [Lab Result](StructureDefinition-lab-result-observation.md)

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
  "id" : "lab-result-unit-vs",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/lab-result-unit-vs",
  "version" : "0.1.0",
  "name" : "LabResultUnitVS",
  "title" : "Lab Result Unit ValueSet",
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
  "description" : "Allowed units of measurement for lab result values (unit column).",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/lab-result-unit",
        "concept" : [
          {
            "code" : "mg_per_dL"
          },
          {
            "code" : "umol_per_L"
          },
          {
            "code" : "mL_min_1_73m2"
          },
          {
            "code" : "mEq_per_L"
          },
          {
            "code" : "g_per_dL"
          },
          {
            "code" : "g_per_L"
          },
          {
            "code" : "U_per_L"
          },
          {
            "code" : "percent"
          },
          {
            "code" : "mmol_per_L"
          },
          {
            "code" : "10exp3_per_uL"
          },
          {
            "code" : "10exp9_per_L"
          },
          {
            "code" : "10exp3_per_mm3"
          },
          {
            "code" : "second"
          }
        ]
      }
    ]
  }
}

```
