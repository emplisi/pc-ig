# Kidney Side CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kidney Side CodeSystem**

## CodeSystem: Kidney Side CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/kidney-side | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:KidneySideCS |

 
Side of the kidney for nephrectomy / transplant context. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [KidneySideVS](ValueSet-kidney-side-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "kidney-side-cs",
  "url" : "http://example.org/fhir/CodeSystem/kidney-side",
  "version" : "0.1.0",
  "name" : "KidneySideCS",
  "title" : "Kidney Side CodeSystem",
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
  "description" : "Side of the kidney for nephrectomy / transplant context.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "left",
      "display" : "Left"
    },
    {
      "code" : "right",
      "display" : "Right"
    },
    {
      "code" : "both",
      "display" : "Both"
    }
  ]
}

```
