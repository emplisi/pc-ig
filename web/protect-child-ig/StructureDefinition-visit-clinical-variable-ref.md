# Clinical variable ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Clinical variable ID relationship**

## Extension: Clinical variable ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VisitClinicalVariableRef |

Reference to clinical variables recorded at this visit (clinical_variable_id).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Visit](StructureDefinition-visit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/visit-clinical-variable-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-visit-clinical-variable-ref.csv), [Excel](StructureDefinition-visit-clinical-variable-ref.xlsx), [Schematron](StructureDefinition-visit-clinical-variable-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visit-clinical-variable-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref",
  "version" : "0.1.0",
  "name" : "VisitClinicalVariableRef",
  "title" : "Clinical variable ID relationship",
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
  "description" : "Reference to clinical variables recorded at this visit (clinical_variable_id).",
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
        "short" : "Clinical variable ID relationship",
        "definition" : "Reference to clinical variables recorded at this visit (clinical_variable_id)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-clinical-variable-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable"
            ]
          }
        ]
      }
    ]
  }
}

```
