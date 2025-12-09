# Patient allograft HLA Class I - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient allograft HLA Class I**

## Extension: Patient allograft HLA Class I 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-i | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PatientAllograftHLAClassI |

Recipient’s HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Recipient](StructureDefinition-patient-transplant.md)
* Examples for this Extension: [Patient/ExamplePatientTransplant1](Patient-ExamplePatientTransplant1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/patient-allograft-hla-class-i)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-allograft-hla-class-i.csv), [Excel](StructureDefinition-patient-allograft-hla-class-i.xlsx), [Schematron](StructureDefinition-patient-allograft-hla-class-i.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-allograft-hla-class-i",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-i",
  "version" : "0.1.0",
  "name" : "PatientAllograftHLAClassI",
  "title" : "Patient allograft HLA Class I",
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
  "description" : "Recipient’s HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).",
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
        "short" : "Patient allograft HLA Class I",
        "definition" : "Recipient’s HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-allograft-hla-class-i"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-hla-class-i-vs"
        }
      }
    ]
  }
}

```
