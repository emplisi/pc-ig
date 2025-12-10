# Biological Sample - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biological Sample**

## Resource Profile: Biological Sample 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BioSample |

 
Biological sample linked to transplant patients and omics studies, aligned with the bio_sample table. 

**Usages:**

* Refer to this Profile: [Laboratory DiagnosticReport](StructureDefinition-lab-report.md), [Lab Result](StructureDefinition-lab-result-observation.md), [Transplant Case Logical Model](StructureDefinition-transplant-case.md) and [BioSample ID relationship](StructureDefinition-visit-bio-sample-ref.md)
* Examples for this Profile: [Specimen/biosample-example-1](Specimen-biosample-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/biosample)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-biosample.csv), [Excel](StructureDefinition-biosample.xlsx), [Schematron](StructureDefinition-biosample.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "biosample",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample",
  "version" : "0.1.0",
  "name" : "BioSample",
  "title" : "Biological Sample",
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
  "description" : "Biological sample linked to transplant patients and omics studies, aligned with the bio_sample table.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen",
        "path" : "Specimen"
      },
      {
        "id" : "Specimen.extension",
        "path" : "Specimen.extension",
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
        "min" : 1
      },
      {
        "id" : "Specimen.extension:genomic_test_id",
        "path" : "Specimen.extension",
        "sliceName" : "genomic_test_id",
        "short" : "genomic_test_id – Reference to GenomicTest",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-genomic-test-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.extension:epigenome_study_id",
        "path" : "Specimen.extension",
        "sliceName" : "epigenome_study_id",
        "short" : "epigenome_study_id – Reference to EpigenomeStudy",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-epigenome-study-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.extension:methylomic_study_id",
        "path" : "Specimen.extension",
        "sliceName" : "methylomic_study_id",
        "short" : "methylomic_study_id – Reference to MethylomicStudy",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-methylomic-study-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.extension:send_ingemm_date",
        "path" : "Specimen.extension",
        "sliceName" : "send_ingemm_date",
        "short" : "send_ingemm_date – date sample sent to INGEMM",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-send-ingemm-date"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.extension:dna_concentration",
        "path" : "Specimen.extension",
        "sliceName" : "dna_concentration",
        "short" : "dna_concentration – DNA concentration (float, ≥ 0)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.identifier",
        "path" : "Specimen.identifier",
        "short" : "bio_sample_id – primary identifier for the biological sample",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.identifier.system",
        "path" : "Specimen.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/bio-sample-id"
      },
      {
        "id" : "Specimen.identifier.value",
        "path" : "Specimen.identifier.value",
        "min" : 1
      },
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "short" : "tissue_type – type of tissue sampled",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenType"
            }
          ],
          "strength" : "required",
          "description" : "The type of the specimen.",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/biosample-tissue-type-vs"
        }
      },
      {
        "id" : "Specimen.type.text",
        "path" : "Specimen.type.text",
        "min" : 1
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "short" : "patient_id – reference to the transplant recipient",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection",
        "path" : "Specimen.collection",
        "short" : "Sample collection details",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.collected[x]",
        "path" : "Specimen.collection.collected[x]",
        "short" : "collection_date – sample collection date",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      }
    ]
  }
}

```
