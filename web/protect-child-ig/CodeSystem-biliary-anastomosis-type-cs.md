# Type of surgical biliary anastomosis CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Type of surgical biliary anastomosis CodeSystem**

## CodeSystem: Type of surgical biliary anastomosis CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/biliary-anastomosis-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BiliaryAnastomosisTypeCS |

 
Types of biliary anastomosis used in liver transplantation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BiliaryAnastomosisTypeVS](ValueSet-biliary-anastomosis-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "biliary-anastomosis-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/biliary-anastomosis-type",
  "version" : "0.1.0",
  "name" : "BiliaryAnastomosisTypeCS",
  "title" : "Type of surgical biliary anastomosis CodeSystem",
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
  "description" : "Types of biliary anastomosis used in liver transplantation.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "duct-to-duct",
      "display" : "Duct-to-duct anastomosis"
    },
    {
      "code" : "choledochoenterostomy",
      "display" : "Choledochoenterostomy"
    },
    {
      "code" : "bilioenteric",
      "display" : "Bilioenteric anastomosis"
    },
    {
      "code" : "roux-en-y",
      "display" : "Roux-en-Y hepaticojejunostomy"
    }
  ]
}

```
