# Transplant Type CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant Type CodeSystem**

## CodeSystem: Transplant Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/transplant-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TransplantTypeCS |

 
Type of solid-organ transplant (liver, kidney, combined liver-kidney). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TransplantTypeVS](ValueSet-transplant-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "transplant-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/transplant-type",
  "version" : "0.1.0",
  "name" : "TransplantTypeCS",
  "title" : "Transplant Type CodeSystem",
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
  "description" : "Type of solid-organ transplant (liver, kidney, combined liver-kidney).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "liver",
      "display" : "Liver transplant"
    },
    {
      "code" : "kidney",
      "display" : "Kidney transplant"
    },
    {
      "code" : "combined",
      "display" : "Combined liver-kidney transplant"
    }
  ]
}

```
