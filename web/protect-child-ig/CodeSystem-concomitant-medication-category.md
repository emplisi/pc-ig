# Concomitant Medication Category - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Concomitant Medication Category**

## CodeSystem: Concomitant Medication Category 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/concomitant-medication-category | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ConcomitantMedicationCategory |

 
Categories of concomitant medications. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ConcomitantMedicationCategoryVS](ValueSet-concomitant-medication-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "concomitant-medication-category",
  "url" : "http://example.org/fhir/CodeSystem/concomitant-medication-category",
  "version" : "0.1.0",
  "name" : "ConcomitantMedicationCategory",
  "title" : "Concomitant Medication Category",
  "status" : "draft",
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
  "description" : "Categories of concomitant medications.",
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "antihypertensive",
      "display" : "Antihypertensive treatment"
    },
    {
      "code" : "antiviral-prophylaxis",
      "display" : "Antiviral prophylaxis"
    },
    {
      "code" : "antibiotic-prophylaxis",
      "display" : "Antibiotic prophylaxis"
    },
    {
      "code" : "heparin-therapy-prophylaxis",
      "display" : "Heparin therapy/prophylaxis"
    },
    {
      "code" : "aspirin-therapy-prophylaxis",
      "display" : "Aspirin therapy/prophylaxis"
    },
    {
      "code" : "ursodeoxycholic-acid",
      "display" : "Ursodeoxycholic acid"
    }
  ]
}

```
