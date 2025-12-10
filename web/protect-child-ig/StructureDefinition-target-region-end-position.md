# End position - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **End position**

## Extension: End position 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-end-position | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:TargetRegionEndPosition |

End position of the target region (genomic coordinate).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Target Region](StructureDefinition-target-region.md)
* Examples for this Extension: [Basic/target-region-example-1](Basic-target-region-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/target-region-end-position)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-target-region-end-position.csv), [Excel](StructureDefinition-target-region-end-position.xlsx), [Schematron](StructureDefinition-target-region-end-position.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "target-region-end-position",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-end-position",
  "version" : "0.1.0",
  "name" : "TargetRegionEndPosition",
  "title" : "End position",
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
  "description" : "End position of the target region (genomic coordinate).",
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
        "short" : "End position",
        "definition" : "End position of the target region (genomic coordinate)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region-end-position"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      }
    ]
  }
}

```
