# Genomic test ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Genomic test ID relationship**

## Extension: Genomic test ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-genomic-test-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TargetRegionGenomicTestRef |

Reference to the genomic test (platform) containing this target region.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Target Region](StructureDefinition-target-region.md)
* Examples for this Extension: [Basic/target-region-example-1](Basic-target-region-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/target-region-genomic-test-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-target-region-genomic-test-ref.csv), [Excel](StructureDefinition-target-region-genomic-test-ref.xlsx), [Schematron](StructureDefinition-target-region-genomic-test-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "target-region-genomic-test-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-genomic-test-ref",
  "version" : "0.1.0",
  "name" : "TargetRegionGenomicTestRef",
  "title" : "Genomic test ID relationship",
  "status" : "draft",
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
  "description" : "Reference to the genomic test (platform) containing this target region.",
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
        "short" : "Genomic test ID relationship",
        "definition" : "Reference to the genomic test (platform) containing this target region."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-genomic-test-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test"
            ]
          }
        ]
      }
    ]
  }
}

```
