# Patient ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient ID relationship**

## Extension: Patient ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-patient-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MarkerImmuneFunctionPatientRef |

Reference to the patient for whom the immune function markers are recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Marker of Immune Function](StructureDefinition-marker-immune-function.md)
* Examples for this Extension: [Basic/mark-imm-func-example-1](Basic-mark-imm-func-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/marker-immune-function-patient-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-marker-immune-function-patient-ref.csv), [Excel](StructureDefinition-marker-immune-function-patient-ref.xlsx), [Schematron](StructureDefinition-marker-immune-function-patient-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "marker-immune-function-patient-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-patient-ref",
  "version" : "0.1.0",
  "name" : "MarkerImmuneFunctionPatientRef",
  "title" : "Patient ID relationship",
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
  "description" : "Reference to the patient for whom the immune function markers are recorded.",
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
        "short" : "Patient ID relationship",
        "definition" : "Reference to the patient for whom the immune function markers are recorded."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-patient-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ]
      }
    ]
  }
}

```
