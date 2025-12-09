# Reference Genome Build CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reference Genome Build CodeSystem**

## CodeSystem: Reference Genome Build CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/reference-genome-build | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ReferenceGenomeBuildCS |

 
Reference genome build names. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ReferenceGenomeBuildVS](ValueSet-reference-genome-build-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "reference-genome-build-cs",
  "url" : "http://example.org/fhir/CodeSystem/reference-genome-build",
  "version" : "0.1.0",
  "name" : "ReferenceGenomeBuildCS",
  "title" : "Reference Genome Build CodeSystem",
  "status" : "draft",
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
  "description" : "Reference genome build names.",
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "GRCh38",
      "display" : "GRCh38"
    },
    {
      "code" : "GRCh37",
      "display" : "GRCh37"
    }
  ]
}

```
