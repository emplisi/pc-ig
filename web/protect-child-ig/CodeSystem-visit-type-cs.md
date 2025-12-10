# Visit Type CodeSystem - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Visit Type CodeSystem**

## CodeSystem: Visit Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/visit-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VisitTypeCS |

 
Type of visit in the transplant follow-up schedule. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VisitTypeVS](ValueSet-visit-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "visit-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/visit-type",
  "version" : "0.1.0",
  "name" : "VisitTypeCS",
  "title" : "Visit Type CodeSystem",
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
  "description" : "Type of visit in the transplant follow-up schedule.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "pre-transplant",
      "display" : "Pre-transplant visit"
    },
    {
      "code" : "month-1",
      "display" : "1 month visit"
    },
    {
      "code" : "month-3",
      "display" : "3 month visit"
    },
    {
      "code" : "month-5",
      "display" : "5 month visit"
    },
    {
      "code" : "outcome",
      "display" : "Outcome visit"
    }
  ]
}

```
