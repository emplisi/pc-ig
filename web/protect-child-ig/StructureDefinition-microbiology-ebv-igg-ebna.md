# EBV serology IgG EBNA - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EBV serology IgG EBNA**

## Extension: EBV serology IgG EBNA 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-ebna | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MicrobiologyEBVIgGEBNA |

ebv_igg_ebna – presence of IgG antibodies against EBV Nuclear Antigen (EBNA); false=Negative, true=Positive.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbiology](StructureDefinition-microbiology.md)
* Examples for this Extension: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology-ebv-igg-ebna)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology-ebv-igg-ebna.csv), [Excel](StructureDefinition-microbiology-ebv-igg-ebna.xlsx), [Schematron](StructureDefinition-microbiology-ebv-igg-ebna.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology-ebv-igg-ebna",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-ebna",
  "version" : "0.1.0",
  "name" : "MicrobiologyEBVIgGEBNA",
  "title" : "EBV serology IgG EBNA",
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
  "description" : "ebv_igg_ebna – presence of IgG antibodies against EBV Nuclear Antigen (EBNA); false=Negative, true=Positive.",
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
        "short" : "EBV serology IgG EBNA",
        "definition" : "ebv_igg_ebna – presence of IgG antibodies against EBV Nuclear Antigen (EBNA); false=Negative, true=Positive."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-ebna"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
