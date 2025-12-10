# Outcome Type Name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome Type Name**

## CodeSystem: Outcome Type Name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/outcome-type-name | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:OutcomeTypeNameCS |

 
Types of clinical outcomes after transplant. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OutcomeTypeNameVS](ValueSet-outcome-type-name-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "outcome-type-name-cs",
  "url" : "http://example.org/fhir/CodeSystem/outcome-type-name",
  "version" : "0.1.0",
  "name" : "OutcomeTypeNameCS",
  "title" : "Outcome Type Name",
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
  "description" : "Types of clinical outcomes after transplant.",
  "content" : "complete",
  "count" : 30,
  "concept" : [
    {
      "code" : "ebv-infection",
      "display" : "Epstein Barr Infection (Need more specific one)"
    },
    {
      "code" : "440032",
      "display" : "Cytomegalovirus Infection"
    },
    {
      "code" : "4265526",
      "display" : "BK Virus Infection"
    },
    {
      "code" : "45765696",
      "display" : "Renal Calcineurin Inhibitors Toxicity"
    },
    {
      "code" : "mycophenolate-toxicity",
      "display" : "Mycophenolate toxicity"
    },
    {
      "code" : "mtor-toxicity",
      "display" : "mTOR inhibitors toxicity"
    },
    {
      "code" : "321876",
      "display" : "Microangiopathy"
    },
    {
      "code" : "kidney-rejection-episode",
      "display" : "Kidney rejection episode"
    },
    {
      "code" : "4341657",
      "display" : "Liver rejection episode"
    },
    {
      "code" : "198185",
      "display" : "Chronic renal failure after pLTx"
    },
    {
      "code" : "4267417",
      "display" : "Liver Graft fibrosis"
    },
    {
      "code" : "4064161",
      "display" : "Cirrhosis of Liver"
    },
    {
      "code" : "chronic-liver-failure",
      "display" : "Chronic liver failure (liver graft fibrosis and cirrhosis)"
    },
    {
      "code" : "4198610",
      "display" : "Chronic liver rejection"
    },
    {
      "code" : "435514",
      "display" : "Chronic Kidney Rejection"
    },
    {
      "code" : "ptld",
      "display" : "Post-transplant lymphoproliferative disease (PTLD)"
    },
    {
      "code" : "316866",
      "display" : "High Blood pressure"
    },
    {
      "code" : "35817874",
      "display" : "Diabetes"
    },
    {
      "code" : "alloimmunization",
      "display" : "Alloimmunization"
    },
    {
      "code" : "4223098",
      "display" : "Hepatic artery thrombosis"
    },
    {
      "code" : "biliary-complications",
      "display" : "Billiary complications"
    },
    {
      "code" : "urological-complications",
      "display" : "Urological Complications"
    },
    {
      "code" : "mortality",
      "display" : "Mortality"
    },
    {
      "code" : "graft-survival",
      "display" : "Graft survival"
    },
    {
      "code" : "liver-primary-nonfunction",
      "display" : "Liver primary nonfunction"
    },
    {
      "code" : "liver-early-allograft-dysfunction",
      "display" : "Liver early allograft dysfunction"
    },
    {
      "code" : "kidney-primary-nonfunction",
      "display" : "Kidney primary nonfunction"
    },
    {
      "code" : "delayed-kidney-graft-function",
      "display" : "Delayed kidney graft function"
    },
    {
      "code" : "42872891",
      "display" : "Posterior reversible encelopathy (PRES)"
    },
    {
      "code" : "relapse-primary-immunomediated",
      "display" : "Relapse of primary immunomediated disease"
    }
  ]
}

```
