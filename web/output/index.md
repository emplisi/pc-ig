# Home - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ImplementationGuide/pc.ig | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:PROTECTChildTransplantIG |

# PROTECT-CHILD Transplant Data Implementation Guide (DRAFT)

> **Status:**This Implementation Guide is a**draft**and may change based on ongoing work in PROTECT-CHILD.

This IG describes a FHIR-based representation of pediatric transplant data for the **PROTECT-CHILD** project.

At the centre is the **TransplantCase logical model**, which links:

* **Recipient & donor** 
* [`Patient`](StructureDefinition-patient-transplant.md)
* [`Donor`](StructureDefinition-donor.md)
 
* **Transplant & visits** 
* [`Transplant`](StructureDefinition-transplant.md) (index transplant encounter)
* [`Visit`](StructureDefinition-visit.md) (pre- and post-transplant follow-up)
 
* **Concomitant disease & immunosuppression** 
* [`ConcomitantDisease`](StructureDefinition-concomitant-disease.md), [`ConcomitantEpisode`](StructureDefinition-concomitant-episode.md), [`ConcomitantMedication`](StructureDefinition-concomitant-medication.md)
* [`PreMedication`](StructureDefinition-pre-medication.md), [`ImmunosuppressiveInductionPatient`](StructureDefinition-immunosuppressive-induction-patient.md), [`ImmunosuppressiveMaintenancePatient`](StructureDefinition-immunosuppressive-maintenance-patient.md), [`Immunosuppressant`](StructureDefinition-immunosuppressant.md)
 
* **Clinical data** 
* [`ClinicalVariable`](StructureDefinition-clinical-variable.md)
* [`LabResultObservation`](StructureDefinition-lab-result-observation.md), [`LabReport`](StructureDefinition-lab-report.md)
* [`Microbiology`](StructureDefinition-microbiology.md)
* [`PatientInstrumentalInvestigation`](StructureDefinition-patient-instrumental-investigation.md)
 
* **Biospecimens & omics** 
* [`BioSample`](StructureDefinition-biosample.md)
* [`GenomicTest`](StructureDefinition-genomic-test.md), [`EpigenomeStudy`](StructureDefinition-epigenome-study.md), [`MethylomicStudy`](StructureDefinition-methylomic-study.md)
* [`VariantOccurrence`](StructureDefinition-variant-occurrence.md), [`VariantAnnotation`](StructureDefinition-variant-annotation.md)
* [`ReferenceGenome`](StructureDefinition-reference-genome.md)
 
