# Patient Rh Factor CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Rh Factor CodeSystem**

## CodeSystem: Patient Rh Factor CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/patient-rh-factor | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientRhFactorCS |

 
Rh factor of the transplant recipient (maps from OMOP Positive/Negative). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientRhFactorVS](ValueSet-patient-rh-factor-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-rh-factor-cs",
  "url" : "http://example.org/fhir/CodeSystem/patient-rh-factor",
  "version" : "0.1.0",
  "name" : "PatientRhFactorCS",
  "title" : "Patient Rh Factor CodeSystem",
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
  "description" : "Rh factor of the transplant recipient (maps from OMOP Positive/Negative).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "positive",
      "display" : "Rh positive"
    },
    {
      "code" : "negative",
      "display" : "Rh negative"
    }
  ]
}

```
