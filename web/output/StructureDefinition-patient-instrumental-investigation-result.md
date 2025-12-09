# Result of the instrumental investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Result of the instrumental investigation**

## Extension: Result of the instrumental investigation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-result | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PatientInstrumentalInvestigationResult |

result – result of the instrumental investigation test conducted (Normal / Abnormal).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient Instrumental Investigation](StructureDefinition-patient-instrumental-investigation.md)
* Examples for this Extension: [Observation/patient-instrumental-investigation-example-1](Observation-patient-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-instrumental-investigation-result)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-instrumental-investigation-result.csv), [Excel](StructureDefinition-patient-instrumental-investigation-result.xlsx), [Schematron](StructureDefinition-patient-instrumental-investigation-result.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-instrumental-investigation-result",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-result",
  "version" : "0.1.0",
  "name" : "PatientInstrumentalInvestigationResult",
  "title" : "Result of the instrumental investigation",
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
  "description" : "result – result of the instrumental investigation test conducted (Normal / Abnormal).",
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
        "short" : "Result of the instrumental investigation",
        "definition" : "result – result of the instrumental investigation test conducted (Normal / Abnormal)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-result"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-instrumental-investigation-result-vs"
        }
      }
    ]
  }
}

```
