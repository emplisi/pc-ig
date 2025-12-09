# Donor Liver Type CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor Liver Type CodeSystem**

## CodeSystem: Donor Liver Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/donor-liver-type | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:DonorLiverTypeCS |

 
Type of liver donation (complete vs partial). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DonorLiverTypeVS](ValueSet-donor-liver-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "donor-liver-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/donor-liver-type",
  "version" : "0.1.0",
  "name" : "DonorLiverTypeCS",
  "title" : "Donor Liver Type CodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-09T16:44:49+01:00",
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
  "description" : "Type of liver donation (complete vs partial).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "complete",
      "display" : "Complete liver graft"
    },
    {
      "code" : "partial",
      "display" : "Partial liver graft"
    }
  ]
}

```
