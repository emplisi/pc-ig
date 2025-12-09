# Instrumental investigation ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instrumental investigation ID relationship**

## Extension: Instrumental investigation ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-instrument-ref | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PatientInstrumentalInvestigationInstrumentRef |

instrumental_investigation_id – reference to the catalogue entry describing the test performed.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Patient Instrumental Investigation](StructureDefinition-patient-instrumental-investigation.md)
* Examples for this Extension: [Observation/patient-instrumental-investigation-example-1](Observation-patient-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-instrumental-investigation-instrument-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-instrumental-investigation-instrument-ref.csv), [Excel](StructureDefinition-patient-instrumental-investigation-instrument-ref.xlsx), [Schematron](StructureDefinition-patient-instrumental-investigation-instrument-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-instrumental-investigation-instrument-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-instrument-ref",
  "version" : "0.1.0",
  "name" : "PatientInstrumentalInvestigationInstrumentRef",
  "title" : "Instrumental investigation ID relationship",
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
  "description" : "instrumental_investigation_id – reference to the catalogue entry describing the test performed.",
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
        "short" : "Instrumental investigation ID relationship",
        "definition" : "instrumental_investigation_id – reference to the catalogue entry describing the test performed."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation-instrument-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation"
            ]
          }
        ]
      }
    ]
  }
}

```
