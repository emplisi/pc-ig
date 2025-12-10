# Detection p-value - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Detection p-value**

## Extension: Detection p-value 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-detection-p-value | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MethylomicStudyDetectionPValue |

Detection p-value for the methylation measurement.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Methylomic Study](StructureDefinition-methylomic-study.md)
* Examples for this Extension: [Basic/methylomic-study-example-1](Basic-methylomic-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/methylomic-study-detection-p-value)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-methylomic-study-detection-p-value.csv), [Excel](StructureDefinition-methylomic-study-detection-p-value.xlsx), [Schematron](StructureDefinition-methylomic-study-detection-p-value.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "methylomic-study-detection-p-value",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-detection-p-value",
  "version" : "0.1.0",
  "name" : "MethylomicStudyDetectionPValue",
  "title" : "Detection p-value",
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
  "description" : "Detection p-value for the methylation measurement.",
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
        "short" : "Detection p-value",
        "definition" : "Detection p-value for the methylation measurement."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study-detection-p-value"
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
