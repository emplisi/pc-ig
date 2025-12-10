# Microbiology - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microbiology**

## Resource Profile: Microbiology 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:Microbiology |

 
Microbiology results related to transplant recipients and/or donors, aligned with the microbiology table. 

**Usages:**

* Refer to this Profile: [Microbiology ID relationship](StructureDefinition-outcome-microbiology-ref.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [Microbiology ID relationship](StructureDefinition-visit-microbiology-ref.md)
* Examples for this Profile: [Observation/microbiology-example-1](Observation-microbiology-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/microbiology)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-microbiology.csv), [Excel](StructureDefinition-microbiology.xlsx), [Schematron](StructureDefinition-microbiology.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "microbiology",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology",
  "version" : "0.1.0",
  "name" : "Microbiology",
  "title" : "Microbiology",
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
  "description" : "Microbiology results related to transplant recipients and/or donors, aligned with the microbiology table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "min" : 21
      },
      {
        "id" : "Observation.extension:patient_id",
        "path" : "Observation.extension",
        "sliceName" : "patient_id",
        "short" : "patient_id – reference to PatientTransplant",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:donor_id",
        "path" : "Observation.extension",
        "sliceName" : "donor_id",
        "short" : "donor_id – reference to Donor",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-donor-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:ebv_dna",
        "path" : "Observation.extension",
        "sliceName" : "ebv_dna",
        "short" : "ebv_dna – EBV nucleic acid test result (float)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:ebv_igm_anti_ea",
        "path" : "Observation.extension",
        "sliceName" : "ebv_igm_anti_ea",
        "short" : "ebv_igm_anti_ea – EBV serology IgM anti-EA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igm-anti-ea"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:ebv_igm_anti_vca",
        "path" : "Observation.extension",
        "sliceName" : "ebv_igm_anti_vca",
        "short" : "ebv_igm_anti_vca – EBV serology IgM anti-VCA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igm-anti-vca"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:ebv_igg_anti_vca",
        "path" : "Observation.extension",
        "sliceName" : "ebv_igg_anti_vca",
        "short" : "ebv_igg_anti_vca – EBV serology IgG anti-VCA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-anti-vca"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:ebv_igg_ebna",
        "path" : "Observation.extension",
        "sliceName" : "ebv_igg_ebna",
        "short" : "ebv_igg_ebna – EBV serology IgG EBNA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-ebna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:cmv_dna",
        "path" : "Observation.extension",
        "sliceName" : "cmv_dna",
        "short" : "cmv_dna – Blood CMV-DNA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-dna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:cmv_igm",
        "path" : "Observation.extension",
        "sliceName" : "cmv_igm",
        "short" : "cmv_igm – CMV serology IgM (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-igm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:cmv_igg",
        "path" : "Observation.extension",
        "sliceName" : "cmv_igg",
        "short" : "cmv_igg – CMV serology IgG (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-igg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:parvovirus_b19_dna",
        "path" : "Observation.extension",
        "sliceName" : "parvovirus_b19_dna",
        "short" : "parvovirus_b19_dna – Blood Parvovirus B19-DNA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:parvovirus_b19_dna_igg",
        "path" : "Observation.extension",
        "sliceName" : "parvovirus_b19_dna_igg",
        "short" : "parvovirus_b19_dna_igg – Parvovirus B19 serology IgG (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna-igg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:parvovirus_b19_dna_igm",
        "path" : "Observation.extension",
        "sliceName" : "parvovirus_b19_dna_igm",
        "short" : "parvovirus_b19_dna_igm – Parvovirus B19 serology IgM (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna-igm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:hsv_igg",
        "path" : "Observation.extension",
        "sliceName" : "hsv_igg",
        "short" : "hsv_igg – HSV serology IgG (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-hsv-igg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:hsv_igm",
        "path" : "Observation.extension",
        "sliceName" : "hsv_igm",
        "short" : "hsv_igm – HSV serology IgM (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-hsv-igm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:adenovirus_igg",
        "path" : "Observation.extension",
        "sliceName" : "adenovirus_igg",
        "short" : "adenovirus_igg – Adenovirus serology IgG (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-adenovirus-igg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:adenovirus_igm",
        "path" : "Observation.extension",
        "sliceName" : "adenovirus_igm",
        "short" : "adenovirus_igm – Adenovirus serology IgM (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-adenovirus-igm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:vzv_igg",
        "path" : "Observation.extension",
        "sliceName" : "vzv_igg",
        "short" : "vzv_igg – VZV serology IgG (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-vzv-igg"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:vzv_igm",
        "path" : "Observation.extension",
        "sliceName" : "vzv_igm",
        "short" : "vzv_igm – VZV serology IgM (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-vzv-igm"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:blood_bkv_dna",
        "path" : "Observation.extension",
        "sliceName" : "blood_bkv_dna",
        "short" : "blood_bkv_dna – Blood BKV-DNA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-blood-bkv-dna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:urine_bkv_dna",
        "path" : "Observation.extension",
        "sliceName" : "urine_bkv_dna",
        "short" : "urine_bkv_dna – Urine BKV-DNA (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-urine-bkv-dna"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:bkv_dna_kidney_biopsy",
        "path" : "Observation.extension",
        "sliceName" : "bkv_dna_kidney_biopsy",
        "short" : "bkv_dna_kidney_biopsy – BKV-DNA on kidney biopsy (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-dna-kidney-biopsy"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.extension:bkv_fish_kidney_biopsy",
        "path" : "Observation.extension",
        "sliceName" : "bkv_fish_kidney_biopsy",
        "short" : "bkv_fish_kidney_biopsy – BKV FISH on kidney biopsy (false=Negative, true=Positive)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-fish-kidney-biopsy"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "microbiology_id – Microbiology ID from the data model",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Observation.identifier.system",
        "path" : "Observation.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/microbiology-id"
      },
      {
        "id" : "Observation.identifier.value",
        "path" : "Observation.identifier.value",
        "min" : 1
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "patternCode" : "final",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.code.text",
        "path" : "Observation.code.text",
        "patternString" : "Microbiology panel"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Optional subject; may be recipient or donor. See patient_id and donor_id extensions for exact linkage.",
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
