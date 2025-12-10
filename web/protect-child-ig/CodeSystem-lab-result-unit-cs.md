# Lab Result Unit CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab Result Unit CodeSystem**

## CodeSystem: Lab Result Unit CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/lab-result-unit | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:LabResultUnitCS |

 
Units of measurement used for laboratory results, aligned with the lab_result unit conceptual domain. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LabResultUnitVS](ValueSet-lab-result-unit-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "lab-result-unit-cs",
  "url" : "http://example.org/fhir/CodeSystem/lab-result-unit",
  "version" : "0.1.0",
  "name" : "LabResultUnitCS",
  "title" : "Lab Result Unit CodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-10T13:58:21+01:00",
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
  "description" : "Units of measurement used for laboratory results, aligned with the lab_result unit conceptual domain.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "mg_per_dL",
      "display" : "mg/dL"
    },
    {
      "code" : "umol_per_L",
      "display" : "µmol/L"
    },
    {
      "code" : "mL_min_1_73m2",
      "display" : "mL/min/1.73 m2"
    },
    {
      "code" : "mEq_per_L",
      "display" : "mEq/L"
    },
    {
      "code" : "g_per_dL",
      "display" : "g/dL"
    },
    {
      "code" : "g_per_L",
      "display" : "g/L"
    },
    {
      "code" : "U_per_L",
      "display" : "U/L"
    },
    {
      "code" : "percent",
      "display" : "%"
    },
    {
      "code" : "mmol_per_L",
      "display" : "mmol/L"
    },
    {
      "code" : "10exp3_per_uL",
      "display" : "10^3/UL"
    },
    {
      "code" : "10exp9_per_L",
      "display" : "10^9/UL"
    },
    {
      "code" : "10exp3_per_mm3",
      "display" : "x 10^3/mm3"
    },
    {
      "code" : "second",
      "display" : "s"
    }
  ]
}

```
