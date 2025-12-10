# Lab test reference - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lab test reference**

## Extension: Lab test reference 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-labtest-ref | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:LabResultLabTestRef |

lab_test_id – reference to the lab test definition (LabTest catalog row) associated with this lab result.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Lab Result](StructureDefinition-lab-result-observation.md)
* Examples for this Extension: [Observation/lab-result-observation-example-1](Observation-lab-result-observation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/lab-result-labtest-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lab-result-labtest-ref.csv), [Excel](StructureDefinition-lab-result-labtest-ref.xlsx), [Schematron](StructureDefinition-lab-result-labtest-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lab-result-labtest-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-labtest-ref",
  "version" : "0.1.0",
  "name" : "LabResultLabTestRef",
  "title" : "Lab test reference",
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
  "description" : "lab_test_id – reference to the lab test definition (LabTest catalog row) associated with this lab result.",
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
      "expression" : "Observation"
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
        "short" : "Lab test reference",
        "definition" : "lab_test_id – reference to the lab test definition (LabTest catalog row) associated with this lab result."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-labtest-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Lab test definition (catalog row)",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-test"
            ]
          }
        ]
      }
    ]
  }
}

```
