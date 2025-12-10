# Liver disease diagnosis (free text) - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Liver disease diagnosis (free text)**

## Extension: Liver disease diagnosis (free text) 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-extra | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PatientLiverDiseaseExtra |

Additional description or free-text for the liver disease diagnosis.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Recipient](StructureDefinition-patient-transplant.md)
* Examples for this Extension: [Patient/ExamplePatientTransplant1](Patient-ExamplePatientTransplant1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-liver-disease-extra)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-liver-disease-extra.csv), [Excel](StructureDefinition-patient-liver-disease-extra.xlsx), [Schematron](StructureDefinition-patient-liver-disease-extra.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-liver-disease-extra",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-extra",
  "version" : "0.1.0",
  "name" : "PatientLiverDiseaseExtra",
  "title" : "Liver disease diagnosis (free text)",
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
  "description" : "Additional description or free-text for the liver disease diagnosis.",
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
        "short" : "Liver disease diagnosis (free text)",
        "definition" : "Additional description or free-text for the liver disease diagnosis."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-liver-disease-extra"
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
