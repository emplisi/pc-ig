# Per target base cover x100 - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Per target base cover x100**

## Extension: Per target base cover x100 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:GenomicTestPerTargetBaseCover100x |

Percentage of selected bases covered at ≥100x.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Genomic Test](StructureDefinition-genomic-test.md)
* Examples for this Extension: [Basic/genomic-test-example-1](Basic-genomic-test-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/genomic-test-per-target-base-cover-100x)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-genomic-test-per-target-base-cover-100x.csv), [Excel](StructureDefinition-genomic-test-per-target-base-cover-100x.xlsx), [Schematron](StructureDefinition-genomic-test-per-target-base-cover-100x.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "genomic-test-per-target-base-cover-100x",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x",
  "version" : "0.1.0",
  "name" : "GenomicTestPerTargetBaseCover100x",
  "title" : "Per target base cover x100",
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
  "description" : "Percentage of selected bases covered at ≥100x.",
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
        "short" : "Per target base cover x100",
        "definition" : "Percentage of selected bases covered at ≥100x."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test-per-target-base-cover-100x"
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
