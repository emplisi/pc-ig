# Patient instrumental investigation ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient instrumental investigation ID relationship**

## Extension: Patient instrumental investigation ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VisitPatientInstrumentalInvestigationRef |

Reference to a patient instrumental investigation associated with this visit (pat_inst_inv_id).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Visit](StructureDefinition-visit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/visit-patient-instrumental-investigation-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-visit-patient-instrumental-investigation-ref.csv), [Excel](StructureDefinition-visit-patient-instrumental-investigation-ref.xlsx), [Schematron](StructureDefinition-visit-patient-instrumental-investigation-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visit-patient-instrumental-investigation-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref",
  "version" : "0.1.0",
  "name" : "VisitPatientInstrumentalInvestigationRef",
  "title" : "Patient instrumental investigation ID relationship",
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
  "description" : "Reference to a patient instrumental investigation associated with this visit (pat_inst_inv_id).",
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
        "short" : "Patient instrumental investigation ID relationship",
        "definition" : "Reference to a patient instrumental investigation associated with this visit (pat_inst_inv_id)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-patient-instrumental-investigation-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation"
            ]
          }
        ]
      }
    ]
  }
}

```
