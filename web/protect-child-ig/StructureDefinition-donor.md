# Transplant Donor - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant Donor**

## Resource Profile: Transplant Donor 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:Donor |

 
Donor profile based on the FHIR Patient resource, aligned with the donor table. 

**Usages:**

* Refer to this Profile: [Donor ID relationship](StructureDefinition-microbiology-donor-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Transplant donor reference](StructureDefinition-transplant-donor-ref.md)
* Examples for this Profile: [Patient/ExampleDonor1](Patient-ExampleDonor1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/donor)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-donor.csv), [Excel](StructureDefinition-donor.xlsx), [Schematron](StructureDefinition-donor.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "donor",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor",
  "version" : "0.1.0",
  "name" : "Donor",
  "title" : "Transplant Donor",
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
  "description" : "Donor profile based on the FHIR Patient resource, aligned with the donor table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 4
      },
      {
        "id" : "Patient.extension:donorABOGroup",
        "path" : "Patient.extension",
        "sliceName" : "donorABOGroup",
        "short" : "blood_group – ABO blood group of the donor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-abo-group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:donorRhFactor",
        "path" : "Patient.extension",
        "sliceName" : "donorRhFactor",
        "short" : "rh_factor – Rh factor of the donor",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-rh-factor"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.extension:donorAllograftHLAClassI",
        "path" : "Patient.extension",
        "sliceName" : "donorAllograftHLAClassI",
        "short" : "allograft_hla_class_i_ab – donor HLA Class I loci (HLA-A/B/C)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-i"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:donorAllograftHLAClassII",
        "path" : "Patient.extension",
        "sliceName" : "donorAllograftHLAClassII",
        "short" : "allograft_hla_class_ii_ab – donor HLA Class II loci (HLA-DR/DP/DQ)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-ii"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:liverType",
        "path" : "Patient.extension",
        "sliceName" : "liverType",
        "short" : "liver_type – type of donor liver graft (Complete / Partial)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-liver-type"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:preKtxDialysisType",
        "path" : "Patient.extension",
        "sliceName" : "preKtxDialysisType",
        "short" : "donor-pre-ktx-dialysis-type – pre-kidney-transplant dialysis type (Hemodialysis / Peritoneal dialysis)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-pre-ktx-dialysis-type"
            ]
          }
        ]
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "short" : "Donor identifiers (donor_id from the data model)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "short" : "Namespace for the donor identifier (e.g. donor registry)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "short" : "Donor ID (donor_id from the data model)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "short" : "Donor administrative gender",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "short" : "Donor date of birth (if known)",
        "mustSupport" : true
      }
    ]
  }
}

```
