# Patient maximum PRA - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient maximum PRA**

## Extension: Patient maximum PRA 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-max-pra | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientMaxPRA |

Maximum panel-reactive antibody (PRA) percentage prior to transplant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Recipient](StructureDefinition-patient-transplant.md)
* Examples for this Extension: [Patient/ExamplePatientTransplant1](Patient-ExamplePatientTransplant1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-max-pra)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-max-pra.csv), [Excel](StructureDefinition-patient-max-pra.xlsx), [Schematron](StructureDefinition-patient-max-pra.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-max-pra",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-max-pra",
  "version" : "0.1.0",
  "name" : "PatientMaxPRA",
  "title" : "Patient maximum PRA",
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
  "description" : "Maximum panel-reactive antibody (PRA) percentage prior to transplant.",
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
        "short" : "Patient maximum PRA",
        "definition" : "Maximum panel-reactive antibody (PRA) percentage prior to transplant."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-max-pra"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
