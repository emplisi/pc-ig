# Patient Rh factor - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Rh factor**

## Extension: Patient Rh factor 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-rh-factor | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PatientRhFactor |

Rh factor of the transplant recipient.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Recipient](StructureDefinition-patient-transplant.md)
* Examples for this Extension: [Patient/ExamplePatientTransplant1](Patient-ExamplePatientTransplant1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-rh-factor)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-rh-factor.csv), [Excel](StructureDefinition-patient-rh-factor.xlsx), [Schematron](StructureDefinition-patient-rh-factor.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-rh-factor",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-rh-factor",
  "version" : "0.1.0",
  "name" : "PatientRhFactor",
  "title" : "Patient Rh factor",
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
  "description" : "Rh factor of the transplant recipient.",
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
        "short" : "Patient Rh factor",
        "definition" : "Rh factor of the transplant recipient."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-rh-factor"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-rh-factor-vs"
        }
      }
    ]
  }
}

```
