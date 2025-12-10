# Sample ID - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sample ID**

## Extension: Sample ID 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-id | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:EpigenomeStudySampleId |

Sample identifier used in the epigenome study.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Epigenome Study](StructureDefinition-epigenome-study.md)
* Examples for this Extension: [Basic/epigenome-study-example-1](Basic-epigenome-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/epigenome-study-sample-id)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-epigenome-study-sample-id.csv), [Excel](StructureDefinition-epigenome-study-sample-id.xlsx), [Schematron](StructureDefinition-epigenome-study-sample-id.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "epigenome-study-sample-id",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-id",
  "version" : "0.1.0",
  "name" : "EpigenomeStudySampleId",
  "title" : "Sample ID",
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
  "description" : "Sample identifier used in the epigenome study.",
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
        "short" : "Sample ID",
        "definition" : "Sample identifier used in the epigenome study."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-id"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
