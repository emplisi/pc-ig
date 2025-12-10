# BioSample Tissue Type CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BioSample Tissue Type CodeSystem**

## CodeSystem: BioSample Tissue Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/biosample-tissue-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BioSampleTissueTypeCS |

 
Tissue types for biological samples (from the bio_sample table). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BioSampleTissueTypeVS](ValueSet-biosample-tissue-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "biosample-tissue-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/biosample-tissue-type",
  "version" : "0.1.0",
  "name" : "BioSampleTissueTypeCS",
  "title" : "BioSample Tissue Type CodeSystem",
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
  "description" : "Tissue types for biological samples (from the bio_sample table).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "blood",
      "display" : "Blood"
    },
    {
      "code" : "saliva",
      "display" : "Saliva"
    },
    {
      "code" : "other-tissue",
      "display" : "Other tissues"
    }
  ]
}

```
