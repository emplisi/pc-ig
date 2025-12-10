# Immunosuppressant Drug Type - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressant Drug Type**

## CodeSystem: Immunosuppressant Drug Type 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/immunosuppressant-drug-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressantDrugTypeCS |

 
Types of immunosuppressive drugs used in the transplant setting. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImmunosuppressantDrugTypeVS](ValueSet-immunosuppressant-drug-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "immunosuppressant-drug-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/immunosuppressant-drug-type",
  "version" : "0.1.0",
  "name" : "ImmunosuppressantDrugTypeCS",
  "title" : "Immunosuppressant Drug Type",
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
  "description" : "Types of immunosuppressive drugs used in the transplant setting.",
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "1506270",
      "display" : "Steroid (methylprednisolone)"
    },
    {
      "code" : "1551099",
      "display" : "Steroid (prednisone)"
    },
    {
      "code" : "cni-fk506",
      "display" : "CNI (FK506)"
    },
    {
      "code" : "cni-csa",
      "display" : "CNI (CsA)"
    },
    {
      "code" : "19003999",
      "display" : "MMF"
    },
    {
      "code" : "19038440",
      "display" : "Basiliximab"
    },
    {
      "code" : "35806359",
      "display" : "ATG"
    },
    {
      "code" : "19011440",
      "display" : "Everolimus"
    },
    {
      "code" : "19034726",
      "display" : "Sirolimus"
    }
  ]
}

```
