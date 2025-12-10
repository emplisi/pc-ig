# Immunosuppressant Induction Dose Unit - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressant Induction Dose Unit**

## CodeSystem: Immunosuppressant Induction Dose Unit (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/immunosuppressive-induction-dose-unit | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveInductionDoseUnitCS |

 
Units for immunosuppressant induction dose. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImmunosuppressiveInductionDoseUnitVS](ValueSet-immunosuppressive-induction-dose-unit-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "immunosuppressive-induction-dose-unit-cs",
  "url" : "http://example.org/fhir/CodeSystem/immunosuppressive-induction-dose-unit",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveInductionDoseUnitCS",
  "title" : "Immunosuppressant Induction Dose Unit",
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
  "description" : "Units for immunosuppressant induction dose.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "mg-kg",
      "display" : "mg/kg"
    },
    {
      "code" : "mg-mq",
      "display" : "mg/mq"
    }
  ]
}

```
