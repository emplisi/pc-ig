# Patient Instrumental Investigation Result CodeSystem - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Instrumental Investigation Result CodeSystem**

## CodeSystem: Patient Instrumental Investigation Result CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/patient-instrumental-investigation-result | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientInstrumentalInvestigationResultCS |

 
Result of the instrumental investigation test conducted (Normal / Abnormal). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientInstrumentalInvestigationResultVS](ValueSet-patient-instrumental-investigation-result-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-instrumental-investigation-result-cs",
  "url" : "http://example.org/fhir/CodeSystem/patient-instrumental-investigation-result",
  "version" : "0.1.0",
  "name" : "PatientInstrumentalInvestigationResultCS",
  "title" : "Patient Instrumental Investigation Result CodeSystem",
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
  "description" : "Result of the instrumental investigation test conducted (Normal / Abnormal).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "normal",
      "display" : "Normal"
    },
    {
      "code" : "abnormal",
      "display" : "Abnormal"
    }
  ]
}

```
