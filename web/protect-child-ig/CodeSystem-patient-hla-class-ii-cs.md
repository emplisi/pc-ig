# Patient HLA Class II Loci CodeSystem - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient HLA Class II Loci CodeSystem**

## CodeSystem: Patient HLA Class II Loci CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/patient-hla-class-ii | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientHLAClassIICS |

 
Class II HLA loci relevant to transplant matching. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientHLAClassIIVS](ValueSet-patient-hla-class-ii-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-hla-class-ii-cs",
  "url" : "http://example.org/fhir/CodeSystem/patient-hla-class-ii",
  "version" : "0.1.0",
  "name" : "PatientHLAClassIICS",
  "title" : "Patient HLA Class II Loci CodeSystem",
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
  "description" : "Class II HLA loci relevant to transplant matching.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "HLA-DR",
      "display" : "HLA-DR"
    },
    {
      "code" : "HLA-DP",
      "display" : "HLA-DP"
    },
    {
      "code" : "HLA-DQ",
      "display" : "HLA-DQ"
    }
  ]
}

```
