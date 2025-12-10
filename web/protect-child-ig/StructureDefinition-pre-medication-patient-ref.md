# Pre-medication patient reference - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pre-medication patient reference**

## Extension: Pre-medication patient reference 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-patient-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedicationPatientRef |

patient_id – reference to the transplant recipient for whom the pre-medication is recorded.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Pre-transplant Medication](StructureDefinition-pre-medication.md)
* Examples for this Extension: [Basic/pre-medication-example-1](Basic-pre-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/pre-medication-patient-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pre-medication-patient-ref.csv), [Excel](StructureDefinition-pre-medication-patient-ref.xlsx), [Schematron](StructureDefinition-pre-medication-patient-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pre-medication-patient-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-patient-ref",
  "version" : "0.1.0",
  "name" : "PreMedicationPatientRef",
  "title" : "Pre-medication patient reference",
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
  "description" : "patient_id – reference to the transplant recipient for whom the pre-medication is recorded.",
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
        "short" : "Pre-medication patient reference",
        "definition" : "patient_id – reference to the transplant recipient for whom the pre-medication is recorded."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-patient-ref"
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
