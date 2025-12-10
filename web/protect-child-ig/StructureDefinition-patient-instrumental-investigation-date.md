# Date of instrumental investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Date of instrumental investigation**

## Extension: Date of instrumental investigation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-date | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PatientInstrumentalInvestigationDate |

Date on which the instrumental investigation was performed.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient Instrumental Investigation](StructureDefinition-patient-instrumental-investigation.md)
* Examples for this Extension: [Observation/patient-instrumental-investigation-example-1](Observation-patient-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-instrumental-investigation-date)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-instrumental-investigation-date.csv), [Excel](StructureDefinition-patient-instrumental-investigation-date.xlsx), [Schematron](StructureDefinition-patient-instrumental-investigation-date.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-instrumental-investigation-date",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-date",
  "version" : "0.1.0",
  "name" : "PatientInstrumentalInvestigationDate",
  "title" : "Date of instrumental investigation",
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
  "description" : "Date on which the instrumental investigation was performed.",
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
        "short" : "Date of instrumental investigation",
        "definition" : "Date on which the instrumental investigation was performed."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-date"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "date"
          }
        ]
      }
    ]
  }
}

```
