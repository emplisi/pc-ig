# Laboratory DiagnosticReport - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Laboratory DiagnosticReport**

## Resource Profile: Laboratory DiagnosticReport 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:LabReport |

 
Laboratory report grouping one or more lab result observations for a transplant recipient. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [DiagnosticReport/lab-report-example-1](DiagnosticReport-lab-report-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/lab-report)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lab-report.csv), [Excel](StructureDefinition-lab-report.xlsx), [Schematron](StructureDefinition-lab-report.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lab-report",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report",
  "version" : "0.1.0",
  "name" : "LabReport",
  "title" : "Laboratory DiagnosticReport",
  "status" : "draft",
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Laboratory report grouping one or more lab result observations for a transplant recipient.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport",
        "path" : "DiagnosticReport"
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "short" : "Status of the laboratory report",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.category.coding",
        "path" : "DiagnosticReport.category.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "DiagnosticReport.category.coding.system",
        "path" : "DiagnosticReport.category.coding.system",
        "min" : 1,
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0074"
      },
      {
        "id" : "DiagnosticReport.category.coding.code",
        "path" : "DiagnosticReport.category.coding.code",
        "min" : 1,
        "fixedCode" : "LAB"
      },
      {
        "id" : "DiagnosticReport.category.coding.display",
        "path" : "DiagnosticReport.category.coding.display",
        "patternString" : "Laboratory"
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.code.coding",
        "path" : "DiagnosticReport.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "DiagnosticReport.code.coding.system",
        "path" : "DiagnosticReport.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "DiagnosticReport.code.coding.code",
        "path" : "DiagnosticReport.code.coding.code",
        "min" : 1,
        "patternCode" : "11502-2"
      },
      {
        "id" : "DiagnosticReport.code.coding.display",
        "path" : "DiagnosticReport.code.coding.display",
        "patternString" : "Laboratory report"
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "Transplant recipient",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "References one or more LabResultObservation resources",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
