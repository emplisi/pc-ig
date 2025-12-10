# Other pre-transplant medications - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Other pre-transplant medications**

## Extension: Other pre-transplant medications 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-other-medications | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PreMedicationOtherMedications |

other_medications – any other relevant pre-transplant medications.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Pre-transplant Medication](StructureDefinition-pre-medication.md)
* Examples for this Extension: [Basic/pre-medication-example-1](Basic-pre-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/pre-medication-other-medications)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pre-medication-other-medications.csv), [Excel](StructureDefinition-pre-medication-other-medications.xlsx), [Schematron](StructureDefinition-pre-medication-other-medications.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pre-medication-other-medications",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-other-medications",
  "version" : "0.1.0",
  "name" : "PreMedicationOtherMedications",
  "title" : "Other pre-transplant medications",
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
  "description" : "other_medications – any other relevant pre-transplant medications.",
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
        "short" : "Other pre-transplant medications",
        "definition" : "other_medications – any other relevant pre-transplant medications."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-other-medications"
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
