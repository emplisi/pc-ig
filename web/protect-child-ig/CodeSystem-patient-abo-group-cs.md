# Patient ABO Group CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient ABO Group CodeSystem**

## CodeSystem: Patient ABO Group CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/patient-abo-group | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientABOGroupCS |

 
ABO blood groups for transplant recipients (maps from OMOP A/B/AB/0). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientABOGroupVS](ValueSet-patient-abo-group-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-abo-group-cs",
  "url" : "http://example.org/fhir/CodeSystem/patient-abo-group",
  "version" : "0.1.0",
  "name" : "PatientABOGroupCS",
  "title" : "Patient ABO Group CodeSystem",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "ABO blood groups for transplant recipients (maps from OMOP A/B/AB/0).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "A",
      "display" : "Group A"
    },
    {
      "code" : "B",
      "display" : "Group B"
    },
    {
      "code" : "AB",
      "display" : "Group AB"
    },
    {
      "code" : "O",
      "display" : "Group O"
    }
  ]
}

```
