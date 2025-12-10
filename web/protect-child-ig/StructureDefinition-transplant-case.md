# Transplant Case Logical Model - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant Case Logical Model**

## Logical Model: Transplant Case Logical Model 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-case | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:TransplantCase |

 
High-level logical model summarising a pediatric transplant case in PROTECT-CHILD. 
It connects the main clinical and data domains: 
* Recipient (PatientTransplant)
* Donor (Donor)
* Transplant encounter (Transplant)
* Visits and follow-up
* Concomitant diseases and medications
* Immunosuppression
* Clinical variables, labs, microbiology, instrumental investigations
* Events and outcomes
* Provenance / technical metadata
 

# TransplantCase logical model

The **TransplantCase** logical model provides a high-level, implementation-neutral view of how this IG represents a pediatric transplant case in PROTECT-CHILD.

**Example scenario**

A child with a rare metabolic liver disease is referred to one of the TransplantChild ERN centres and enrolled in the PROTECT-CHILD cohort. The recipient is represented using the [`Transplant Recipient`](StructureDefinition-patient-transplant.md) profile, and the donor as a [`Donor`](StructureDefinition-donor.md). The transplant admission itself is captured as a [`Transplant`](StructureDefinition-transplant.md) encounter linking recipient and donor, with the transplant centre and organ type recorded in a structured way.

In the months after surgery, each follow-up visit at the participating hospitals is recorded as a [`Visit`](StructureDefinition-visit.md), with routine laboratory monitoring ([`LabResult`](StructureDefinition-lab-result-observation.md) and [`LabReport`](StructureDefinition-lab-report.md)), infection work-up ([`Microbiology`](StructureDefinition-microbiology.md) observations grouped where appropriate in [`LabReport`](StructureDefinition-lab-report.md)), and instrumental investigations through [`PatientInstrumentalInvestigation`](StructureDefinition-patient-instrumental-investigation.md). Induction and maintenance immunosuppression are captured using [`PreMedication`](StructureDefinition-pre-medication.md), [`ImmunosuppressiveInductionPatient`](StructureDefinition-immunosuppressive-induction-patient.md), [`ImmunosuppressiveMaintenancePatient`](StructureDefinition-immunosuppressive-maintenance-patient.md), and the [`Immunosuppressant`](StructureDefinition-immunosuppressant.md) catalog.

Across the four pilot hospitals, biospecimens from these children (e.g. blood, liver biopsy) are recorded as [`BioSample`](StructureDefinition-biosample.md) and linked to genomic and methylomic analyses via [`GenomicTest`](StructureDefinition-genomic-test.md), [`VariantOccurrence`](StructureDefinition-variant-occurrence.md), [`VariantAnnotation`](StructureDefinition-variant-annotation.md), [`EpigenomeStudy`](StructureDefinition-epigenome-study.md), and [`MethylomicStudy`](StructureDefinition-methylomic-study.md). Rejection episodes and other post-transplant complications are stored as [`PostEvent`](StructureDefinition-post-event.md), while overall graft and patient status at key time points are captured in [`Outcome`](StructureDefinition-outcome.md).

In particular:

