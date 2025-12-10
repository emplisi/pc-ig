# Pre-medication Antihypertensive Drug ValueSet - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pre-medication Antihypertensive Drug ValueSet**

## ValueSet: Pre-medication Antihypertensive Drug ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/pre-medication-antihypertensive-drug-vs | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedicationAntihypertensiveDrugVS |

 
Allowed antihypertensive drugs for antihypertensive_treatment. 

 **References** 

* [Antihypertensive treatment](StructureDefinition-pre-medication-antihypertensive-treatment.md)

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
  "id" : "pre-medication-antihypertensive-drug-vs",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/pre-medication-antihypertensive-drug-vs",
  "version" : "0.1.0",
  "name" : "PreMedicationAntihypertensiveDrugVS",
  "title" : "Pre-medication Antihypertensive Drug ValueSet",
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
  "description" : "Allowed antihypertensive drugs for antihypertensive_treatment.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/pre-medication-antihypertensive-drug",
        "concept" : [
          {
            "code" : "1332418"
          },
          {
            "code" : "1318853"
          },
          {
            "code" : "1340128"
          },
          {
            "code" : "1314002"
          },
          {
            "code" : "1346823"
          },
          {
            "code" : "1353766"
          },
          {
            "code" : "1309068"
          },
          {
            "code" : "1398937"
          },
          {
            "code" : "1363053"
          }
        ]
      }
    ]
  }
}

```
