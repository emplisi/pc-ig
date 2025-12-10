# Patient HLA Class I Loci CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient HLA Class I Loci CodeSystem**

## CodeSystem: Patient HLA Class I Loci CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/patient-hla-class-i | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientHLAClassICS |

 
Class I HLA loci relevant to transplant matching. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PatientHLAClassIVS](ValueSet-patient-hla-class-i-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patient-hla-class-i-cs",
  "url" : "http://example.org/fhir/CodeSystem/patient-hla-class-i",
  "version" : "0.1.0",
  "name" : "PatientHLAClassICS",
  "title" : "Patient HLA Class I Loci CodeSystem",
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
  "description" : "Class I HLA loci relevant to transplant matching.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "HLA-A",
      "display" : "HLA-A"
    },
    {
      "code" : "HLA-B",
      "display" : "HLA-B"
    },
    {
      "code" : "HLA-C",
      "display" : "HLA-C"
    }
  ]
}

```
