# Pre-transplant Medication - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pre-transplant Medication**

## Resource Profile: Pre-transplant Medication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedication |

 
Pre-transplant medication record aligned with the pre_medication table. 

**Usages:**

* Refer to this Profile: [Pre-medication ID relationship](StructureDefinition-outcome-pre-medication-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Pre-medication ID relationship](StructureDefinition-visit-pre-medication-ref.md)
* Examples for this Profile: [Basic/pre-medication-example-1](Basic-pre-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/pre-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pre-medication.csv), [Excel](StructureDefinition-pre-medication.xlsx), [Schematron](StructureDefinition-pre-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pre-medication",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication",
  "version" : "0.1.0",
  "name" : "PreMedication",
  "title" : "Pre-transplant Medication",
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
  "description" : "Pre-transplant medication record aligned with the pre_medication table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Basic",
        "path" : "Basic"
      },
      {
        "id" : "Basic.extension",
        "path" : "Basic.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Basic.extension:patient_id",
        "path" : "Basic.extension",
        "sliceName" : "patient_id",
        "short" : "patient_id – reference to PatientTransplant (recipient)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:antihypertensive_treatment",
        "path" : "Basic.extension",
        "sliceName" : "antihypertensive_treatment",
        "short" : "antihypertensive_treatment – antihypertensive drug used pre-transplant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antihypertensive-treatment"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:rituximab",
        "path" : "Basic.extension",
        "sliceName" : "rituximab",
        "short" : "rituximab – any rituximab given pre-transplant (Yes/No)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-rituximab"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:antiviral_phrophylaxis",
        "path" : "Basic.extension",
        "sliceName" : "antiviral_phrophylaxis",
        "short" : "antiviral_phrophylaxis – antiviral prophylaxis given (Kidney only)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antiviral-phrophylaxis"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:other_medications",
        "path" : "Basic.extension",
        "sliceName" : "other_medications",
        "short" : "other_medications – other relevant pre-transplant medications (free text)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-other-medications"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "pre_medication_id – identifier for this pre-medication record",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/pre-medication-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Type of pre-medication record",
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BasicResourceType"
            }
          ],
          "strength" : "required",
          "description" : "Codes for identifying types of resources not yet defined by FHIR.",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/pre-medication-type-vs"
        }
      }
    ]
  }
}

```
