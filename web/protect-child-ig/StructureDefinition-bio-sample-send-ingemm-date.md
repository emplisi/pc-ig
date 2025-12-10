# Sample send to INGEMM date - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sample send to INGEMM date**

## Extension: Sample send to INGEMM date 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-send-ingemm-date | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BioSampleSendIngemmDate |

send_ingemm_date – date when the sample was sent to INGEMM.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Biological Sample](StructureDefinition-biosample.md)
* Examples for this Extension: [Specimen/biosample-example-1](Specimen-biosample-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/bio-sample-send-ingemm-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bio-sample-send-ingemm-date.csv), [Excel](StructureDefinition-bio-sample-send-ingemm-date.xlsx), [Schematron](StructureDefinition-bio-sample-send-ingemm-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bio-sample-send-ingemm-date",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-send-ingemm-date",
  "version" : "0.1.0",
  "name" : "BioSampleSendIngemmDate",
  "title" : "Sample send to INGEMM date",
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
  "description" : "send_ingemm_date – date when the sample was sent to INGEMM.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Element"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Sample send to INGEMM date",
        "definition" : "send_ingemm_date – date when the sample was sent to INGEMM."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-send-ingemm-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
