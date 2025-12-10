# Blood EBV-DNA - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood EBV-DNA**

## Extension: Blood EBV-DNA 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MicrobiologyEBVDNA |

ebv_dna – EBV nucleic acid test result (quantitative, float).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbiology](StructureDefinition-microbiology.md)
* Examples for this Extension: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology-ebv-dna)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology-ebv-dna.csv), [Excel](StructureDefinition-microbiology-ebv-dna.xlsx), [Schematron](StructureDefinition-microbiology-ebv-dna.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology-ebv-dna",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna",
  "version" : "0.1.0",
  "name" : "MicrobiologyEBVDNA",
  "title" : "Blood EBV-DNA",
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
  "description" : "ebv_dna – EBV nucleic acid test result (quantitative, float).",
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
        "short" : "Blood EBV-DNA",
        "definition" : "ebv_dna – EBV nucleic acid test result (quantitative, float).",
        "constraint" : [
          {
            "key" : "microbiology-ebv-dna-nonnegative",
            "severity" : "error",
            "human" : "EBV-DNA value must be zero or positive.",
            "expression" : "valueDecimal >= 0",
            "source" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      }
    ]
  }
}

```
