# EBV serology IgG anti-VCA - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EBV serology IgG anti-VCA**

## Extension: EBV serology IgG anti-VCA 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-anti-vca | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:MicrobiologyEBVIgGAntiVCA |

ebv_igg_anti_vca – presence of IgG antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbiology](StructureDefinition-microbiology.md)
* Examples for this Extension: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology-ebv-igg-anti-vca)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology-ebv-igg-anti-vca.csv), [Excel](StructureDefinition-microbiology-ebv-igg-anti-vca.xlsx), [Schematron](StructureDefinition-microbiology-ebv-igg-anti-vca.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology-ebv-igg-anti-vca",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-anti-vca",
  "version" : "0.1.0",
  "name" : "MicrobiologyEBVIgGAntiVCA",
  "title" : "EBV serology IgG anti-VCA",
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
  "description" : "ebv_igg_anti_vca – presence of IgG antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive.",
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
        "short" : "EBV serology IgG anti-VCA",
        "definition" : "ebv_igg_anti_vca – presence of IgG antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-anti-vca"
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
