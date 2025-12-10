# Donor pre-kidney-transplant dialysis type - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor pre-kidney-transplant dialysis type**

## Extension: Donor pre-kidney-transplant dialysis type 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-pre-ktx-dialysis-type | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:DonorPreKtxDialysisType |

Type of dialysis the donor received before kidney transplantation.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Donor](StructureDefinition-donor.md)
* Examples for this Extension: [Patient/ExampleDonor1](Patient-ExampleDonor1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/donor-pre-ktx-dialysis-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-donor-pre-ktx-dialysis-type.csv), [Excel](StructureDefinition-donor-pre-ktx-dialysis-type.xlsx), [Schematron](StructureDefinition-donor-pre-ktx-dialysis-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "donor-pre-ktx-dialysis-type",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-pre-ktx-dialysis-type",
  "version" : "0.1.0",
  "name" : "DonorPreKtxDialysisType",
  "title" : "Donor pre-kidney-transplant dialysis type",
  "status" : "draft",
  "date" : "2025-12-10T14:43:23+01:00",
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
  "description" : "Type of dialysis the donor received before kidney transplantation.",
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
        "short" : "Donor pre-kidney-transplant dialysis type",
        "definition" : "Type of dialysis the donor received before kidney transplantation."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-pre-ktx-dialysis-type"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/donor-pre-ktx-dialysis-type-vs"
        }
      }
    ]
  }
}

```
