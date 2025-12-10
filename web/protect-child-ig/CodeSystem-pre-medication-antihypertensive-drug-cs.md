# Pre-medication Antihypertensive Drug CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pre-medication Antihypertensive Drug CodeSystem**

## CodeSystem: Pre-medication Antihypertensive Drug CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/pre-medication-antihypertensive-drug | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedicationAntihypertensiveDrugCS |

 
Antihypertensive drugs used as pre-transplant medication. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PreMedicationAntihypertensiveDrugVS](ValueSet-pre-medication-antihypertensive-drug-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "pre-medication-antihypertensive-drug-cs",
  "url" : "http://example.org/fhir/CodeSystem/pre-medication-antihypertensive-drug",
  "version" : "0.1.0",
  "name" : "PreMedicationAntihypertensiveDrugCS",
  "title" : "Pre-medication Antihypertensive Drug CodeSystem",
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
  "description" : "Antihypertensive drugs used as pre-transplant medication.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "1332418",
      "display" : "Amlodipine"
    },
    {
      "code" : "1318853",
      "display" : "Nifedipine"
    },
    {
      "code" : "1340128",
      "display" : "Captopril"
    },
    {
      "code" : "1314002",
      "display" : "Atenolol"
    },
    {
      "code" : "1346823",
      "display" : "Carvedilol"
    },
    {
      "code" : "1353766",
      "display" : "Propranolol"
    },
    {
      "code" : "1309068",
      "display" : "Minoxidil"
    },
    {
      "code" : "1398937",
      "display" : "Clonidine"
    },
    {
      "code" : "1363053",
      "display" : "Doxazosin"
    }
  ]
}

```
