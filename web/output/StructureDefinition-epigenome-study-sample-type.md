# Sample type - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sample type**

## Extension: Sample type 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-type | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:EpigenomeStudySampleType |

Type of sample used in the epigenome study (Blood, Saliva, Other tissues).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Epigenome Study](StructureDefinition-epigenome-study.md)
* Examples for this Extension: [Basic/epigenome-study-example-1](Basic-epigenome-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/epigenome-study-sample-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-epigenome-study-sample-type.csv), [Excel](StructureDefinition-epigenome-study-sample-type.xlsx), [Schematron](StructureDefinition-epigenome-study-sample-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "epigenome-study-sample-type",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-type",
  "version" : "0.1.0",
  "name" : "EpigenomeStudySampleType",
  "title" : "Sample type",
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
  "description" : "Type of sample used in the epigenome study (Blood, Saliva, Other tissues).",
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
        "short" : "Sample type",
        "definition" : "Type of sample used in the epigenome study (Blood, Saliva, Other tissues)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-sample-type"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/biosample-tissue-type-vs"
        }
      }
    ]
  }
}

```