* **`recipient`** → [`Transplant Recipient`](StructureDefinition-patient-transplant.md) (recipient patient)
* **`donor`** → [`Donor`](StructureDefinition-donor.md) (donor patient)
* **`transplant`** → [`Transplant`](StructureDefinition-transplant.md) (Encounter) plus optional rejection-related [`PostEvent`](StructureDefinition-post-event.md) and [`Outcome`](StructureDefinition-outcome.md) resources
* **`visits`** → follow-up [`Visit`](StructureDefinition-visit.md) (Encounter) profiles
* **`concomitant`** → [`ConcomitantDisease`](StructureDefinition-concomitant-disease.md), [`ConcomitantEpisode`](StructureDefinition-concomitant-episode.md), [`ConcomitantMedication`](StructureDefinition-concomitant-medication.md)
* **`immunosuppression`** → [`PreMedication`](StructureDefinition-pre-medication.md), [`ImmunosuppressiveInductionPatient`](StructureDefinition-immunosuppressive-induction-patient.md), [`ImmunosuppressiveMaintenancePatient`](StructureDefinition-immunosuppressive-maintenance-patient.md), and [`Immunosuppressant`](StructureDefinition-immunosuppressant.md)
* **`clinicalData`** → [`ClinicalVariable`](StructureDefinition-clinical-variable.md), [`LabResultObservation`](StructureDefinition-lab-result-observation.md) and [`LabReport`](StructureDefinition-lab-report.md), [`Microbiology`](StructureDefinition-microbiology.md) (with microbiology reports also represented using [`LabReport`](StructureDefinition-lab-report.md)), [`PatientInstrumentalInvestigation`](StructureDefinition-patient-instrumental-investigation.md)
* **`omics`** → [`BioSample`](StructureDefinition-biosample.md) (Specimen) and associated [`GenomicTest`](StructureDefinition-genomic-test.md), [`VariantOccurrence`](StructureDefinition-variant-occurrence.md), [`VariantAnnotation`](StructureDefinition-variant-annotation.md), [`EpigenomeStudy`](StructureDefinition-epigenome-study.md), [`MethylomicStudy`](StructureDefinition-methylomic-study.md), [`ReferenceGenome`](StructureDefinition-reference-genome.md)
* **`eventsAndOutcomes`** → [`PostEvent`](StructureDefinition-post-event.md) and [`Outcome`](StructureDefinition-outcome.md)

