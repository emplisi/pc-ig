# Intraoperative Complications CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Intraoperative Complications CodeSystem**

## CodeSystem: Intraoperative Complications CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/intraoperative-complication | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:IntraoperativeComplicationCS |

 
Intraoperative complications during liver transplantation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IntraoperativeComplicationVS](ValueSet-intraoperative-complication-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "intraoperative-complication-cs",
  "url" : "http://example.org/fhir/CodeSystem/intraoperative-complication",
  "version" : "0.1.0",
  "name" : "IntraoperativeComplicationCS",
  "title" : "Intraoperative Complications CodeSystem",
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
  "description" : "Intraoperative complications during liver transplantation.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "major-bleeding",
      "display" : "Major bleeding"
    },
    {
      "code" : "bile-duct-injury",
      "display" : "Bile duct injury"
    },
    {
      "code" : "vessel-injury",
      "display" : "Vessel injury"
    },
    {
      "code" : "liver-ischemia",
      "display" : "Liver ischemia"
    },
    {
      "code" : "other",
      "display" : "Other complication"
    }
  ]
}

```
