# Patient ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient ID relationship**

## Extension: Patient ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-patient-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MicrobiologyPatientRef |

patient_id – reference to the transplant recipient associated with this microbiology record.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbiology](StructureDefinition-microbiology.md)
* Examples for this Extension: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology-patient-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology-patient-ref.csv), [Excel](StructureDefinition-microbiology-patient-ref.xlsx), [Schematron](StructureDefinition-microbiology-patient-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology-patient-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-patient-ref",
  "version" : "0.1.0",
  "name" : "MicrobiologyPatientRef",
  "title" : "Patient ID relationship",
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
  "description" : "patient_id – reference to the transplant recipient associated with this microbiology record.",
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
        "short" : "Patient ID relationship",
        "definition" : "patient_id – reference to the transplant recipient associated with this microbiology record."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-patient-ref"
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
