# Outcome Type Name - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome Type Name**

## ValueSet: Outcome Type Name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ValueSet/outcome-type-name | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:OutcomeTypeNameVS |

 
ValueSet of post-transplant outcome types. 

 **References** 

* [Outcome type name](StructureDefinition-outcome-type-name-ext.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://example.org/fhir/CodeSystem/outcome-type-name`](CodeSystem-outcome-type-name-cs.md)version 📦0.1.0

 

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
  "id" : "outcome-type-name-vs",
  "url" : "http://example.org/fhir/ValueSet/outcome-type-name",
  "version" : "0.1.0",
  "name" : "OutcomeTypeNameVS",
  "title" : "Outcome Type Name",
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
  "description" : "ValueSet of post-transplant outcome types.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/outcome-type-name"
      }
    ]
  }
}

```
