# Donor Pre-KTX Dialysis Type CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor Pre-KTX Dialysis Type CodeSystem**

## CodeSystem: Donor Pre-KTX Dialysis Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/donor-pre-ktx-dialysis-type | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:DonorPreKtxDialysisTypeCS |

 
Dialysis type used for the donor prior to kidney transplantation. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DonorPreKtxDialysisTypeVS](ValueSet-donor-pre-ktx-dialysis-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "donor-pre-ktx-dialysis-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/donor-pre-ktx-dialysis-type",
  "version" : "0.1.0",
  "name" : "DonorPreKtxDialysisTypeCS",
  "title" : "Donor Pre-KTX Dialysis Type CodeSystem",
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
  "description" : "Dialysis type used for the donor prior to kidney transplantation.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "hemodialysis",
      "display" : "Hemodialysis"
    },
    {
      "code" : "peritoneal-dialysis",
      "display" : "Peritoneal dialysis"
    }
  ]
}

```
