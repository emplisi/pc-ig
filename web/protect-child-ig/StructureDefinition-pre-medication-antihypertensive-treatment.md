# Antihypertensive treatment - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antihypertensive treatment**

## Extension: Antihypertensive treatment 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antihypertensive-treatment | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PreMedicationAntihypertensiveTreatment |

antihypertensive_treatment – blood-pressure–lowering drug(s) used pre-transplant.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Pre-transplant Medication](StructureDefinition-pre-medication.md)
* Examples for this Extension: [Basic/pre-medication-example-1](Basic-pre-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/pre-medication-antihypertensive-treatment)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pre-medication-antihypertensive-treatment.csv), [Excel](StructureDefinition-pre-medication-antihypertensive-treatment.xlsx), [Schematron](StructureDefinition-pre-medication-antihypertensive-treatment.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pre-medication-antihypertensive-treatment",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antihypertensive-treatment",
  "version" : "0.1.0",
  "name" : "PreMedicationAntihypertensiveTreatment",
  "title" : "Antihypertensive treatment",
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
  "description" : "antihypertensive_treatment – blood-pressure–lowering drug(s) used pre-transplant.",
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
        "short" : "Antihypertensive treatment",
        "definition" : "antihypertensive_treatment – blood-pressure–lowering drug(s) used pre-transplant."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antihypertensive-treatment"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/pre-medication-antihypertensive-drug-vs"
        }
      }
    ]
  }
}

```
