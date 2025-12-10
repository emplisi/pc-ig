# Antiviral prophylaxis pre-medication - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiviral prophylaxis pre-medication**

## Extension: Antiviral prophylaxis pre-medication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antiviral-phrophylaxis | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PreMedicationAntiviralPhrophylaxis |

antiviral_phrophylaxis – preventive antiviral medication(s) given to reduce risk of viral infection or reactivation (Kidney only).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Pre-transplant Medication](StructureDefinition-pre-medication.md)
* Examples for this Extension: [Basic/pre-medication-example-1](Basic-pre-medication-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/pre-medication-antiviral-phrophylaxis)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-pre-medication-antiviral-phrophylaxis.csv), [Excel](StructureDefinition-pre-medication-antiviral-phrophylaxis.xlsx), [Schematron](StructureDefinition-pre-medication-antiviral-phrophylaxis.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "pre-medication-antiviral-phrophylaxis",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antiviral-phrophylaxis",
  "version" : "0.1.0",
  "name" : "PreMedicationAntiviralPhrophylaxis",
  "title" : "Antiviral prophylaxis pre-medication",
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
  "description" : "antiviral_phrophylaxis – preventive antiviral medication(s) given to reduce risk of viral infection or reactivation (Kidney only).",
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
        "short" : "Antiviral prophylaxis pre-medication",
        "definition" : "antiviral_phrophylaxis – preventive antiviral medication(s) given to reduce risk of viral infection or reactivation (Kidney only)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication-antiviral-phrophylaxis"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
