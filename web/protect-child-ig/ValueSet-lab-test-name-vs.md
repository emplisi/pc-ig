# Lab Test Name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Test Name**

## ValueSet: Lab Test Name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ValueSet/lab-test-name | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:LabTestNameVS |

 
ValueSet of laboratory tests conducted. 

 **References** 

* [Lab test name](StructureDefinition-lab-test-name-ext.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://example.org/fhir/CodeSystem/lab-test-name`](CodeSystem-lab-test-name-cs.md)version 📦0.1.0

 

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
  "id" : "lab-test-name-vs",
  "url" : "http://example.org/fhir/ValueSet/lab-test-name",
  "version" : "0.1.0",
  "name" : "LabTestNameVS",
  "title" : "Lab Test Name",
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
  "description" : "ValueSet of laboratory tests conducted.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/lab-test-name"
      }
    ]
  }
}

```