This logical model is **not** intended for direct implementation. Instead, it serves as a **narrative map** that shows how the different FHIR profiles in PROTECT-CHILD fit together to represent a complete pediatric transplant case across clinical, laboratory, microbiology, biospecimen, and omics domains.

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/transplant-case)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transplant-case.csv), [Excel](StructureDefinition-transplant-case.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transplant-case",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-case",
  "version" : "0.1.0",
  "name" : "TransplantCase",
  "title" : "Transplant Case Logical Model",
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
  "description" : "High-level logical model summarising a pediatric transplant case in PROTECT-CHILD.\n\nIt connects the main clinical and data domains:\n- Recipient (PatientTransplant)\n- Donor (Donor)\n- Transplant encounter (Transplant)\n- Visits and follow-up\n- Concomitant diseases and medications\n- Immunosuppression\n- Clinical variables, labs, microbiology, instrumental investigations\n- Events and outcomes\n- Provenance / technical metadata",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-case",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "transplant-case",
        "path" : "transplant-case",
        "short" : "Transplant Case Logical Model",
        "definition" : "High-level logical model summarising a pediatric transplant case in PROTECT-CHILD.\n\nIt connects the main clinical and data domains:\n- Recipient (PatientTransplant)\n- Donor (Donor)\n- Transplant encounter (Transplant)\n- Visits and follow-up\n- Concomitant diseases and medications\n- Immunosuppression\n- Clinical variables, labs, microbiology, instrumental investigations\n- Events and outcomes\n- Provenance / technical metadata"
      },
      {
        "id" : "transplant-case.id",
        "path" : "transplant-case.id",
        "short" : "Case logical id",
        "definition" : "Logical identifier of the transplant case record in the PROTECT-CHILD infrastructure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "id"
          }
        ]
      },
      {
        "id" : "transplant-case.recipient",
        "path" : "transplant-case.recipient",
        "short" : "Recipient",
        "definition" : "Transplant recipient (PatientTransplant profile).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.recipient.patient",
        "path" : "transplant-case.recipient.patient",
        "short" : "Recipient patient",
        "definition" : "Reference to the PatientTransplant profile.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-transplant"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.recipient.centerId",
        "path" : "transplant-case.recipient.centerId",
        "short" : "Recipient center identifier",
        "definition" : "...ntifier of the center responsible for the transplant recipient.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.recipient.primaryDiagnosis",
        "path" : "transplant-case.recipient.primaryDiagnosis",
        "short" : "Primary diagnosis",
        "definition" : "Human-readable text or coded diagnosis leading to transplant.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.donor",
        "path" : "transplant-case.donor",
        "short" : "Donor",
        "definition" : "Transplant donor (Donor profile).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.donor.patient",
        "path" : "transplant-case.donor.patient",
        "short" : "Donor patient",
        "definition" : "Reference to the Donor profile.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.donor.type",
        "path" : "transplant-case.donor.type",
        "short" : "Donor type",
        "definition" : "Living / deceased (see DonorTypeVS).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.donor.aboGroup",
        "path" : "transplant-case.donor.aboGroup",
        "short" : "Donor ABO group",
        "definition" : "ABO blood group (see DonorABOGroupVS).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.donor.rhFactor",
        "path" : "transplant-case.donor.rhFactor",
        "short" : "Donor Rh factor",
        "definition" : "Rh factor (see DonorRhFactorVS).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.transplant",
        "path" : "transplant-case.transplant",
        "short" : "Transplant",
        "definition" : "Index transplant encounter and related procedure(s).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.transplant.encounter",
        "path" : "transplant-case.transplant.encounter",
        "short" : "Transplant encounter",
        "definition" : "Reference to the Transplant (Encounter) profile.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.transplant.date",
        "path" : "transplant-case.transplant.date",
        "short" : "Transplant date/time",
        "definition" : "Date and...e of the transplant (period.start of the Transplant encounter).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "transplant-case.transplant.type",
        "path" : "transplant-case.transplant.type",
        "short" : "Transplant type",
        "definition" : "Transplanted organ/type (e.g. kidney, liver).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.transplant.centerId",
        "path" : "transplant-case.transplant.centerId",
        "short" : "Transplant center identifier",
        "definition" : "Identifier of the transplant center.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.transplant.rejectionEpisodes",
        "path" : "transplant-case.transplant.rejectionEpisodes",
        "short" : "Rejection episodes",
        "definition" : "References to resources representing rejection episodes (e.g. specific PostEvent records).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.visits",
        "path" : "transplant-case.visits",
        "short" : "Visits",
        "definition" : "Pre- and post-transplant visits and follow-up encounters.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.visits.encounter",
        "path" : "transplant-case.visits.encounter",
        "short" : "Visit encounter",
        "definition" : "Reference to a Visit profile (Encounter).",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.visits.phase",
        "path" : "transplant-case.visits.phase",
        "short" : "Visit phase",
        "definition" : "Pre-transplant / immediate post-op / long-term follow-up.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.visits.notes",
        "path" : "transplant-case.visits.notes",
        "short" : "Visit notes",
        "definition" : "Free-text or summary for the visit.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.concomitant",
        "path" : "transplant-case.concomitant",
        "short" : "Concomitant conditions and medications",
        "definition" : "Concomitant diseases, episodes, and medications.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.concomitant.diseases",
        "path" : "transplant-case.concomitant.diseases",
        "short" : "Concomitant diseases",
        "definition" : "References to ConcomitantDisease records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-disease"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.concomitant.episodes",
        "path" : "transplant-case.concomitant.episodes",
        "short" : "Concomitant episodes",
        "definition" : "References to ConcomitantEpisode records associated with the recipient.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-episode"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.concomitant.medications",
        "path" : "transplant-case.concomitant.medications",
        "short" : "Concomitant medications",
        "definition" : "References to ConcomitantMedication records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/concomitant-medication"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.immunosuppression",
        "path" : "transplant-case.immunosuppression",
        "short" : "Immunosuppression",
        "definition" : "Immunosuppressive regimens and drugs.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.immunosuppression.preMedication",
        "path" : "transplant-case.immunosuppression.preMedication",
        "short" : "Pre-transplant medication",
        "definition" : "References to PreMedication records (pre-transplant).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/pre-medication"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.immunosuppression.induction",
        "path" : "transplant-case.immunosuppression.induction",
        "short" : "Induction immunosuppression",
        "definition" : "References to ImmunosuppressiveInductionPatient records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-patient"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.immunosuppression.maintenance",
        "path" : "transplant-case.immunosuppression.maintenance",
        "short" : "Maintenance immunosuppression",
        "definition" : "References to ImmunosuppressiveMaintenancePatient records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.immunosuppression.immunosuppressantCatalog",
        "path" : "transplant-case.immunosuppression.immunosuppressantCatalog",
        "short" : "Immunosuppressant catalog",
        "definition" : "References to Immunosuppressant entries used in this case.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData",
        "path" : "transplant-case.clinicalData",
        "short" : "Clinical data",
        "definition" : "Clinical va...iables, lab results, microbiology, instrumental investigations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.clinicalVariables",
        "path" : "transplant-case.clinicalData.clinicalVariables",
        "short" : "Clinical variables",
        "definition" : "References to ClinicalVariable records (e.g. vitals, scores).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.labReports",
        "path" : "transplant-case.clinicalData.labReports",
        "short" : "Lab reports",
        "definition" : "References to LabReport (DiagnosticReport) resources summarising lab results.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.labObservations",
        "path" : "transplant-case.clinicalData.labObservations",
        "short" : "Lab result observations",
        "definition" : "References to individual LabResultObservation resources.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-result-observation"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.microbiologyReports",
        "path" : "transplant-case.clinicalData.microbiologyReports",
        "short" : "Microbiology reports",
        "definition" : "References to LabReport (DiagnosticReport) resources containing microbiology results.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/lab-report"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.microbiologyObservations",
        "path" : "transplant-case.clinicalData.microbiologyObservations",
        "short" : "Microbiology observations",
        "definition" : "References to individual Microbiology observations.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.clinicalData.instrumentalInvestigations",
        "path" : "transplant-case.clinicalData.instrumentalInvestigations",
        "short" : "Instrumental investigations",
        "definition" : "References to PatientInstrumentalInvestigation records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/patient-instrumental-investigation"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics",
        "path" : "transplant-case.omics",
        "short" : "Omics and biological samples",
        "definition" : "BioSamples and omics studies/tests associated with the case.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.omics.samples",
        "path" : "transplant-case.omics.samples",
        "short" : "Biological samples",
        "definition" : "References to BioSample (Specimen) resources.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/biosample"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.genomicTests",
        "path" : "transplant-case.omics.genomicTests",
        "short" : "Genomic tests",
        "definition" : "References to GenomicTest records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/genomic-test"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.epigenomeStudies",
        "path" : "transplant-case.omics.epigenomeStudies",
        "short" : "Epigenome studies",
        "definition" : "References to EpigenomeStudy records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.methylomicStudies",
        "path" : "transplant-case.omics.methylomicStudies",
        "short" : "Methylomic studies",
        "definition" : "References to MethylomicStudy records.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/methylomic-study"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.referenceGenomes",
        "path" : "transplant-case.omics.referenceGenomes",
        "short" : "Reference genomes",
        "definition" : "ReferenceGenome entries used by GenomicTest.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.variantOccurrences",
        "path" : "transplant-case.omics.variantOccurrences",
        "short" : "Variant occurrences",
        "definition" : "References to VariantOccurrence records detected in genomic tests.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-occurrence"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.omics.variantAnnotations",
        "path" : "transplant-case.omics.variantAnnotations",
        "short" : "Variant annotations",
        "definition" : "References to VariantAnnotation records for identified variants.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.eventsAndOutcomes",
        "path" : "transplant-case.eventsAndOutcomes",
        "short" : "Events and outcomes",
        "definition" : "Post-transplant events and patient outcomes.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.eventsAndOutcomes.postEvents",
        "path" : "transplant-case.eventsAndOutcomes.postEvents",
        "short" : "Post-transplant events",
        "definition" : "References to PostEvent resources (e.g. rejection, infection, complications).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.eventsAndOutcomes.outcomes",
        "path" : "transplant-case.eventsAndOutcomes.outcomes",
        "short" : "Outcomes",
        "definition" : "References to Outcome resources (e.g. graft survival, patient survival).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/outcome"
            ]
          }
        ]
      },
      {
        "id" : "transplant-case.eventsAndOutcomes.lastFollowUpDate",
        "path" : "transplant-case.eventsAndOutcomes.lastFollowUpDate",
        "short" : "Last follow-up date",
        "definition" : "Date of last follow-up for this transplant case.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "transplant-case.provenance",
        "path" : "transplant-case.provenance",
        "short" : "Provenance and technical info",
        "definition" : "Technical metadata about data sources and transformations.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "transplant-case.provenance.sourceSystem",
        "path" : "transplant-case.provenance.sourceSystem",
        "short" : "Source systems",
        "definition" : "Names/identifiers of source systems contributing data to this case.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "transplant-case.provenance.extractDate",
        "path" : "transplant-case.provenance.extractDate",
        "short" : "Extraction date",
        "definition" : "Date/t... this case was extracted into the PROTECT-CHILD infrastructure.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "transplant-case.provenance.notes",
        "path" : "transplant-case.provenance.notes",
        "short" : "Provenance notes",
        "definition" : "Additional free-text notes about data quality or provenance.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
