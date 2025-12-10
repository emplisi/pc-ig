# Patient Rh Factor ValueSet - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Rh Factor ValueSet**

## ValueSet: Patient Rh Factor ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-rh-factor-vs | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientRhFactorVS |

 
Allowed Rh factor values for transplant recipients. 

 **References** 

* [Donor Rh factor](StructureDefinition-donor-rh-factor.md)
* [Patient Rh factor](StructureDefinition-patient-rh-factor.md)

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
  "id" : "patient-rh-factor-vs",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-rh-factor-vs",
  "version" : "0.1.0",
  "name" : "PatientRhFactorVS",
  "title" : "Patient Rh Factor ValueSet",
  "status" : "draft",
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Allowed Rh factor values for transplant recipients.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/patient-rh-factor",
        "concept" : [
          {
            "code" : "positive"
          },
          {
            "code" : "negative"
          }
        ]
      }
    ]
  }
}

```
