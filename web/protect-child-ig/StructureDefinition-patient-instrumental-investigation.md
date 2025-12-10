# Patient Instrumental Investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Instrumental Investigation**

## Resource Profile: Patient Instrumental Investigation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientInstrumentalInvestigation |

 
Instrumental investigation performed on a transplant patient, aligned with the patient_instrumental_investigation table. 

**Usages:**

* Refer to this Profile: [Patient instrumental investigation ID relationship](StructureDefinition-outcome-patient-instrumental-investigation-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Patient instrumental investigation ID relationship](StructureDefinition-visit-patient-instrumental-investigation-ref.md)
* Examples for this Profile: [Observation/patient-instrumental-investigation-example-1](Observation-patient-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-instrumental-investigation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-instrumental-investigation.csv), [Excel](StructureDefinition-patient-instrumental-investigation.xlsx), [Schematron](StructureDefinition-patient-instrumental-investigation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-instrumental-investigation",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation",
  "version" : "0.1.0",
  "name" : "PatientInstrumentalInvestigation",
  "title" : "Patient Instrumental Investigation",
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
  "description" : "Instrumental investigation performed on a transplant patient, aligned with the patient_instrumental_investigation table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "min" : 3
      },
      {
        "id" : "Observation.extension:patient_id",
        "path" : "Observation.extension",
        "sliceName" : "patient_id",
        "short" : "patient_id – reference to PatientTransplant",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:instrumental_investigation_id",
        "path" : "Observation.extension",
        "sliceName" : "instrumental_investigation_id",
        "short" : "instrumental_investigation_id – reference to InstrumentalInvestigation",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-instrument-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:result",
        "path" : "Observation.extension",
        "sliceName" : "result",
        "short" : "result – Normal / Abnormal",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-result"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:date",
        "path" : "Observation.extension",
        "sliceName" : "date",
        "short" : "Date of the instrumental investigation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "pat_inst_inv_id – identifier for the patient instrumental investigation record",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier.system",
        "path" : "Observation.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/patient-instrumental-investigation-id"
      },
      {
        "id" : "Observation.identifier.value",
        "path" : "Observation.identifier.value",
        "min" : 1
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.text",
        "path" : "Observation.code.text",
        "patternString" : "Patient instrumental investigation"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Optional subject; use patient_id extension for exact DM linkage.",
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
