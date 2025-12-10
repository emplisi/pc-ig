# Instrumental Investigation Name - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instrumental Investigation Name**

## CodeSystem: Instrumental Investigation Name (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/CodeSystem/instrumental-investigation-name | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:InstrumentalInvestigationNameCS |

 
Types of instrumental investigation tests conducted. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [InstrumentalInvestigationNameVS](ValueSet-instrumental-investigation-name-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "instrumental-investigation-name-cs",
  "url" : "http://example.org/fhir/CodeSystem/instrumental-investigation-name",
  "version" : "0.1.0",
  "name" : "InstrumentalInvestigationNameCS",
  "title" : "Instrumental Investigation Name",
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
  "description" : "Types of instrumental investigation tests conducted.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "718078008",
      "display" : "Liver doppler ultrasound"
    },
    {
      "code" : "4061009",
      "display" : "Abdominal CT scan"
    },
    {
      "code" : "4083230",
      "display" : "Abdominal MRI"
    },
    {
      "code" : "4194588",
      "display" : "MRCP"
    },
    {
      "code" : "37311324",
      "display" : "Brain MRI"
    },
    {
      "code" : "4169785",
      "display" : "AngioTC"
    },
    {
      "code" : "4299523",
      "display" : "Angiography"
    },
    {
      "code" : "4181917",
      "display" : "EEG"
    },
    {
      "code" : "36308175",
      "display" : "ECG"
    },
    {
      "code" : "4167052",
      "display" : "Kidney doppler ultrasound"
    },
    {
      "code" : "36713614",
      "display" : "Total body CT scan"
    },
    {
      "code" : "scintigraphy",
      "display" : "Scintigraphy"
    },
    {
      "code" : "mcug",
      "display" : "Micturating Cystourethrogram (MCUG)"
    },
    {
      "code" : "pet",
      "display" : "PET"
    }
  ]
}

```
