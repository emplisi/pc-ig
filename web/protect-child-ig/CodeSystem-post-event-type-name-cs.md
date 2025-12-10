# Post Event Type Name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Post Event Type Name**

## CodeSystem: Post Event Type Name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/post-event-type-name | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PostEventTypeNameCS |

 
Types of post-transplant events. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PostEventTypeNameVS](ValueSet-post-event-type-name-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "post-event-type-name-cs",
  "url" : "http://example.org/fhir/CodeSystem/post-event-type-name",
  "version" : "0.1.0",
  "name" : "PostEventTypeNameCS",
  "title" : "Post Event Type Name",
  "status" : "draft",
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
  "description" : "Types of post-transplant events.",
  "content" : "complete",
  "count" : 21,
  "concept" : [
    {
      "code" : "episodes-aki-after-ltx",
      "display" : "Episodes of AKI after LTx"
    },
    {
      "code" : "hypoxic-ischemic-after-pltx",
      "display" : "Hypoxic ischemic events after pLTx"
    },
    {
      "code" : "liver-rejection-banff",
      "display" : "Histological evidence of liver rejection based on Banff classification (IC/IF/C4d)"
    },
    {
      "code" : "intestinal-mmf-toxicity",
      "display" : "Histological evidence of intestinal MMF toxicity on intestinal biopsy"
    },
    {
      "code" : "dialysis-after-tx",
      "display" : "Dialysis after transplant (yes/no, start and stop date, type)"
    },
    {
      "code" : "tma-kidney-biopsy",
      "display" : "Histological evidence of Thrombotic Microangiopathy (TMA) on kidney biopsy"
    },
    {
      "code" : "cni-toxicity",
      "display" : "Histological evidence of CNI toxicity"
    },
    {
      "code" : "bkv-kidney-biopsy",
      "display" : "Histological evidence of BKV virus/ BKV-DNA on kidney biopsy/ BKV FISH on kidney biopsy"
    },
    {
      "code" : "mmf-related-enteropathy",
      "display" : "Histological evidence of MMF-related enteropathy"
    },
    {
      "code" : "regression-after-dose-change",
      "display" : "Regression of symptoms after suspension/dose reduction"
    },
    {
      "code" : "other-organ-damage",
      "display" : "Other organ damage"
    },
    {
      "code" : "alloimmunization",
      "display" : "Alloimmunization"
    },
    {
      "code" : "delayed-graft-function",
      "display" : "Delayed Graft function"
    },
    {
      "code" : "liver-rejection-episode-histology",
      "display" : "Liver rejection episode histology (histology (description, Banff category, immunohistochemistry/IF/C4d)"
    },
    {
      "code" : "previous-liver-rejections",
      "display" : "Previous liver rejections (Banff category, treatment)"
    },
    {
      "code" : "chronic-liver-rejection-histology",
      "display" : "Chronic liver rejection histology (description, Banff, category, IHC/IF/C4d)"
    },
    {
      "code" : "monoclonal-proliferation-biopsy",
      "display" : "Monoclonal proliferation on biopsy"
    },
    {
      "code" : "liver-replacement-therapy",
      "display" : "Liver replacement therapy (need for retransplantation)"
    },
    {
      "code" : "kidney-rejection-episode-histology",
      "display" : "Kidney rejection episode histology (description, Banff category, immunochemistry/if/c4D)"
    },
    {
      "code" : "previous-kidney-rejection",
      "display" : "Previous kidney rejection (Banff category, treatment)"
    },
    {
      "code" : "kidney-replacement-therapy",
      "display" : "Kidney replacement therapy (Need for retransplantation)"
    }
  ]
}

```
