# Pre-medication Type CodeSystem - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pre-medication Type CodeSystem**

## CodeSystem: Pre-medication Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/pre-medication-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedicationTypeCS |

 
Type of pre-transplant medication record. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PreMedicationTypeVS](ValueSet-pre-medication-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pre-medication-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/pre-medication-type",
  "version" : "0.1.0",
  "name" : "PreMedicationTypeCS",
  "title" : "Pre-medication Type CodeSystem",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Type of pre-transplant medication record.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "pre-medication",
      "display" : "Pre-transplant medication record"
    }
  ]
}

```
