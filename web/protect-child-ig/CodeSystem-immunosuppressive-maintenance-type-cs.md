# Immunosuppressive Maintenance to Patient Type CodeSystem - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressive Maintenance to Patient Type CodeSystem**

## CodeSystem: Immunosuppressive Maintenance to Patient Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/immunosuppressive-maintenance-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressiveMaintenanceTypeCS |

 
Type of immunosuppressive maintenance record. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImmunosuppressiveMaintenanceTypeVS](ValueSet-immunosuppressive-maintenance-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "immunosuppressive-maintenance-type-cs",
  "url" : "http://example.org/fhir/CodeSystem/immunosuppressive-maintenance-type",
  "version" : "0.1.0",
  "name" : "ImmunosuppressiveMaintenanceTypeCS",
  "title" : "Immunosuppressive Maintenance to Patient Type CodeSystem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Type of immunosuppressive maintenance record.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "maintenance-to-patient",
      "display" : "Immunosuppressive maintenance therapy to patient"
    }
  ]
}

```
