# Other intraoperative complications (free text) - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Other intraoperative complications (free text)**

## Extension: Other intraoperative complications (free text) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-intraoperative-complications-other | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TransplantIntraoperativeComplicationsOther |

Specification of other types of complications during surgery (intraoperative_complications_other).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant](StructureDefinition-transplant.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant-intraoperative-complications-other)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant-intraoperative-complications-other.csv), [Excel](StructureDefinition-transplant-intraoperative-complications-other.xlsx), [Schematron](StructureDefinition-transplant-intraoperative-complications-other.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant-intraoperative-complications-other",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-intraoperative-complications-other",
  "version" : "0.1.0",
  "name" : "TransplantIntraoperativeComplicationsOther",
  "title" : "Other intraoperative complications (free text)",
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
  "description" : "Specification of other types of complications during surgery (intraoperative_complications_other).",
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
        "short" : "Other intraoperative complications (free text)",
        "definition" : "Specification of other types of complications during surgery (intraoperative_complications_other)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-intraoperative-complications-other"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