* **Events & outcomes** 
* [`PostEvent`](StructureDefinition-post-event.md)
* [`Outcome`](StructureDefinition-outcome.md)
 



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "pc.ig",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ImplementationGuide/pc.ig",
  "version" : "0.1.0",
  "name" : "PROTECTChildTransplantIG",
  "title" : "PROTECT-CHILD Pediatric Transplant Data Implementation Guide",
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
  "description" : "FHIR Implementation Guide for the PROTECT-CHILD project, defining a common pediatric transplant data model (recipient, donor, transplant events, follow-up, labs, microbiology, biospecimens, omics and outcomes) for use in local data space capsules and federated analytics.\n",
  "packageId" : "pc.ig",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [
    {
      "id" : "hl7tx",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
        }
      ],
      "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
      "packageId" : "hl7.terminology.r4",
      "version" : "7.0.0"
    },
    {
      "id" : "hl7ext",
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
          "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
        }
      ],
      "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
      "packageId" : "hl7.fhir.uv.extensions.r4",
      "version" : "5.2.0"
    },
    {
      "id" : "hl7_fhir_eu_base",
      "uri" : "http://hl7.eu/fhir/base/ImplementationGuide/hl7.fhir.eu.base",
      "packageId" : "hl7.fhir.eu.base",
      "version" : "0.1.0-ballot"
    }
  ],
  "definition" : {
    "extension" : [
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "CI Build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://example.org/fhir/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueString" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
        "valueCode" : "hl7.fhir.uv.tools.r4#0.8.0"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "copyrightyear"
          },
          {
            "url" : "value",
            "valueString" : "2025"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "releaselabel"
          },
          {
            "url" : "value",
            "valueString" : "CI Build"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "autoload-resources"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "template/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-liquid"
          },
          {
            "url" : "value",
            "valueString" : "input/liquid"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-qa"
          },
          {
            "url" : "value",
            "valueString" : "temp/qa"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-temp"
          },
          {
            "url" : "value",
            "valueString" : "temp/pages"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-output"
          },
          {
            "url" : "value",
            "valueString" : "output"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-suppressed-warnings"
          },
          {
            "url" : "value",
            "valueString" : "input/ignoreWarnings.txt"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "path-history"
          },
          {
            "url" : "value",
            "valueString" : "http://example.org/fhir/history.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-html"
          },
          {
            "url" : "value",
            "valueString" : "template-page.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "template-md"
          },
          {
            "url" : "value",
            "valueString" : "template-page-md.html"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-contact"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-context"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-copyright"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-jurisdiction"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-license"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-publisher"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-version"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "apply-wg"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "active-tables"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "fmm-definition"
          },
          {
            "url" : "value",
            "valueString" : "http://hl7.org/fhir/versions.html#maturity"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "propagate-status"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "excludelogbinaryformat"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      },
      {
        "extension" : [
          {
            "url" : "code",
            "valueCode" : "tabbed-snapshots"
          },
          {
            "url" : "value",
            "valueString" : "true"
          }
        ],
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
      }
    ],
    "resource" : [
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-adenovirus-igg"
        },
        "name" : "Adenovirus serology IgG",
        "description" : "adenovirus_igg – presence of IgG antibodies to adenovirus; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-adenovirus-igm"
        },
        "name" : "Adenovirus serology IgM",
        "description" : "adenovirus_igm – presence of IgM antibodies to adenovirus; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-aeca-other"
        },
        "name" : "AECA / other non-HLA antibodies",
        "description" : "Anti-endothelial cell antibodies or other non-HLA antibodies not captured above.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-age-at-dna-extraction"
        },
        "name" : "Age at DNA extraction",
        "description" : "Age (in years) of the subject at the time of DNA extraction.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-alignment-tools"
        },
        "name" : "Alignment tools",
        "description" : "Name and version of the alignment tool.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-allele-frequency"
        },
        "name" : "Allele frequency",
        "description" : "Allele frequency for the variant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-alternate-allele"
        },
        "name" : "Alternate allele",
        "description" : "Variant allele sequence (e.g., C).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-annotation-database"
        },
        "name" : "Annotation database",
        "description" : "Database used for this variant annotation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-annotation-databases"
        },
        "name" : "Annotation databases",
        "description" : "Information about the databases used for annotation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-annotation-tools"
        },
        "name" : "Annotation tools",
        "description" : "Information about the tool used for annotation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-mica"
        },
        "name" : "Anti-MICA antibody result",
        "description" : "Anti-MICA (MHC class I–related chain A) antibody result.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-micb"
        },
        "name" : "Anti-MICB antibody result",
        "description" : "Anti-MICB (MHC class I–related chain B) antibody result.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication-antihypertensive-treatment"
        },
        "name" : "Antihypertensive treatment",
        "description" : "antihypertensive_treatment – blood-pressure–lowering drug(s) used pre-transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication-antiviral-phrophylaxis"
        },
        "name" : "Antiviral prophylaxis pre-medication",
        "description" : "antiviral_phrophylaxis – preventive antiviral medication(s) given to reduce risk of viral infection or reactivation (Kidney only).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-array-date"
        },
        "name" : "Array date",
        "description" : "Date when the array was run.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-atr1"
        },
        "name" : "AT1R antibody result",
        "description" : "Angiotensin II type-1 receptor (AT1R) antibody result.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-beta-value"
        },
        "name" : "Beta value",
        "description" : "Beta value representing methylation level.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/biosample"
        },
        "name" : "Biological Sample",
        "description" : "Biological sample linked to transplant patients and omics studies, aligned with the bio_sample table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-bio-sample-ref"
        },
        "name" : "BioSample ID relationship",
        "description" : "Reference to the primary biosample collected at this visit (bio_sample_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/biosample-tissue-type-cs"
        },
        "name" : "BioSample Tissue Type CodeSystem",
        "description" : "Tissue types for biological samples (from the bio_sample table).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/biosample-tissue-type-vs"
        },
        "name" : "BioSample Tissue Type ValueSet",
        "description" : "Allowed tissue types for BioSample.tissue_type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-bisulfite-date"
        },
        "name" : "Bisulfite date",
        "description" : "Date of bisulfite conversion.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-bisulfite-reference-kit"
        },
        "name" : "Bisulfite reference kit",
        "description" : "Bisulfite conversion kit used in the epigenome experiment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-bkv-fish-kidney-biopsy"
        },
        "name" : "BKV FISH on kidney biopsy",
        "description" : "bkv_fish_kidney_biopsy – BK virus FISH on kidney biopsy; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-bkv-dna-kidney-biopsy"
        },
        "name" : "BKV-DNA on kidney biopsy",
        "description" : "bkv_dna_kidney_biopsy – detection of BK virus DNA on kidney biopsy; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-blood-bkv-dna"
        },
        "name" : "Blood BKV-DNA",
        "description" : "blood_bkv_dna – detection of BK virus DNA in blood; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-cmv-dna"
        },
        "name" : "Blood CMV-DNA",
        "description" : "cmv_dna – CMV nucleic acid test result (false=Negative, true=Positive).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-ebv-dna"
        },
        "name" : "Blood EBV-DNA",
        "description" : "ebv_dna – EBV nucleic acid test result (quantitative, float).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-parvovirus-b19-dna"
        },
        "name" : "Blood Parvovirus B19-DNA",
        "description" : "parvovirus_b19_dna – detection of parvovirus B19 DNA in blood; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-chip-type"
        },
        "name" : "Chip type",
        "description" : "Type of chip used for the epigenome array.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-chromosome-corrdinate"
        },
        "name" : "Chromosome coordinate",
        "description" : "Coordinate system for numbering the chromosomes.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-chromosome-id"
        },
        "name" : "Chromosome ID",
        "description" : "Chromosome identifier (e.g. 1–22, 23=X, 24=Y, 25=MT).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable"
        },
        "name" : "Clinical Variable",
        "description" : "Clinical variables and vital signs recorded for a transplant patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-clinical-variable-ref"
        },
        "name" : "Clinical variable ID relationship",
        "description" : "Reference to clinical variable/vital signs information associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-clinical-variable-ref"
        },
        "name" : "Clinical variable ID relationship",
        "description" : "Reference to clinical variables recorded at this visit (clinical_variable_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-cmv-igg"
        },
        "name" : "CMV serology IgG",
        "description" : "cmv_igg – presence of IgG antibodies against CMV; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-cmv-igm"
        },
        "name" : "CMV serology IgM",
        "description" : "cmv_igm – presence of IgM antibodies against CMV; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-cnv-locus"
        },
        "name" : "CNV locus",
        "description" : "Locus information for CNV.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-cold-ischaemia-time"
        },
        "name" : "Cold ischaemia time (minutes)",
        "description" : "Cold ischaemia time for the graft in minutes (cold_ischemia_time).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-disease"
        },
        "name" : "Concomitant Disease",
        "description" : "Relevant concomitant diseases associated to a subject or record.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/concomitant-disease-category"
        },
        "name" : "Concomitant Disease Category",
        "description" : "Categories of relevant concomitant diseases.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/concomitant-disease-category-vs"
        },
        "name" : "Concomitant Disease Category ValueSet",
        "description" : "ValueSet of relevant concomitant diseases.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-episode-disease-ref"
        },
        "name" : "Concomitant disease ID relationship",
        "description" : "Reference to the concomitant disease record associated with this episode.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-disease-name"
        },
        "name" : "Concomitant disease name(s)",
        "description" : "Set of relevant concomitant diseases.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-episode"
        },
        "name" : "Concomitant Episode",
        "description" : "Clinical episode related to a concomitant disease for a transplant patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-medication-episode-ref"
        },
        "name" : "Concomitant episode ID relationship",
        "description" : "Reference to the concomitant episode this medication belongs to.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-concomitant-episode-ref"
        },
        "name" : "Concomitant episode ID relationship",
        "description" : "Reference to concomitant episode information associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-concomitant-episode-ref"
        },
        "name" : "Concomitant episode ID relationship",
        "description" : "Reference to a concomitant episode associated with this visit (concomitant_episode_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-medication"
        },
        "name" : "Concomitant Medication",
        "description" : "Concomitant medication records associated with a concomitant episode.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/concomitant-medication-category"
        },
        "name" : "Concomitant Medication Category",
        "description" : "Categories of concomitant medications.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/concomitant-medication-category-vs"
        },
        "name" : "Concomitant Medication Category ValueSet",
        "description" : "ValueSet of concomitant medication categories.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-copy-number"
        },
        "name" : "Copy number",
        "description" : "Copy number value for CNV data.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-date"
        },
        "name" : "Date",
        "description" : "Date when vital signs were measured.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-histological-diagnosis-date"
        },
        "name" : "Date of histological diagnosis",
        "description" : "Date of histological diagnosis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-instrumental-investigation-date"
        },
        "name" : "Date of instrumental investigation",
        "description" : "Date on which the instrumental investigation was performed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-liver-disease-diagnosis-date"
        },
        "name" : "Date of liver disease diagnosis",
        "description" : "Date at which liver disease was diagnosed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-renal-disease-diagnosis-date"
        },
        "name" : "Date of renal disease diagnosis",
        "description" : "Date at which renal disease was diagnosed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-rs-id"
        },
        "name" : "dbSNP rsID",
        "description" : "dbSNP reference ID (rsID) maintained by NCBI.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-detection-p-value"
        },
        "name" : "Detection p-value",
        "description" : "Detection p-value for the methylation measurement.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-diastolic-blood-pressure"
        },
        "name" : "Diastolic blood pressure",
        "description" : "Diastolic blood pressure in mmHg.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bio-sample-dna-concentration"
        },
        "name" : "DNA concentration",
        "description" : "dna_concentration – DNA concentration for the sample (float).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-abo-group"
        },
        "name" : "Donor ABO group",
        "description" : "ABO blood group of the donor.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-allograft-hla-class-i"
        },
        "name" : "Donor allograft HLA Class I loci",
        "description" : "Donor HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-allograft-hla-class-ii"
        },
        "name" : "Donor allograft HLA Class II loci",
        "description" : "Donor HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-donor-ref"
        },
        "name" : "Donor ID relationship",
        "description" : "donor_id – reference to the donor associated with this microbiology record.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-liver-type"
        },
        "name" : "Donor liver graft type",
        "description" : "Whether the donor liver graft is complete or partial.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/donor-liver-type-cs"
        },
        "name" : "Donor Liver Type CodeSystem",
        "description" : "Type of liver donation (complete vs partial).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/donor-liver-type-vs"
        },
        "name" : "Donor Liver Type ValueSet",
        "description" : "Allowed values for donor liver type (Complete, Partial).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-pre-ktx-dialysis-type"
        },
        "name" : "Donor pre-kidney-transplant dialysis type",
        "description" : "Type of dialysis the donor received before kidney transplantation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/donor-pre-ktx-dialysis-type-cs"
        },
        "name" : "Donor Pre-KTX Dialysis Type CodeSystem",
        "description" : "Dialysis type used for the donor prior to kidney transplantation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/donor-pre-ktx-dialysis-type-vs"
        },
        "name" : "Donor Pre-KTX Dialysis Type ValueSet",
        "description" : "Allowed dialysis types for donor prior to kidney transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor-rh-factor"
        },
        "name" : "Donor Rh factor",
        "description" : "Rh factor of the donor.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-dsa"
        },
        "name" : "Donor-specific antibody (DSA)",
        "description" : "Donor-specific antibody flag for the HLA antibody above (yes/no).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-donor-recipient-weight-ratio"
        },
        "name" : "Donor/recipient weight ratio",
        "description" : "Ratio of donor graft weight to recipient body weight (d_r_weight_ration).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-dose"
        },
        "name" : "Dose of immunosuppressant",
        "description" : "dose – maintenance dose of the immunosuppressant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-induction-dose-unit"
        },
        "name" : "Dose unit",
        "description" : "Unit for the selected immunosuppressant dose.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-ebv-igg-anti-vca"
        },
        "name" : "EBV serology IgG anti-VCA",
        "description" : "ebv_igg_anti_vca – presence of IgG antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-ebv-igg-ebna"
        },
        "name" : "EBV serology IgG EBNA",
        "description" : "ebv_igg_ebna – presence of IgG antibodies against EBV Nuclear Antigen (EBNA); false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-ebv-igm-anti-ea"
        },
        "name" : "EBV serology IgM anti-EA",
        "description" : "ebv_igm_anti_ea – presence of IgM antibodies against EBV Early Antigen (EA); false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-ebv-igm-anti-vca"
        },
        "name" : "EBV serology IgM anti-VCA",
        "description" : "ebv_igm_anti_vca – presence of IgM antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-end-date"
        },
        "name" : "End date of maintenance therapy",
        "description" : "Date when this maintenance immunosuppressant regimen was stopped (if applicable).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-end-position"
        },
        "name" : "End position",
        "description" : "End position of the target region (genomic coordinate).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study"
        },
        "name" : "Epigenome Study",
        "description" : "Epigenome (e.g. methylation array) study metadata and platform details.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bio-sample-epigenome-study-ref"
        },
        "name" : "Epigenome Study ID Relationship",
        "description" : "epigenome_study_id – reference to epigenome study linked to this sample.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-episode-date"
        },
        "name" : "Episode date",
        "description" : "Date of the concomitant episode.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-episode-description"
        },
        "name" : "Episode description",
        "description" : "Description of the concomitant episode.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-etar"
        },
        "name" : "ETAR antibody result",
        "description" : "Endothelin receptor type-A (ETAR) antibody result.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-description"
        },
        "name" : "Event description",
        "description" : "Free-text description of the post-transplant event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-end-date"
        },
        "name" : "Event end date",
        "description" : "Date when the post-transplant event resolved or ended.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-onset-date"
        },
        "name" : "Event onset date",
        "description" : "Date when the post-transplant event started.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Specimen"
          }
        ],
        "reference" : {
          "reference" : "Specimen/biosample-example-1"
        },
        "name" : "Example Biological Sample",
        "description" : "Example biological sample used in Visit example.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/clinical-variable-example-1"
        },
        "name" : "Example Clinical Variables",
        "description" : "Example set of clinical variables for a transplant patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/concomitant-disease-example-1"
        },
        "name" : "Example Concomitant Disease",
        "description" : "Example record of a concomitant disease.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-disease"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/concomitant-episode-example-1"
        },
        "name" : "Example Concomitant Episode",
        "description" : "Example concomitant episode for a transplant patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/concomitant-medication-example-1"
        },
        "name" : "Example Concomitant Medication",
        "description" : "Example concomitant medication for a concomitant episode.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/epigenome-study-example-1"
        },
        "name" : "Example Epigenome Study",
        "description" : "Example epigenome (methylation array) study record.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/genomic-test-example-1"
        },
        "name" : "Example Genomic Test",
        "description" : "Example genomic test / sequencing platform configuration.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/immunosuppressant-example-1"
        },
        "name" : "Example Immunosuppressant",
        "description" : "Example immunosuppressant drug definition.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/imm-ind-pat-example-1"
        },
        "name" : "Example Immunosuppressant Induction to Patient",
        "description" : "Example record of immunosuppressive induction therapy given to a patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/immunosuppressive-maintenance-patient-example-1"
        },
        "name" : "Example Immunosuppressive Maintenance to Patient",
        "description" : "Example record of maintenance immunosuppressive therapy for a transplant recipient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/instrumental-investigation-example-1"
        },
        "name" : "Example Instrumental Investigation",
        "description" : "Example imaging/instrumental investigation for a transplant patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/lab-result-observation-example-1"
        },
        "name" : "Example Lab Result Observation",
        "description" : "Example creatinine result for a transplant recipient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-observation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/lab-test-example-1"
        },
        "name" : "Example Lab Test",
        "description" : "Example definition of a lab test (Albumin).",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-test"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "DiagnosticReport"
          }
        ],
        "reference" : {
          "reference" : "DiagnosticReport/lab-report-example-1"
        },
        "name" : "Example Laboratory Report",
        "description" : "Example lab report grouping a single creatinine result.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/mark-imm-func-example-1"
        },
        "name" : "Example Marker of Immune Function",
        "description" : "Example immune function marker record for a transplant patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/methylomic-study-example-1"
        },
        "name" : "Example Methylomic Study",
        "description" : "Example methylomic record for a locus.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/microbiology-example-1"
        },
        "name" : "Example Microbiology record",
        "description" : "Example microbiology panel for a transplant recipient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/outcome-example-1"
        },
        "name" : "Example Outcome",
        "description" : "Example outcome record for a transplant patient.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/outcome-type-example-1"
        },
        "name" : "Example Outcome Type",
        "description" : "Example outcome type: Chronic renal failure after pLTx.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome-type"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Observation"
          }
        ],
        "reference" : {
          "reference" : "Observation/patient-instrumental-investigation-example-1"
        },
        "name" : "Example Patient Instrumental Investigation",
        "description" : "Example of a patient instrumental investigation linked to InstrumentalInvestigation catalogue.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/post-event-type-example-1"
        },
        "name" : "Example Post Event Type",
        "description" : "Example post-transplant event type: Episodes of AKI after LTx.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/post-event-example-1"
        },
        "name" : "Example Post-Transplant Event",
        "description" : "Example of a post-transplant event (e.g., infection episode).",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/pre-medication-example-1"
        },
        "name" : "Example Pre-medication",
        "description" : "Example record of pre-transplant medications.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/reference-genome-grch38"
        },
        "name" : "Example Reference Genome GRCh38",
        "description" : "Example GRCh38 reference genome used for genomic tests.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/target-region-example-1"
        },
        "name" : "Example Target Region",
        "description" : "Example target region linked to a genomic test.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/target-region"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/TransplantExample1"
        },
        "name" : "Example transplant",
        "description" : "Example transplant instance mapped from the transplant table.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ExampleDonor1"
        },
        "name" : "Example transplant donor",
        "description" : "Example donor instance mapped from the donor table.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Patient"
          }
        ],
        "reference" : {
          "reference" : "Patient/ExamplePatientTransplant1"
        },
        "name" : "Example transplant recipient",
        "description" : "Example recipient instance mapped from the patient table.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/variant-annotation-example-1"
        },
        "name" : "Example Variant Annotation",
        "description" : "Example annotation for a variant occurrence.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Basic"
          }
        ],
        "reference" : {
          "reference" : "Basic/variant-occurrence-example-1"
        },
        "name" : "Example Variant Occurrence",
        "description" : "Example variant occurrence linked to a target region.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "Encounter"
          }
        ],
        "reference" : {
          "reference" : "Encounter/VisitExample1"
        },
        "name" : "Example visit",
        "description" : "Example visit instance mapped from the visit table.",
        "exampleCanonical" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit"
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-first-warm-ischemia-time"
        },
        "name" : "First warm ischaemia time (minutes)",
        "description" : "First warm ischaemia time for the graft in minutes (1_warm_ischemia_time).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-fusion-breakpoint"
        },
        "name" : "Fusion breakpoint",
        "description" : "Genomic position where a fusion variant occurs.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-fusion-supporting-reads"
        },
        "name" : "Fusion supporting reads",
        "description" : "Supporting read count of the fusion.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-genetic-origin"
        },
        "name" : "Genetic origin",
        "description" : "Somatic or germline origin of the variant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test"
        },
        "name" : "Genomic Test",
        "description" : "Definition of a genomic test / sequencing platform and pipeline configuration.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bio-sample-genomic-test-ref"
        },
        "name" : "Genomic Test ID Relationship",
        "description" : "genomic_test_id – reference to the genomic test configuration used for this sample.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-genomic-test-ref"
        },
        "name" : "Genomic test ID relationship",
        "description" : "Reference to the genomic test used in this epigenome study.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-genomic-test-ref"
        },
        "name" : "Genomic test ID relationship",
        "description" : "Reference to the genomic test (platform) containing this target region.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-name"
        },
        "name" : "Genomic Test Name",
        "description" : "Name of the platform using sequencing, assigned by the institution.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-version"
        },
        "name" : "Genomic Test Version",
        "description" : "Version of the platform using sequencing, assigned by the institution.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-genotype"
        },
        "name" : "Genotype",
        "description" : "Allele state.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-heart-rate"
        },
        "name" : "Heart rate",
        "description" : "Pulse rate in beats per minute.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-height"
        },
        "name" : "Height",
        "description" : "Patient’s height/length in centimeters.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-hgnc-id"
        },
        "name" : "HGNC ID",
        "description" : "Gene ID based on HGNC nomenclature.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-hgnc-symbol"
        },
        "name" : "HGNC symbol",
        "description" : "Gene symbol given by HGNC nomenclature.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-hgvs-c"
        },
        "name" : "HGVS c. notation",
        "description" : "Nomenclature for the sequence variant at the DNA level (HGVS c. notation).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-hgvs-p"
        },
        "name" : "HGVS p. notation",
        "description" : "Nomenclature for the sequence variant at the protein level (HGVS p. notation).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-hla-antibody-class"
        },
        "name" : "HLA antibody class or locus",
        "description" : "Class or locus of the HLA antibody being recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-hsv-igg"
        },
        "name" : "HSV serology IgG",
        "description" : "hsv_igg – presence of IgG antibodies to HSV; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-hsv-igm"
        },
        "name" : "HSV serology IgM",
        "description" : "hsv_igm – presence of IgM antibodies to HSV; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressant"
        },
        "name" : "Immunosuppressant",
        "description" : "Immunosuppressive drug definition used in initial or maintenance therapy.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-induction-dose"
        },
        "name" : "Immunosuppressant dose",
        "description" : "Dose of the selected immunosuppressant used for induction.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/immunosuppressant-drug-type-vs"
        },
        "name" : "Immunosuppressant Drug Type",
        "description" : "ValueSet of immunosuppressive drug types.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/immunosuppressant-drug-type-cs"
        },
        "name" : "Immunosuppressant Drug Type",
        "description" : "Types of immunosuppressive drugs used in the transplant setting.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-induction-imm-ref"
        },
        "name" : "Immunosuppressant ID relationship",
        "description" : "Reference to the immunosuppressant drug used for induction.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref"
        },
        "name" : "Immunosuppressant ID relationship",
        "description" : "immunosuppressant_id – reference to the immunosuppressant drug used for maintenance.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/immunosuppressive-induction-dose-unit-vs"
        },
        "name" : "Immunosuppressant Induction Dose Unit",
        "description" : "ValueSet of units for immunosuppressant induction dose.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/immunosuppressive-induction-dose-unit-cs"
        },
        "name" : "Immunosuppressant Induction Dose Unit",
        "description" : "Units for immunosuppressant induction dose.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-induction-patient"
        },
        "name" : "Immunosuppressant Induction to Patient",
        "description" : "Record of immunosuppressive induction treatment given to a transplant patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressant-name"
        },
        "name" : "Immunosuppressant name",
        "description" : "Name/type of the immunosuppressant drug.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-immunosuppressive-induction-ref"
        },
        "name" : "Immunosuppressive induction ID relationship",
        "description" : "Reference to immunosuppressive induction treatment associated with this visit (imm_ind_pat_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-immunosuppressive-maintenance-ref"
        },
        "name" : "Immunosuppressive maintenance ID relationship",
        "description" : "Reference to immunosuppressive maintenance treatment associated with this visit (imm_main_pat_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-patient"
        },
        "name" : "Immunosuppressive Maintenance to Patient",
        "description" : "Maintenance immunosuppressive therapy given to the transplant patient, aligned with the immunosuppressive_maintenance_patient table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/immunosuppressive-maintenance-type-cs"
        },
        "name" : "Immunosuppressive Maintenance to Patient Type CodeSystem",
        "description" : "Type of immunosuppressive maintenance record.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/immunosuppressive-maintenance-type-vs"
        },
        "name" : "Immunosuppressive Maintenance to Patient Type ValueSet",
        "description" : "Allowed types for immunosuppressive maintenance records.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/instrumental-investigation"
        },
        "name" : "Instrumental Investigation",
        "description" : "Catalogue of instrumental investigation tests, aligned with the instrumental_investigation table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-instrumental-investigation-instrument-ref"
        },
        "name" : "Instrumental investigation ID relationship",
        "description" : "instrumental_investigation_id – reference to the catalogue entry describing the test performed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/instrumental-investigation-name-ext"
        },
        "name" : "Instrumental investigation name",
        "description" : "Name of the instrumental investigation test conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/instrumental-investigation-name-vs"
        },
        "name" : "Instrumental Investigation Name",
        "description" : "ValueSet of instrumental investigation tests conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/instrumental-investigation-name-cs"
        },
        "name" : "Instrumental Investigation Name",
        "description" : "Types of instrumental investigation tests conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-intraoperative-complications"
        },
        "name" : "Intraoperative complications",
        "description" : "Whether and which complications occurred during surgery (intraoperative_complications).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/intraoperative-complication-cs"
        },
        "name" : "Intraoperative Complications CodeSystem",
        "description" : "Intraoperative complications during liver transplantation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/intraoperative-complication-vs"
        },
        "name" : "Intraoperative Complications ValueSet",
        "description" : "Allowed intraoperative complications during liver transplantation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-kidney-side"
        },
        "name" : "Kidney side",
        "description" : "Transplanted kidney side (kidney_side).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/kidney-side-cs"
        },
        "name" : "Kidney Side CodeSystem",
        "description" : "Side of the kidney for nephrectomy / transplant context.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/kidney-side-vs"
        },
        "name" : "Kidney Side ValueSet",
        "description" : "Allowed values for kidney side.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-result-observation"
        },
        "name" : "Lab Result",
        "description" : "Individual laboratory result for a transplant recipient, aligned with the lab_result table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-lab-result-ref"
        },
        "name" : "Lab result ID relationship",
        "description" : "Reference to laboratory results associated with this visit (lab_result_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-result-patient-ref"
        },
        "name" : "Lab result patient reference",
        "description" : "patient_id – reference to the transplant recipient for whom this lab result is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/lab-result-unit-cs"
        },
        "name" : "Lab Result Unit CodeSystem",
        "description" : "Units of measurement used for laboratory results, aligned with the lab_result unit conceptual domain.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/lab-result-unit-vs"
        },
        "name" : "Lab Result Unit ValueSet",
        "description" : "Allowed units of measurement for lab result values (unit column).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-test"
        },
        "name" : "Lab Test",
        "description" : "Definition of a laboratory test, including its name and unit.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-lab-test-ref"
        },
        "name" : "Lab test ID relationship",
        "description" : "Reference to lab test definition associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-test-name-ext"
        },
        "name" : "Lab test name",
        "description" : "Name of the laboratory test conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/lab-test-name-vs"
        },
        "name" : "Lab Test Name",
        "description" : "ValueSet of laboratory tests conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/lab-test-name-cs"
        },
        "name" : "Lab Test Name",
        "description" : "Types of laboratory tests conducted.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-result-labtest-ref"
        },
        "name" : "Lab test reference",
        "description" : "lab_test_id – reference to the lab test definition (LabTest catalog row) associated with this lab result.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-report"
        },
        "name" : "Laboratory DiagnosticReport",
        "description" : "Laboratory report grouping one or more lab result observations for a transplant recipient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-liver-disease-extra"
        },
        "name" : "Liver disease diagnosis (free text)",
        "description" : "Additional description or free-text for the liver disease diagnosis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-liver-disease-code"
        },
        "name" : "Liver disease diagnosis code",
        "description" : "Primary liver disease diagnosis (coding system TBD; may map from OMOP or local codes).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-m-value"
        },
        "name" : "M value",
        "description" : "M-value transformation of the beta value.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-manifest-number"
        },
        "name" : "Manifest number",
        "description" : "Manifest number for the array.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function"
        },
        "name" : "Marker of Immune Function",
        "description" : "Markers of immune function including HLA and non-HLA antibodies for a transplant patient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-mean-target-coverage"
        },
        "name" : "Mean target coverage",
        "description" : "Mean target coverage.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-medication-code"
        },
        "name" : "Medication",
        "description" : "Type of concomitant medication applied.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-medication"
        },
        "name" : "Medication",
        "description" : "Medication(s) relevant to this variant annotation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-methylated-reads"
        },
        "name" : "Methylated reads",
        "description" : "Number of reads showing methylation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study"
        },
        "name" : "Methylomic Study",
        "description" : "Methylomic study / locus-level methylation metrics.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bio-sample-methylomic-study-ref"
        },
        "name" : "Methylomic Study ID Relationship",
        "description" : "methylomic_study_id – reference to methylomic study linked to this sample.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-mfi-value"
        },
        "name" : "MFI value",
        "description" : "Median Fluorescence Intensity (MFI) for the HLA antibody listed in hla_antibody_class.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology"
        },
        "name" : "Microbiology",
        "description" : "Microbiology results related to transplant recipients and/or donors, aligned with the microbiology table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-microbiology-ref"
        },
        "name" : "Microbiology ID relationship",
        "description" : "Reference to microbiology results associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-microbiology-ref"
        },
        "name" : "Microbiology ID relationship",
        "description" : "Reference to microbiology results associated with this visit (microbiology_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-nephrectomy-original-kidney"
        },
        "name" : "Nephrectomy of original kidney",
        "description" : "Whether the patient’s native kidney was surgically removed before the transplant (nephrectomy_original_kidney).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-intraoperative-complications-other"
        },
        "name" : "Other intraoperative complications (free text)",
        "description" : "Specification of other types of complications during surgery (intraoperative_complications_other).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication-other-medications"
        },
        "name" : "Other pre-transplant medications",
        "description" : "other_medications – any other relevant pre-transplant medications.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome"
        },
        "name" : "Outcome",
        "description" : "Outcome information for transplant patients, linked to multiple clinical domains.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-date"
        },
        "name" : "Outcome date",
        "description" : "Date associated with the outcome (e.g. assessment date).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-outcome-ref"
        },
        "name" : "Outcome ID relationship",
        "description" : "Reference to the outcome record associated with this visit (outcome_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-type"
        },
        "name" : "Outcome Type",
        "description" : "Definition of an outcome type used to categorize outcome records.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-type-ref"
        },
        "name" : "Outcome type ID relationship",
        "description" : "Reference to the type/category of outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-type-name-ext"
        },
        "name" : "Outcome type name",
        "description" : "Name of the outcome type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/outcome-type-name-vs"
        },
        "name" : "Outcome Type Name",
        "description" : "ValueSet of post-transplant outcome types.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/outcome-type-name-cs"
        },
        "name" : "Outcome Type Name",
        "description" : "Types of clinical outcomes after transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-oxygen-saturation"
        },
        "name" : "Oxygen saturation",
        "description" : "Oxygen saturation at rest, in percent.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-parvovirus-b19-dna-igg"
        },
        "name" : "Parvovirus B19 serology IgG",
        "description" : "parvovirus_b19_dna_igg – presence of IgG antibodies to parvovirus B19; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-parvovirus-b19-dna-igm"
        },
        "name" : "Parvovirus B19 serology IgM",
        "description" : "parvovirus_b19_dna_igm – presence of IgM antibodies to parvovirus B19; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-abo-group"
        },
        "name" : "Patient ABO group",
        "description" : "ABO blood group of the transplant recipient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/patient-abo-group-cs"
        },
        "name" : "Patient ABO Group CodeSystem",
        "description" : "ABO blood groups for transplant recipients (maps from OMOP A/B/AB/0).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient-abo-group-vs"
        },
        "name" : "Patient ABO Group ValueSet",
        "description" : "ABO blood groups for transplant recipients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-allograft-hla-class-i"
        },
        "name" : "Patient allograft HLA Class I",
        "description" : "Recipient’s HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-allograft-hla-class-ii"
        },
        "name" : "Patient allograft HLA Class II",
        "description" : "Recipient’s HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/patient-hla-class-i-cs"
        },
        "name" : "Patient HLA Class I Loci CodeSystem",
        "description" : "Class I HLA loci relevant to transplant matching.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient-hla-class-i-vs"
        },
        "name" : "Patient HLA Class I Loci ValueSet",
        "description" : "Allowed Class I HLA loci (HLA-A, HLA-B, HLA-C).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/patient-hla-class-ii-cs"
        },
        "name" : "Patient HLA Class II Loci CodeSystem",
        "description" : "Class II HLA loci relevant to transplant matching.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient-hla-class-ii-vs"
        },
        "name" : "Patient HLA Class II Loci ValueSet",
        "description" : "Allowed Class II HLA loci (HLA-DR, HLA-DP, HLA-DQ).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient for whom clinical variables are recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/concomitant-episode-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient for whom the concomitant episode is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-induction-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient receiving immunosuppressive induction.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/marker-immune-function-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient for whom the immune function markers are recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "patient_id – reference to the transplant recipient associated with this microbiology record.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient for whom the outcome is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-instrumental-investigation-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "patient_id – reference to the transplant recipient for whom the instrumental investigation was performed.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-patient-ref"
        },
        "name" : "Patient ID relationship",
        "description" : "Reference to the patient who experienced the post-transplant event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-instrumental-investigation"
        },
        "name" : "Patient Instrumental Investigation",
        "description" : "Instrumental investigation performed on a transplant patient, aligned with the patient_instrumental_investigation table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-patient-instrumental-investigation-ref"
        },
        "name" : "Patient instrumental investigation ID relationship",
        "description" : "Reference to patient instrumental investigation associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-patient-instrumental-investigation-ref"
        },
        "name" : "Patient instrumental investigation ID relationship",
        "description" : "Reference to a patient instrumental investigation associated with this visit (pat_inst_inv_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/patient-instrumental-investigation-result-cs"
        },
        "name" : "Patient Instrumental Investigation Result CodeSystem",
        "description" : "Result of the instrumental investigation test conducted (Normal / Abnormal).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient-instrumental-investigation-result-vs"
        },
        "name" : "Patient Instrumental Investigation Result ValueSet",
        "description" : "Allowed results for the instrumental investigation test (Normal, Abnormal).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-last-pra"
        },
        "name" : "Patient last PRA",
        "description" : "Most recent panel-reactive antibody (PRA) percentage prior to transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-max-pra"
        },
        "name" : "Patient maximum PRA",
        "description" : "Maximum panel-reactive antibody (PRA) percentage prior to transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-rh-factor"
        },
        "name" : "Patient Rh factor",
        "description" : "Rh factor of the transplant recipient.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/patient-rh-factor-cs"
        },
        "name" : "Patient Rh Factor CodeSystem",
        "description" : "Rh factor of the transplant recipient (maps from OMOP Positive/Negative).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/patient-rh-factor-vs"
        },
        "name" : "Patient Rh Factor ValueSet",
        "description" : "Allowed Rh factor values for transplant recipients.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-per-target-base-cover-100x"
        },
        "name" : "Per target base cover x100",
        "description" : "Percentage of selected bases covered at ≥100x.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-pool-id"
        },
        "name" : "Pool ID",
        "description" : "Identifier of the sample pool.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event"
        },
        "name" : "Post Event",
        "description" : "Clinical events occurring after transplant, associated with a patient and event type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-post-event-ref"
        },
        "name" : "Post event ID relationship",
        "description" : "Reference to post-transplant event associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-type"
        },
        "name" : "Post Event Type",
        "description" : "Definition of a post-transplant event type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-type-ref"
        },
        "name" : "Post event type ID relationship",
        "description" : "Reference to the type/category of the post-transplant event.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/post-event-type-name-ext"
        },
        "name" : "Post event type name",
        "description" : "Name of the post-transplant event type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/post-event-type-name-vs"
        },
        "name" : "Post Event Type Name",
        "description" : "ValueSet of post-transplant event types.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/post-event-type-name-cs"
        },
        "name" : "Post Event Type Name",
        "description" : "Types of post-transplant events.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-post-event-ref"
        },
        "name" : "Post-event ID relationship",
        "description" : "Reference to a post-transplant event (e.g. rejection episode) occurring at this visit (post_event_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/pre-medication-antihypertensive-drug-cs"
        },
        "name" : "Pre-medication Antihypertensive Drug CodeSystem",
        "description" : "Antihypertensive drugs used as pre-transplant medication.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/pre-medication-antihypertensive-drug-vs"
        },
        "name" : "Pre-medication Antihypertensive Drug ValueSet",
        "description" : "Allowed antihypertensive drugs for antihypertensive_treatment.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/outcome-pre-medication-ref"
        },
        "name" : "Pre-medication ID relationship",
        "description" : "Reference to pre-transplant medication information associated with this outcome.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-pre-medication-ref"
        },
        "name" : "Pre-medication ID relationship",
        "description" : "Reference to pre-medication information associated with this visit (pre_medication_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication-patient-ref"
        },
        "name" : "Pre-medication patient reference",
        "description" : "patient_id – reference to the transplant recipient for whom the pre-medication is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/pre-medication-type-cs"
        },
        "name" : "Pre-medication Type CodeSystem",
        "description" : "Type of pre-transplant medication record.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/pre-medication-type-vs"
        },
        "name" : "Pre-medication Type ValueSet",
        "description" : "Allowed type(s) for pre-medication records.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication"
        },
        "name" : "Pre-transplant Medication",
        "description" : "Pre-transplant medication record aligned with the pre_medication table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-raw-data"
        },
        "name" : "Raw data",
        "description" : "Link or identifier to raw data files.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-read-count"
        },
        "name" : "Read count",
        "description" : "Total number of reads for this locus.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-read-length"
        },
        "name" : "Read length",
        "description" : "Information about the length of the read.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-read-type"
        },
        "name" : "Read type",
        "description" : "Information about the method of sequence reading.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-patient-ref"
        },
        "name" : "Recipient patient reference",
        "description" : "patient_id – reference to the transplant recipient for whom maintenance therapy is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-reference-allele"
        },
        "name" : "Reference allele",
        "description" : "Reference allele sequence (e.g., A).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/reference-genome"
        },
        "name" : "Reference Genome",
        "description" : "Reference genome definition used by genomic tests, including build_name and FASTA path.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/reference-genome-build-cs"
        },
        "name" : "Reference Genome Build CodeSystem",
        "description" : "Reference genome build names.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/reference-genome-build-vs"
        },
        "name" : "Reference Genome Build ValueSet",
        "description" : "Allowed reference genome build names (GRCh38, GRCh37).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/reference-genome-fasta-path"
        },
        "name" : "Reference genome FASTA path",
        "description" : "Filesystem or URI path of the reference genome FASTA file.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-reference-genome"
        },
        "name" : "Reference Genome ID relationship",
        "description" : "Reference to the reference genome used for this genomic test.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-reference-genome-ref"
        },
        "name" : "Reference genome ID relationship",
        "description" : "Reference to the reference genome used in this methylomic study.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-reference-sequence"
        },
        "name" : "Reference sequence",
        "description" : "Transcript ID based on a protein-coding RNA (mRNA), including accession and version number.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-renal-disease-extra"
        },
        "name" : "Renal disease diagnosis (free text)",
        "description" : "Additional description or free-text for the renal disease diagnosis.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-renal-disease-code"
        },
        "name" : "Renal disease diagnosis code",
        "description" : "Primary renal disease diagnosis (coding system TBD; may map from OMOP or local codes).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-instrumental-investigation-result"
        },
        "name" : "Result of the instrumental investigation",
        "description" : "result – result of the instrumental investigation test conducted (Normal / Abnormal).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/pre-medication-rituximab"
        },
        "name" : "Rituximab pre-medication",
        "description" : "rituximab – any rituximab given pre-transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-sample-id"
        },
        "name" : "Sample ID",
        "description" : "Sample identifier used in the epigenome study.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/bio-sample-send-ingemm-date"
        },
        "name" : "Sample send to INGEMM date",
        "description" : "send_ingemm_date – date when the sample was sent to INGEMM.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-sample-type"
        },
        "name" : "Sample type",
        "description" : "Type of sample used in the epigenome study (Blood, Saliva, Other tissues).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-scan-date"
        },
        "name" : "Scan date",
        "description" : "Date when the array was scanned.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-second-warm-ischemia-time"
        },
        "name" : "Second warm ischaemia time (minutes)",
        "description" : "Second warm ischaemia time for the graft in minutes (2_warm_ischemia_time, kidney only).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-sentrix-barcodearray"
        },
        "name" : "Sentrix barcode array",
        "description" : "Sentrix array barcode.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-sentrix-position"
        },
        "name" : "Sentrix position",
        "description" : "Position on the Sentrix array.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-sequence-alteration"
        },
        "name" : "Sequence alteration",
        "description" : "Structural variant type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-sequencing-device"
        },
        "name" : "Sequencing device",
        "description" : "Sequencer machine information.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-snp-reader-device"
        },
        "name" : "SNP reader device",
        "description" : "Device used as SNP reader.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-start-date"
        },
        "name" : "Start date of maintenance therapy",
        "description" : "Date when this maintenance immunosuppressant regimen was started.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region-start-position"
        },
        "name" : "Start position",
        "description" : "Start position of the target region (genomic coordinate).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-systolic-blood-pressure"
        },
        "name" : "Systolic blood pressure",
        "description" : "Systolic blood pressure in mmHg.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-target-capture"
        },
        "name" : "Target capture",
        "description" : "Information about the capture method of examined and targeted region.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/epigenome-study-target-disease-id"
        },
        "name" : "Target disease ID",
        "description" : "Identifier of the target disease for this epigenome study.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/target-region"
        },
        "name" : "Target Region",
        "description" : "Target gene / genomic region associated with a genomic test platform.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/methylomic-study-target-region-id"
        },
        "name" : "Target region ID",
        "description" : "Identifier of the target region for which methylation information is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-target-region-ref"
        },
        "name" : "Target region ID relationship",
        "description" : "Reference to the target region (gene/region) for which the variant information is recorded.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-temperature"
        },
        "name" : "Temperature",
        "description" : "Body temperature in degrees Celsius.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-time-diagnosis-to-transplant"
        },
        "name" : "Time from diagnosis to transplant (months)",
        "description" : "Months between disease diagnosis and transplant date (time_diag_to_tx).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant"
        },
        "name" : "Transplant",
        "description" : "Encounter profile representing a transplant, linking the transplant recipient and donor and aligned with the transplant table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:logical"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-case"
        },
        "name" : "Transplant Case Logical Model",
        "description" : "High-level logical model summarising a pediatric transplant case in PROTECT-CHILD.\n\nIt connects the main clinical and data domains:\n- Recipient (PatientTransplant)\n- Donor (Donor)\n- Transplant encounter (Transplant)\n- Visits and follow-up\n- Concomitant diseases and medications\n- Immunosuppression\n- Clinical variables, labs, microbiology, instrumental investigations\n- Events and outcomes\n- Provenance / technical metadata",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/donor"
        },
        "name" : "Transplant Donor",
        "description" : "Donor profile based on the FHIR Patient resource, aligned with the donor table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-donor-ref"
        },
        "name" : "Transplant donor reference",
        "description" : "Reference to the donor associated with this transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit-transplant-ref"
        },
        "name" : "Transplant ID relationship",
        "description" : "Reference to the transplant associated with this visit (transplant_id).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/patient-transplant"
        },
        "name" : "Transplant Recipient",
        "description" : "Transplant recipient profile based on the FHIR Patient resource, aligned with the patient table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/transplant-type-cs"
        },
        "name" : "Transplant Type CodeSystem",
        "description" : "Type of solid-organ transplant (liver, kidney, combined liver-kidney).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/transplant-type-vs"
        },
        "name" : "Transplant Type ValueSet",
        "description" : "Allowed transplant types.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-biliary-anastomosis-type"
        },
        "name" : "Type of surgical biliary anastomosis",
        "description" : "Type of biliary reconstruction used (type_surgical_biliary_anastomosis).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/biliary-anastomosis-type-cs"
        },
        "name" : "Type of surgical biliary anastomosis CodeSystem",
        "description" : "Types of biliary anastomosis used in liver transplantation.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/biliary-anastomosis-type-vs"
        },
        "name" : "Type of surgical biliary anastomosis ValueSet",
        "description" : "Allowed types of biliary anastomosis in liver transplant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/immunosuppressive-maintenance-unit-id"
        },
        "name" : "Unit ID",
        "description" : "unit_id – identifier of the dose unit (e.g. mg, mg/kg, etc.), aligned with unit_id column in the DM.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/lab-test-unit-ref"
        },
        "name" : "Unit ID relationship",
        "description" : "Reference to the unit definition associated with this lab test.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-urine-bkv-dna"
        },
        "name" : "Urine BKV-DNA",
        "description" : "urine_bkv_dna – detection of BK virus DNA in urine; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation"
        },
        "name" : "Variant Annotation",
        "description" : "Annotation of a variant occurrence using external databases and classifications.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/genomic-test-variant-calling-tools"
        },
        "name" : "Variant calling tools",
        "description" : "Name and version of the variant calling tool.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-variant-class-level"
        },
        "name" : "Variant class level",
        "description" : "Classification level for the variant.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-variant-exon-number"
        },
        "name" : "Variant exon number",
        "description" : "Exon number in which the variant occurred.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-variant-feature"
        },
        "name" : "Variant feature",
        "description" : "Functional variant type.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence"
        },
        "name" : "Variant Occurrence",
        "description" : "Variant occurrence information within a target region.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-variant-occurrence-ref"
        },
        "name" : "Variant occurrence ID relationship",
        "description" : "Reference to the variant occurrence this annotation refers to.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-variant-origin"
        },
        "name" : "Variant origin",
        "description" : "Origin of the variant (e.g., inherited, de novo, somatic).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-variant-pathogeny"
        },
        "name" : "Variant pathogenicity",
        "description" : "Pathogenicity assessment (e.g., pathogenic, likely pathogenic, VUS, benign).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-occurrence-variant-read-depth"
        },
        "name" : "Variant read depth",
        "description" : "Variant depth divided by read depth.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/variant-annotation-variant-tier-level"
        },
        "name" : "Variant tier level",
        "description" : "Tier level for the variant (e.g., Tier 1, Tier 2).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-vascular-anomalies"
        },
        "name" : "Vascular anomalies",
        "description" : "Presence of relevant arterial/venous anatomical variants (vascular_anomalies).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/transplant-vessel-mismatch"
        },
        "name" : "Vessel mismatch (donor-recipient)",
        "description" : "Whether there is a vessel size/configuration mismatch requiring tailoring (vessel_mismatch_d_r).",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:resource"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/visit"
        },
        "name" : "Visit",
        "description" : "Encounter profile representing a visit in the transplant follow-up schedule, aligned with the visit table.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "CodeSystem"
          }
        ],
        "reference" : {
          "reference" : "CodeSystem/visit-type-cs"
        },
        "name" : "Visit Type CodeSystem",
        "description" : "Type of visit in the transplant follow-up schedule.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "ValueSet"
          }
        ],
        "reference" : {
          "reference" : "ValueSet/visit-type-vs"
        },
        "name" : "Visit Type ValueSet",
        "description" : "Allowed types of visits in the transplant follow-up schedule.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-vzv-igg"
        },
        "name" : "VZV serology IgG",
        "description" : "vzv_igg – presence of IgG antibodies to varicella–zoster virus; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/microbiology-vzv-igm"
        },
        "name" : "VZV serology IgM",
        "description" : "vzv_igm – presence of IgM antibodies to varicella–zoster virus; false=Negative, true=Positive.",
        "exampleBoolean" : false
      },
      {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
            "valueString" : "StructureDefinition:extension"
          }
        ],
        "reference" : {
          "reference" : "StructureDefinition/clinical-variable-weight"
        },
        "name" : "Weight",
        "description" : "Patient’s weight in kilograms.",
        "exampleBoolean" : false
      }
    ],
    "page" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "toc.html"
        }
      ],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
              "valueUrl" : "index.html"
            }
          ],
          "nameUrl" : "index.html",
          "title" : "Home",
          "generation" : "markdown"
        }
      ]
    },
    "parameter" : [
      {
        "code" : "path-resource",
        "value" : "input/capabilities"
      },
      {
        "code" : "path-resource",
        "value" : "input/examples"
      },
      {
        "code" : "path-resource",
        "value" : "input/extensions"
      },
      {
        "code" : "path-resource",
        "value" : "input/models"
      },
      {
        "code" : "path-resource",
        "value" : "input/operations"
      },
      {
        "code" : "path-resource",
        "value" : "input/profiles"
      },
      {
        "code" : "path-resource",
        "value" : "input/resources"
      },
      {
        "code" : "path-resource",
        "value" : "input/vocabulary"
      },
      {
        "code" : "path-resource",
        "value" : "input/maps"
      },
      {
        "code" : "path-resource",
        "value" : "input/testing"
      },
      {
        "code" : "path-resource",
        "value" : "input/history"
      },
      {
        "code" : "path-resource",
        "value" : "fsh-generated/resources"
      },
      {
        "code" : "path-pages",
        "value" : "template/config"
      },
      {
        "code" : "path-pages",
        "value" : "input/images"
      },
      {
        "code" : "path-tx-cache",
        "value" : "input-cache/txcache"
      }
    ]
  }
}

```
