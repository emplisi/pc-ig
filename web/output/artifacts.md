# Artifacts Summary - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Transplant Case Logical Model](StructureDefinition-transplant-case.md) | High-level logical model summarising a pediatric transplant case in PROTECT-CHILD.It connects the main clinical and data domains:* Recipient (PatientTransplant)
* Donor (Donor)
* Transplant encounter (Transplant)
* Visits and follow-up
* Concomitant diseases and medications
* Immunosuppression
* Clinical variables, labs, microbiology, instrumental investigations
* Events and outcomes
* Provenance / technical metadata
 |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Biological Sample](StructureDefinition-biosample.md) | Biological sample linked to transplant patients and omics studies, aligned with the bio_sample table. |
| [Clinical Variable](StructureDefinition-clinical-variable.md) | Clinical variables and vital signs recorded for a transplant patient. |
| [Concomitant Disease](StructureDefinition-concomitant-disease.md) | Relevant concomitant diseases associated to a subject or record. |
| [Concomitant Episode](StructureDefinition-concomitant-episode.md) | Clinical episode related to a concomitant disease for a transplant patient. |
| [Concomitant Medication](StructureDefinition-concomitant-medication.md) | Concomitant medication records associated with a concomitant episode. |
| [Epigenome Study](StructureDefinition-epigenome-study.md) | Epigenome (e.g. methylation array) study metadata and platform details. |
| [Genomic Test](StructureDefinition-genomic-test.md) | Definition of a genomic test / sequencing platform and pipeline configuration. |
| [Immunosuppressant](StructureDefinition-immunosuppressant.md) | Immunosuppressive drug definition used in initial or maintenance therapy. |
| [Immunosuppressant Induction to Patient](StructureDefinition-immunosuppressive-induction-patient.md) | Record of immunosuppressive induction treatment given to a transplant patient. |
| [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md) | Maintenance immunosuppressive therapy given to the transplant patient, aligned with the immunosuppressive_maintenance_patient table. |
| [Instrumental Investigation](StructureDefinition-instrumental-investigation.md) | Catalogue of instrumental investigation tests, aligned with the instrumental_investigation table. |
| [Lab Result](StructureDefinition-lab-result-observation.md) | Individual laboratory result for a transplant recipient, aligned with the lab_result table. |
| [Lab Test](StructureDefinition-lab-test.md) | Definition of a laboratory test, including its name and unit. |
| [Laboratory DiagnosticReport](StructureDefinition-lab-report.md) | Laboratory report grouping one or more lab result observations for a transplant recipient. |
| [Marker of Immune Function](StructureDefinition-marker-immune-function.md) | Markers of immune function including HLA and non-HLA antibodies for a transplant patient. |
| [Methylomic Study](StructureDefinition-methylomic-study.md) | Methylomic study / locus-level methylation metrics. |
| [Microbiology](StructureDefinition-microbiology.md) | Microbiology results related to transplant recipients and/or donors, aligned with the microbiology table. |
| [Outcome](StructureDefinition-outcome.md) | Outcome information for transplant patients, linked to multiple clinical domains. |
| [Outcome Type](StructureDefinition-outcome-type.md) | Definition of an outcome type used to categorize outcome records. |
| [Patient Instrumental Investigation](StructureDefinition-patient-instrumental-investigation.md) | Instrumental investigation performed on a transplant patient, aligned with the patient_instrumental_investigation table. |
| [Post Event](StructureDefinition-post-event.md) | Clinical events occurring after transplant, associated with a patient and event type. |
| [Post Event Type](StructureDefinition-post-event-type.md) | Definition of a post-transplant event type. |
| [Pre-transplant Medication](StructureDefinition-pre-medication.md) | Pre-transplant medication record aligned with the pre_medication table. |
| [Reference Genome](StructureDefinition-reference-genome.md) | Reference genome definition used by genomic tests, including build_name and FASTA path. |
| [Target Region](StructureDefinition-target-region.md) | Target gene / genomic region associated with a genomic test platform. |
| [Transplant](StructureDefinition-transplant.md) | Encounter profile representing a transplant, linking the transplant recipient and donor and aligned with the transplant table. |
| [Transplant Donor](StructureDefinition-donor.md) | Donor profile based on the FHIR Patient resource, aligned with the donor table. |
| [Transplant Recipient](StructureDefinition-patient-transplant.md) | Transplant recipient profile based on the FHIR Patient resource, aligned with the patient table. |
| [Variant Annotation](StructureDefinition-variant-annotation.md) | Annotation of a variant occurrence using external databases and classifications. |
| [Variant Occurrence](StructureDefinition-variant-occurrence.md) | Variant occurrence information within a target region. |
| [Visit](StructureDefinition-visit.md) | Encounter profile representing a visit in the transplant follow-up schedule, aligned with the visit table. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AECA / other non-HLA antibodies](StructureDefinition-marker-immune-function-aeca-other.md) | Anti-endothelial cell antibodies or other non-HLA antibodies not captured above. |
| [AT1R antibody result](StructureDefinition-marker-immune-function-atr1.md) | Angiotensin II type-1 receptor (AT1R) antibody result. |
| [Adenovirus serology IgG](StructureDefinition-microbiology-adenovirus-igg.md) | adenovirus_igg – presence of IgG antibodies to adenovirus; false=Negative, true=Positive. |
| [Adenovirus serology IgM](StructureDefinition-microbiology-adenovirus-igm.md) | adenovirus_igm – presence of IgM antibodies to adenovirus; false=Negative, true=Positive. |
| [Age at DNA extraction](StructureDefinition-epigenome-study-age-at-dna-extraction.md) | Age (in years) of the subject at the time of DNA extraction. |
| [Alignment tools](StructureDefinition-genomic-test-alignment-tools.md) | Name and version of the alignment tool. |
| [Allele frequency](StructureDefinition-variant-annotation-allele-frequency.md) | Allele frequency for the variant. |
| [Alternate allele](StructureDefinition-variant-occurrence-alternate-allele.md) | Variant allele sequence (e.g., C). |
| [Annotation database](StructureDefinition-variant-annotation-annotation-database.md) | Database used for this variant annotation. |
| [Annotation databases](StructureDefinition-genomic-test-annotation-databases.md) | Information about the databases used for annotation. |
| [Annotation tools](StructureDefinition-genomic-test-annotation-tools.md) | Information about the tool used for annotation. |
| [Anti-MICA antibody result](StructureDefinition-marker-immune-function-mica.md) | Anti-MICA (MHC class I–related chain A) antibody result. |
| [Anti-MICB antibody result](StructureDefinition-marker-immune-function-micb.md) | Anti-MICB (MHC class I–related chain B) antibody result. |
| [Antihypertensive treatment](StructureDefinition-pre-medication-antihypertensive-treatment.md) | antihypertensive_treatment – blood-pressure–lowering drug(s) used pre-transplant. |
| [Antiviral prophylaxis pre-medication](StructureDefinition-pre-medication-antiviral-phrophylaxis.md) | antiviral_phrophylaxis – preventive antiviral medication(s) given to reduce risk of viral infection or reactivation (Kidney only). |
| [Array date](StructureDefinition-epigenome-study-array-date.md) | Date when the array was run. |
| [BKV FISH on kidney biopsy](StructureDefinition-microbiology-bkv-fish-kidney-biopsy.md) | bkv_fish_kidney_biopsy – BK virus FISH on kidney biopsy; false=Negative, true=Positive. |
| [BKV-DNA on kidney biopsy](StructureDefinition-microbiology-bkv-dna-kidney-biopsy.md) | bkv_dna_kidney_biopsy – detection of BK virus DNA on kidney biopsy; false=Negative, true=Positive. |
| [Beta value](StructureDefinition-methylomic-study-beta-value.md) | Beta value representing methylation level. |
| [BioSample ID relationship](StructureDefinition-visit-bio-sample-ref.md) | Reference to the primary biosample collected at this visit (bio_sample_id). |
| [Bisulfite date](StructureDefinition-epigenome-study-bisulfite-date.md) | Date of bisulfite conversion. |
| [Bisulfite reference kit](StructureDefinition-epigenome-study-bisulfite-reference-kit.md) | Bisulfite conversion kit used in the epigenome experiment. |
| [Blood BKV-DNA](StructureDefinition-microbiology-blood-bkv-dna.md) | blood_bkv_dna – detection of BK virus DNA in blood; false=Negative, true=Positive. |
| [Blood CMV-DNA](StructureDefinition-microbiology-cmv-dna.md) | cmv_dna – CMV nucleic acid test result (false=Negative, true=Positive). |
| [Blood EBV-DNA](StructureDefinition-microbiology-ebv-dna.md) | ebv_dna – EBV nucleic acid test result (quantitative, float). |
| [Blood Parvovirus B19-DNA](StructureDefinition-microbiology-parvovirus-b19-dna.md) | parvovirus_b19_dna – detection of parvovirus B19 DNA in blood; false=Negative, true=Positive. |
| [CMV serology IgG](StructureDefinition-microbiology-cmv-igg.md) | cmv_igg – presence of IgG antibodies against CMV; false=Negative, true=Positive. |
| [CMV serology IgM](StructureDefinition-microbiology-cmv-igm.md) | cmv_igm – presence of IgM antibodies against CMV; false=Negative, true=Positive. |
| [CNV locus](StructureDefinition-variant-occurrence-cnv-locus.md) | Locus information for CNV. |
| [Chip type](StructureDefinition-epigenome-study-chip-type.md) | Type of chip used for the epigenome array. |
| [Chromosome ID](StructureDefinition-target-region-chromosome-id.md) | Chromosome identifier (e.g. 1–22, 23=X, 24=Y, 25=MT). |
| [Chromosome coordinate](StructureDefinition-genomic-test-chromosome-corrdinate.md) | Coordinate system for numbering the chromosomes. |
| [Clinical variable ID relationship](StructureDefinition-outcome-clinical-variable-ref.md) | Reference to clinical variable/vital signs information associated with this outcome. |
| [Clinical variable ID relationship](StructureDefinition-visit-clinical-variable-ref.md) | Reference to clinical variables recorded at this visit (clinical_variable_id). |
| [Cold ischaemia time (minutes)](StructureDefinition-transplant-cold-ischaemia-time.md) | Cold ischaemia time for the graft in minutes (cold_ischemia_time). |
| [Concomitant disease ID relationship](StructureDefinition-concomitant-episode-disease-ref.md) | Reference to the concomitant disease record associated with this episode. |
| [Concomitant disease name(s)](StructureDefinition-concomitant-disease-name.md) | Set of relevant concomitant diseases. |
| [Concomitant episode ID relationship](StructureDefinition-concomitant-medication-episode-ref.md) | Reference to the concomitant episode this medication belongs to. |
| [Concomitant episode ID relationship](StructureDefinition-outcome-concomitant-episode-ref.md) | Reference to concomitant episode information associated with this outcome. |
| [Concomitant episode ID relationship](StructureDefinition-visit-concomitant-episode-ref.md) | Reference to a concomitant episode associated with this visit (concomitant_episode_id). |
| [Copy number](StructureDefinition-variant-occurrence-copy-number.md) | Copy number value for CNV data. |
| [DNA concentration](StructureDefinition-bio-sample-dna-concentration.md) | dna_concentration – DNA concentration for the sample (float). |
| [Date](StructureDefinition-clinical-variable-date.md) | Date when vital signs were measured. |
| [Date of histological diagnosis](StructureDefinition-patient-histological-diagnosis-date.md) | Date of histological diagnosis. |
| [Date of instrumental investigation](StructureDefinition-patient-instrumental-investigation-date.md) | Date on which the instrumental investigation was performed. |
| [Date of liver disease diagnosis](StructureDefinition-patient-liver-disease-diagnosis-date.md) | Date at which liver disease was diagnosed. |
| [Date of renal disease diagnosis](StructureDefinition-patient-renal-disease-diagnosis-date.md) | Date at which renal disease was diagnosed. |
| [Detection p-value](StructureDefinition-methylomic-study-detection-p-value.md) | Detection p-value for the methylation measurement. |
| [Diastolic blood pressure](StructureDefinition-clinical-variable-diastolic-blood-pressure.md) | Diastolic blood pressure in mmHg. |
| [Donor ABO group](StructureDefinition-donor-abo-group.md) | ABO blood group of the donor. |
| [Donor ID relationship](StructureDefinition-microbiology-donor-ref.md) | donor_id – reference to the donor associated with this microbiology record. |
| [Donor Rh factor](StructureDefinition-donor-rh-factor.md) | Rh factor of the donor. |
| [Donor allograft HLA Class I loci](StructureDefinition-donor-allograft-hla-class-i.md) | Donor HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C). |
| [Donor allograft HLA Class II loci](StructureDefinition-donor-allograft-hla-class-ii.md) | Donor HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ). |
| [Donor liver graft type](StructureDefinition-donor-liver-type.md) | Whether the donor liver graft is complete or partial. |
| [Donor pre-kidney-transplant dialysis type](StructureDefinition-donor-pre-ktx-dialysis-type.md) | Type of dialysis the donor received before kidney transplantation. |
| [Donor-specific antibody (DSA)](StructureDefinition-marker-immune-function-dsa.md) | Donor-specific antibody flag for the HLA antibody above (yes/no). |
| [Donor/recipient weight ratio](StructureDefinition-transplant-donor-recipient-weight-ratio.md) | Ratio of donor graft weight to recipient body weight (d_r_weight_ration). |
| [Dose of immunosuppressant](StructureDefinition-immunosuppressive-maintenance-dose.md) | dose – maintenance dose of the immunosuppressant. |
| [Dose unit](StructureDefinition-immunosuppressive-induction-dose-unit.md) | Unit for the selected immunosuppressant dose. |
| [EBV serology IgG EBNA](StructureDefinition-microbiology-ebv-igg-ebna.md) | ebv_igg_ebna – presence of IgG antibodies against EBV Nuclear Antigen (EBNA); false=Negative, true=Positive. |
| [EBV serology IgG anti-VCA](StructureDefinition-microbiology-ebv-igg-anti-vca.md) | ebv_igg_anti_vca – presence of IgG antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive. |
| [EBV serology IgM anti-EA](StructureDefinition-microbiology-ebv-igm-anti-ea.md) | ebv_igm_anti_ea – presence of IgM antibodies against EBV Early Antigen (EA); false=Negative, true=Positive. |
| [EBV serology IgM anti-VCA](StructureDefinition-microbiology-ebv-igm-anti-vca.md) | ebv_igm_anti_vca – presence of IgM antibodies against EBV Viral Capsid Antigen (VCA); false=Negative, true=Positive. |
| [ETAR antibody result](StructureDefinition-marker-immune-function-etar.md) | Endothelin receptor type-A (ETAR) antibody result. |
| [End date of maintenance therapy](StructureDefinition-immunosuppressive-maintenance-end-date.md) | Date when this maintenance immunosuppressant regimen was stopped (if applicable). |
| [End position](StructureDefinition-target-region-end-position.md) | End position of the target region (genomic coordinate). |
| [Epigenome Study ID Relationship](StructureDefinition-bio-sample-epigenome-study-ref.md) | epigenome_study_id – reference to epigenome study linked to this sample. |
| [Episode date](StructureDefinition-concomitant-episode-date.md) | Date of the concomitant episode. |
| [Episode description](StructureDefinition-concomitant-episode-description.md) | Description of the concomitant episode. |
| [Event description](StructureDefinition-post-event-description.md) | Free-text description of the post-transplant event. |
| [Event end date](StructureDefinition-post-event-end-date.md) | Date when the post-transplant event resolved or ended. |
| [Event onset date](StructureDefinition-post-event-onset-date.md) | Date when the post-transplant event started. |
| [First warm ischaemia time (minutes)](StructureDefinition-transplant-first-warm-ischemia-time.md) | First warm ischaemia time for the graft in minutes (1_warm_ischemia_time). |
| [Fusion breakpoint](StructureDefinition-variant-occurrence-fusion-breakpoint.md) | Genomic position where a fusion variant occurs. |
| [Fusion supporting reads](StructureDefinition-variant-occurrence-fusion-supporting-reads.md) | Supporting read count of the fusion. |
| [Genetic origin](StructureDefinition-variant-occurrence-genetic-origin.md) | Somatic or germline origin of the variant. |
| [Genomic Test ID Relationship](StructureDefinition-bio-sample-genomic-test-ref.md) | genomic_test_id – reference to the genomic test configuration used for this sample. |
| [Genomic Test Name](StructureDefinition-genomic-test-name.md) | Name of the platform using sequencing, assigned by the institution. |
| [Genomic Test Version](StructureDefinition-genomic-test-version.md) | Version of the platform using sequencing, assigned by the institution. |
| [Genomic test ID relationship](StructureDefinition-epigenome-study-genomic-test-ref.md) | Reference to the genomic test used in this epigenome study. |
| [Genomic test ID relationship](StructureDefinition-target-region-genomic-test-ref.md) | Reference to the genomic test (platform) containing this target region. |
| [Genotype](StructureDefinition-variant-occurrence-genotype.md) | Allele state. |
| [HGNC ID](StructureDefinition-target-region-hgnc-id.md) | Gene ID based on HGNC nomenclature. |
| [HGNC symbol](StructureDefinition-target-region-hgnc-symbol.md) | Gene symbol given by HGNC nomenclature. |
| [HGVS c. notation](StructureDefinition-variant-occurrence-hgvs-c.md) | Nomenclature for the sequence variant at the DNA level (HGVS c. notation). |
| [HGVS p. notation](StructureDefinition-variant-occurrence-hgvs-p.md) | Nomenclature for the sequence variant at the protein level (HGVS p. notation). |
| [HLA antibody class or locus](StructureDefinition-marker-immune-function-hla-antibody-class.md) | Class or locus of the HLA antibody being recorded. |
| [HSV serology IgG](StructureDefinition-microbiology-hsv-igg.md) | hsv_igg – presence of IgG antibodies to HSV; false=Negative, true=Positive. |
| [HSV serology IgM](StructureDefinition-microbiology-hsv-igm.md) | hsv_igm – presence of IgM antibodies to HSV; false=Negative, true=Positive. |
| [Heart rate](StructureDefinition-clinical-variable-heart-rate.md) | Pulse rate in beats per minute. |
| [Height](StructureDefinition-clinical-variable-height.md) | Patient’s height/length in centimeters. |
| [Immunosuppressant ID relationship](StructureDefinition-immunosuppressive-induction-imm-ref.md) | Reference to the immunosuppressant drug used for induction. |
| [Immunosuppressant ID relationship](StructureDefinition-immunosuppressive-maintenance-immunosuppressant-ref.md) | immunosuppressant_id – reference to the immunosuppressant drug used for maintenance. |
| [Immunosuppressant dose](StructureDefinition-immunosuppressive-induction-dose.md) | Dose of the selected immunosuppressant used for induction. |
| [Immunosuppressant name](StructureDefinition-immunosuppressant-name.md) | Name/type of the immunosuppressant drug. |
| [Immunosuppressive induction ID relationship](StructureDefinition-visit-immunosuppressive-induction-ref.md) | Reference to immunosuppressive induction treatment associated with this visit (imm_ind_pat_id). |
| [Immunosuppressive maintenance ID relationship](StructureDefinition-visit-immunosuppressive-maintenance-ref.md) | Reference to immunosuppressive maintenance treatment associated with this visit (imm_main_pat_id). |
| [Instrumental investigation ID relationship](StructureDefinition-patient-instrumental-investigation-instrument-ref.md) | instrumental_investigation_id – reference to the catalogue entry describing the test performed. |
| [Instrumental investigation name](StructureDefinition-instrumental-investigation-name-ext.md) | Name of the instrumental investigation test conducted. |
| [Intraoperative complications](StructureDefinition-transplant-intraoperative-complications.md) | Whether and which complications occurred during surgery (intraoperative_complications). |
| [Kidney side](StructureDefinition-transplant-kidney-side.md) | Transplanted kidney side (kidney_side). |
| [Lab result ID relationship](StructureDefinition-visit-lab-result-ref.md) | Reference to laboratory results associated with this visit (lab_result_id). |
| [Lab result patient reference](StructureDefinition-lab-result-patient-ref.md) | patient_id – reference to the transplant recipient for whom this lab result is recorded. |
| [Lab test ID relationship](StructureDefinition-outcome-lab-test-ref.md) | Reference to lab test definition associated with this outcome. |
| [Lab test name](StructureDefinition-lab-test-name-ext.md) | Name of the laboratory test conducted. |
| [Lab test reference](StructureDefinition-lab-result-labtest-ref.md) | lab_test_id – reference to the lab test definition (LabTest catalog row) associated with this lab result. |
| [Liver disease diagnosis (free text)](StructureDefinition-patient-liver-disease-extra.md) | Additional description or free-text for the liver disease diagnosis. |
| [Liver disease diagnosis code](StructureDefinition-patient-liver-disease-code.md) | Primary liver disease diagnosis (coding system TBD; may map from OMOP or local codes). |
| [M value](StructureDefinition-methylomic-study-m-value.md) | M-value transformation of the beta value. |
| [MFI value](StructureDefinition-marker-immune-function-mfi-value.md) | Median Fluorescence Intensity (MFI) for the HLA antibody listed in hla_antibody_class. |
| [Manifest number](StructureDefinition-epigenome-study-manifest-number.md) | Manifest number for the array. |
| [Mean target coverage](StructureDefinition-genomic-test-mean-target-coverage.md) | Mean target coverage. |
| [Medication](StructureDefinition-concomitant-medication-code.md) | Type of concomitant medication applied. |
| [Medication](StructureDefinition-variant-annotation-medication.md) | Medication(s) relevant to this variant annotation. |
| [Methylated reads](StructureDefinition-methylomic-study-methylated-reads.md) | Number of reads showing methylation. |
| [Methylomic Study ID Relationship](StructureDefinition-bio-sample-methylomic-study-ref.md) | methylomic_study_id – reference to methylomic study linked to this sample. |
| [Microbiology ID relationship](StructureDefinition-outcome-microbiology-ref.md) | Reference to microbiology results associated with this outcome. |
| [Microbiology ID relationship](StructureDefinition-visit-microbiology-ref.md) | Reference to microbiology results associated with this visit (microbiology_id). |
| [Nephrectomy of original kidney](StructureDefinition-transplant-nephrectomy-original-kidney.md) | Whether the patient’s native kidney was surgically removed before the transplant (nephrectomy_original_kidney). |
| [Other intraoperative complications (free text)](StructureDefinition-transplant-intraoperative-complications-other.md) | Specification of other types of complications during surgery (intraoperative_complications_other). |
| [Other pre-transplant medications](StructureDefinition-pre-medication-other-medications.md) | other_medications – any other relevant pre-transplant medications. |
| [Outcome ID relationship](StructureDefinition-visit-outcome-ref.md) | Reference to the outcome record associated with this visit (outcome_id). |
| [Outcome date](StructureDefinition-outcome-date.md) | Date associated with the outcome (e.g. assessment date). |
| [Outcome type ID relationship](StructureDefinition-outcome-type-ref.md) | Reference to the type/category of outcome. |
| [Outcome type name](StructureDefinition-outcome-type-name-ext.md) | Name of the outcome type. |
| [Oxygen saturation](StructureDefinition-clinical-variable-oxygen-saturation.md) | Oxygen saturation at rest, in percent. |
| [Parvovirus B19 serology IgG](StructureDefinition-microbiology-parvovirus-b19-dna-igg.md) | parvovirus_b19_dna_igg – presence of IgG antibodies to parvovirus B19; false=Negative, true=Positive. |
| [Parvovirus B19 serology IgM](StructureDefinition-microbiology-parvovirus-b19-dna-igm.md) | parvovirus_b19_dna_igm – presence of IgM antibodies to parvovirus B19; false=Negative, true=Positive. |
| [Patient ABO group](StructureDefinition-patient-abo-group.md) | ABO blood group of the transplant recipient. |
| [Patient ID relationship](StructureDefinition-clinical-variable-patient-ref.md) | Reference to the patient for whom clinical variables are recorded. |
| [Patient ID relationship](StructureDefinition-concomitant-episode-patient-ref.md) | Reference to the patient for whom the concomitant episode is recorded. |
| [Patient ID relationship](StructureDefinition-immunosuppressive-induction-patient-ref.md) | Reference to the patient receiving immunosuppressive induction. |
| [Patient ID relationship](StructureDefinition-marker-immune-function-patient-ref.md) | Reference to the patient for whom the immune function markers are recorded. |
| [Patient ID relationship](StructureDefinition-microbiology-patient-ref.md) | patient_id – reference to the transplant recipient associated with this microbiology record. |
| [Patient ID relationship](StructureDefinition-outcome-patient-ref.md) | Reference to the patient for whom the outcome is recorded. |
| [Patient ID relationship](StructureDefinition-patient-instrumental-investigation-patient-ref.md) | patient_id – reference to the transplant recipient for whom the instrumental investigation was performed. |
| [Patient ID relationship](StructureDefinition-post-event-patient-ref.md) | Reference to the patient who experienced the post-transplant event. |
| [Patient Rh factor](StructureDefinition-patient-rh-factor.md) | Rh factor of the transplant recipient. |
| [Patient allograft HLA Class I](StructureDefinition-patient-allograft-hla-class-i.md) | Recipient’s HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C). |
| [Patient allograft HLA Class II](StructureDefinition-patient-allograft-hla-class-ii.md) | Recipient’s HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ). |
| [Patient instrumental investigation ID relationship](StructureDefinition-outcome-patient-instrumental-investigation-ref.md) | Reference to patient instrumental investigation associated with this outcome. |
| [Patient instrumental investigation ID relationship](StructureDefinition-visit-patient-instrumental-investigation-ref.md) | Reference to a patient instrumental investigation associated with this visit (pat_inst_inv_id). |
| [Patient last PRA](StructureDefinition-patient-last-pra.md) | Most recent panel-reactive antibody (PRA) percentage prior to transplant. |
| [Patient maximum PRA](StructureDefinition-patient-max-pra.md) | Maximum panel-reactive antibody (PRA) percentage prior to transplant. |
| [Per target base cover x100](StructureDefinition-genomic-test-per-target-base-cover-100x.md) | Percentage of selected bases covered at ≥100x. |
| [Pool ID](StructureDefinition-epigenome-study-pool-id.md) | Identifier of the sample pool. |
| [Post event ID relationship](StructureDefinition-outcome-post-event-ref.md) | Reference to post-transplant event associated with this outcome. |
| [Post event type ID relationship](StructureDefinition-post-event-type-ref.md) | Reference to the type/category of the post-transplant event. |
| [Post event type name](StructureDefinition-post-event-type-name-ext.md) | Name of the post-transplant event type. |
| [Post-event ID relationship](StructureDefinition-visit-post-event-ref.md) | Reference to a post-transplant event (e.g. rejection episode) occurring at this visit (post_event_id). |
| [Pre-medication ID relationship](StructureDefinition-outcome-pre-medication-ref.md) | Reference to pre-transplant medication information associated with this outcome. |
| [Pre-medication ID relationship](StructureDefinition-visit-pre-medication-ref.md) | Reference to pre-medication information associated with this visit (pre_medication_id). |
| [Pre-medication patient reference](StructureDefinition-pre-medication-patient-ref.md) | patient_id – reference to the transplant recipient for whom the pre-medication is recorded. |
| [Raw data](StructureDefinition-epigenome-study-raw-data.md) | Link or identifier to raw data files. |
| [Read count](StructureDefinition-methylomic-study-read-count.md) | Total number of reads for this locus. |
| [Read length](StructureDefinition-genomic-test-read-length.md) | Information about the length of the read. |
| [Read type](StructureDefinition-genomic-test-read-type.md) | Information about the method of sequence reading. |
| [Recipient patient reference](StructureDefinition-immunosuppressive-maintenance-patient-ref.md) | patient_id – reference to the transplant recipient for whom maintenance therapy is recorded. |
| [Reference Genome ID relationship](StructureDefinition-genomic-test-reference-genome.md) | Reference to the reference genome used for this genomic test. |
| [Reference allele](StructureDefinition-variant-occurrence-reference-allele.md) | Reference allele sequence (e.g., A). |
| [Reference genome FASTA path](StructureDefinition-reference-genome-fasta-path.md) | Filesystem or URI path of the reference genome FASTA file. |
| [Reference genome ID relationship](StructureDefinition-methylomic-study-reference-genome-ref.md) | Reference to the reference genome used in this methylomic study. |
| [Reference sequence](StructureDefinition-variant-occurrence-reference-sequence.md) | Transcript ID based on a protein-coding RNA (mRNA), including accession and version number. |
| [Renal disease diagnosis (free text)](StructureDefinition-patient-renal-disease-extra.md) | Additional description or free-text for the renal disease diagnosis. |
| [Renal disease diagnosis code](StructureDefinition-patient-renal-disease-code.md) | Primary renal disease diagnosis (coding system TBD; may map from OMOP or local codes). |
| [Result of the instrumental investigation](StructureDefinition-patient-instrumental-investigation-result.md) | result – result of the instrumental investigation test conducted (Normal / Abnormal). |
| [Rituximab pre-medication](StructureDefinition-pre-medication-rituximab.md) | rituximab – any rituximab given pre-transplant. |
| [SNP reader device](StructureDefinition-epigenome-study-snp-reader-device.md) | Device used as SNP reader. |
| [Sample ID](StructureDefinition-epigenome-study-sample-id.md) | Sample identifier used in the epigenome study. |
| [Sample send to INGEMM date](StructureDefinition-bio-sample-send-ingemm-date.md) | send_ingemm_date – date when the sample was sent to INGEMM. |
| [Sample type](StructureDefinition-epigenome-study-sample-type.md) | Type of sample used in the epigenome study (Blood, Saliva, Other tissues). |
| [Scan date](StructureDefinition-epigenome-study-scan-date.md) | Date when the array was scanned. |
| [Second warm ischaemia time (minutes)](StructureDefinition-transplant-second-warm-ischemia-time.md) | Second warm ischaemia time for the graft in minutes (2_warm_ischemia_time, kidney only). |
| [Sentrix barcode array](StructureDefinition-epigenome-study-sentrix-barcodearray.md) | Sentrix array barcode. |
| [Sentrix position](StructureDefinition-epigenome-study-sentrix-position.md) | Position on the Sentrix array. |
| [Sequence alteration](StructureDefinition-variant-occurrence-sequence-alteration.md) | Structural variant type. |
| [Sequencing device](StructureDefinition-genomic-test-sequencing-device.md) | Sequencer machine information. |
| [Start date of maintenance therapy](StructureDefinition-immunosuppressive-maintenance-start-date.md) | Date when this maintenance immunosuppressant regimen was started. |
| [Start position](StructureDefinition-target-region-start-position.md) | Start position of the target region (genomic coordinate). |
| [Systolic blood pressure](StructureDefinition-clinical-variable-systolic-blood-pressure.md) | Systolic blood pressure in mmHg. |
| [Target capture](StructureDefinition-genomic-test-target-capture.md) | Information about the capture method of examined and targeted region. |
| [Target disease ID](StructureDefinition-epigenome-study-target-disease-id.md) | Identifier of the target disease for this epigenome study. |
| [Target region ID](StructureDefinition-methylomic-study-target-region-id.md) | Identifier of the target region for which methylation information is recorded. |
| [Target region ID relationship](StructureDefinition-variant-occurrence-target-region-ref.md) | Reference to the target region (gene/region) for which the variant information is recorded. |
| [Temperature](StructureDefinition-clinical-variable-temperature.md) | Body temperature in degrees Celsius. |
| [Time from diagnosis to transplant (months)](StructureDefinition-transplant-time-diagnosis-to-transplant.md) | Months between disease diagnosis and transplant date (time_diag_to_tx). |
| [Transplant ID relationship](StructureDefinition-visit-transplant-ref.md) | Reference to the transplant associated with this visit (transplant_id). |
| [Transplant donor reference](StructureDefinition-transplant-donor-ref.md) | Reference to the donor associated with this transplant. |
| [Type of surgical biliary anastomosis](StructureDefinition-transplant-biliary-anastomosis-type.md) | Type of biliary reconstruction used (type_surgical_biliary_anastomosis). |
| [Unit ID](StructureDefinition-immunosuppressive-maintenance-unit-id.md) | unit_id – identifier of the dose unit (e.g. mg, mg/kg, etc.), aligned with unit_id column in the DM. |
| [Unit ID relationship](StructureDefinition-lab-test-unit-ref.md) | Reference to the unit definition associated with this lab test. |
| [Urine BKV-DNA](StructureDefinition-microbiology-urine-bkv-dna.md) | urine_bkv_dna – detection of BK virus DNA in urine; false=Negative, true=Positive. |
| [VZV serology IgG](StructureDefinition-microbiology-vzv-igg.md) | vzv_igg – presence of IgG antibodies to varicella–zoster virus; false=Negative, true=Positive. |
| [VZV serology IgM](StructureDefinition-microbiology-vzv-igm.md) | vzv_igm – presence of IgM antibodies to varicella–zoster virus; false=Negative, true=Positive. |
| [Variant calling tools](StructureDefinition-genomic-test-variant-calling-tools.md) | Name and version of the variant calling tool. |
| [Variant class level](StructureDefinition-variant-annotation-variant-class-level.md) | Classification level for the variant. |
| [Variant exon number](StructureDefinition-variant-occurrence-variant-exon-number.md) | Exon number in which the variant occurred. |
| [Variant feature](StructureDefinition-variant-occurrence-variant-feature.md) | Functional variant type. |
| [Variant occurrence ID relationship](StructureDefinition-variant-annotation-variant-occurrence-ref.md) | Reference to the variant occurrence this annotation refers to. |
| [Variant origin](StructureDefinition-variant-annotation-variant-origin.md) | Origin of the variant (e.g., inherited, de novo, somatic). |
| [Variant pathogenicity](StructureDefinition-variant-annotation-variant-pathogeny.md) | Pathogenicity assessment (e.g., pathogenic, likely pathogenic, VUS, benign). |
| [Variant read depth](StructureDefinition-variant-occurrence-variant-read-depth.md) | Variant depth divided by read depth. |
| [Variant tier level](StructureDefinition-variant-annotation-variant-tier-level.md) | Tier level for the variant (e.g., Tier 1, Tier 2). |
| [Vascular anomalies](StructureDefinition-transplant-vascular-anomalies.md) | Presence of relevant arterial/venous anatomical variants (vascular_anomalies). |
| [Vessel mismatch (donor-recipient)](StructureDefinition-transplant-vessel-mismatch.md) | Whether there is a vessel size/configuration mismatch requiring tailoring (vessel_mismatch_d_r). |
| [Weight](StructureDefinition-clinical-variable-weight.md) | Patient’s weight in kilograms. |
| [dbSNP rsID](StructureDefinition-variant-occurrence-rs-id.md) | dbSNP reference ID (rsID) maintained by NCBI. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BioSample Tissue Type ValueSet](ValueSet-biosample-tissue-type-vs.md) | Allowed tissue types for BioSample.tissue_type. |
| [Concomitant Disease Category ValueSet](ValueSet-concomitant-disease-category-vs.md) | ValueSet of relevant concomitant diseases. |
| [Concomitant Medication Category ValueSet](ValueSet-concomitant-medication-category-vs.md) | ValueSet of concomitant medication categories. |
| [Donor Liver Type ValueSet](ValueSet-donor-liver-type-vs.md) | Allowed values for donor liver type (Complete, Partial). |
| [Donor Pre-KTX Dialysis Type ValueSet](ValueSet-donor-pre-ktx-dialysis-type-vs.md) | Allowed dialysis types for donor prior to kidney transplant. |
| [Immunosuppressant Drug Type](ValueSet-immunosuppressant-drug-type-vs.md) | ValueSet of immunosuppressive drug types. |
| [Immunosuppressant Induction Dose Unit](ValueSet-immunosuppressive-induction-dose-unit-vs.md) | ValueSet of units for immunosuppressant induction dose. |
| [Immunosuppressive Maintenance to Patient Type ValueSet](ValueSet-immunosuppressive-maintenance-type-vs.md) | Allowed types for immunosuppressive maintenance records. |
| [Instrumental Investigation Name](ValueSet-instrumental-investigation-name-vs.md) | ValueSet of instrumental investigation tests conducted. |
| [Intraoperative Complications ValueSet](ValueSet-intraoperative-complication-vs.md) | Allowed intraoperative complications during liver transplantation. |
| [Kidney Side ValueSet](ValueSet-kidney-side-vs.md) | Allowed values for kidney side. |
| [Lab Result Unit ValueSet](ValueSet-lab-result-unit-vs.md) | Allowed units of measurement for lab result values (unit column). |
| [Lab Test Name](ValueSet-lab-test-name-vs.md) | ValueSet of laboratory tests conducted. |
| [Outcome Type Name](ValueSet-outcome-type-name-vs.md) | ValueSet of post-transplant outcome types. |
| [Patient ABO Group ValueSet](ValueSet-patient-abo-group-vs.md) | ABO blood groups for transplant recipients. |
| [Patient HLA Class I Loci ValueSet](ValueSet-patient-hla-class-i-vs.md) | Allowed Class I HLA loci (HLA-A, HLA-B, HLA-C). |
| [Patient HLA Class II Loci ValueSet](ValueSet-patient-hla-class-ii-vs.md) | Allowed Class II HLA loci (HLA-DR, HLA-DP, HLA-DQ). |
| [Patient Instrumental Investigation Result ValueSet](ValueSet-patient-instrumental-investigation-result-vs.md) | Allowed results for the instrumental investigation test (Normal, Abnormal). |
| [Patient Rh Factor ValueSet](ValueSet-patient-rh-factor-vs.md) | Allowed Rh factor values for transplant recipients. |
| [Post Event Type Name](ValueSet-post-event-type-name-vs.md) | ValueSet of post-transplant event types. |
| [Pre-medication Antihypertensive Drug ValueSet](ValueSet-pre-medication-antihypertensive-drug-vs.md) | Allowed antihypertensive drugs for antihypertensive_treatment. |
| [Pre-medication Type ValueSet](ValueSet-pre-medication-type-vs.md) | Allowed type(s) for pre-medication records. |
| [Reference Genome Build ValueSet](ValueSet-reference-genome-build-vs.md) | Allowed reference genome build names (GRCh38, GRCh37). |
| [Transplant Type ValueSet](ValueSet-transplant-type-vs.md) | Allowed transplant types. |
| [Type of surgical biliary anastomosis ValueSet](ValueSet-biliary-anastomosis-type-vs.md) | Allowed types of biliary anastomosis in liver transplant. |
| [Visit Type ValueSet](ValueSet-visit-type-vs.md) | Allowed types of visits in the transplant follow-up schedule. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BioSample Tissue Type CodeSystem](CodeSystem-biosample-tissue-type-cs.md) | Tissue types for biological samples (from the bio_sample table). |
| [Concomitant Disease Category](CodeSystem-concomitant-disease-category.md) | Categories of relevant concomitant diseases. |
| [Concomitant Medication Category](CodeSystem-concomitant-medication-category.md) | Categories of concomitant medications. |
| [Donor Liver Type CodeSystem](CodeSystem-donor-liver-type-cs.md) | Type of liver donation (complete vs partial). |
| [Donor Pre-KTX Dialysis Type CodeSystem](CodeSystem-donor-pre-ktx-dialysis-type-cs.md) | Dialysis type used for the donor prior to kidney transplantation. |
| [Immunosuppressant Drug Type](CodeSystem-immunosuppressant-drug-type-cs.md) | Types of immunosuppressive drugs used in the transplant setting. |
| [Immunosuppressant Induction Dose Unit](CodeSystem-immunosuppressive-induction-dose-unit-cs.md) | Units for immunosuppressant induction dose. |
| [Immunosuppressive Maintenance to Patient Type CodeSystem](CodeSystem-immunosuppressive-maintenance-type-cs.md) | Type of immunosuppressive maintenance record. |
| [Instrumental Investigation Name](CodeSystem-instrumental-investigation-name-cs.md) | Types of instrumental investigation tests conducted. |
| [Intraoperative Complications CodeSystem](CodeSystem-intraoperative-complication-cs.md) | Intraoperative complications during liver transplantation. |
| [Kidney Side CodeSystem](CodeSystem-kidney-side-cs.md) | Side of the kidney for nephrectomy / transplant context. |
| [Lab Result Unit CodeSystem](CodeSystem-lab-result-unit-cs.md) | Units of measurement used for laboratory results, aligned with the lab_result unit conceptual domain. |
| [Lab Test Name](CodeSystem-lab-test-name-cs.md) | Types of laboratory tests conducted. |
| [Outcome Type Name](CodeSystem-outcome-type-name-cs.md) | Types of clinical outcomes after transplant. |
| [Patient ABO Group CodeSystem](CodeSystem-patient-abo-group-cs.md) | ABO blood groups for transplant recipients (maps from OMOP A/B/AB/0). |
| [Patient HLA Class I Loci CodeSystem](CodeSystem-patient-hla-class-i-cs.md) | Class I HLA loci relevant to transplant matching. |
| [Patient HLA Class II Loci CodeSystem](CodeSystem-patient-hla-class-ii-cs.md) | Class II HLA loci relevant to transplant matching. |
| [Patient Instrumental Investigation Result CodeSystem](CodeSystem-patient-instrumental-investigation-result-cs.md) | Result of the instrumental investigation test conducted (Normal / Abnormal). |
| [Patient Rh Factor CodeSystem](CodeSystem-patient-rh-factor-cs.md) | Rh factor of the transplant recipient (maps from OMOP Positive/Negative). |
| [Post Event Type Name](CodeSystem-post-event-type-name-cs.md) | Types of post-transplant events. |
| [Pre-medication Antihypertensive Drug CodeSystem](CodeSystem-pre-medication-antihypertensive-drug-cs.md) | Antihypertensive drugs used as pre-transplant medication. |
| [Pre-medication Type CodeSystem](CodeSystem-pre-medication-type-cs.md) | Type of pre-transplant medication record. |
| [Reference Genome Build CodeSystem](CodeSystem-reference-genome-build-cs.md) | Reference genome build names. |
| [Transplant Type CodeSystem](CodeSystem-transplant-type-cs.md) | Type of solid-organ transplant (liver, kidney, combined liver-kidney). |
| [Type of surgical biliary anastomosis CodeSystem](CodeSystem-biliary-anastomosis-type-cs.md) | Types of biliary anastomosis used in liver transplantation. |
| [Visit Type CodeSystem](CodeSystem-visit-type-cs.md) | Type of visit in the transplant follow-up schedule. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example Biological Sample](Specimen-biosample-example-1.md) | Example biological sample used in Visit example. |
| [Example Clinical Variables](Basic-clinical-variable-example-1.md) | Example set of clinical variables for a transplant patient. |
| [Example Concomitant Disease](Basic-concomitant-disease-example-1.md) | Example record of a concomitant disease. |
| [Example Concomitant Episode](Basic-concomitant-episode-example-1.md) | Example concomitant episode for a transplant patient. |
| [Example Concomitant Medication](Basic-concomitant-medication-example-1.md) | Example concomitant medication for a concomitant episode. |
| [Example Epigenome Study](Basic-epigenome-study-example-1.md) | Example epigenome (methylation array) study record. |
| [Example Genomic Test](Basic-genomic-test-example-1.md) | Example genomic test / sequencing platform configuration. |
| [Example Immunosuppressant](Basic-immunosuppressant-example-1.md) | Example immunosuppressant drug definition. |
| [Example Immunosuppressant Induction to Patient](Basic-imm-ind-pat-example-1.md) | Example record of immunosuppressive induction therapy given to a patient. |
| [Example Immunosuppressive Maintenance to Patient](Basic-immunosuppressive-maintenance-patient-example-1.md) | Example record of maintenance immunosuppressive therapy for a transplant recipient. |
| [Example Instrumental Investigation](Basic-instrumental-investigation-example-1.md) | Example imaging/instrumental investigation for a transplant patient. |
| [Example Lab Result Observation](Observation-lab-result-observation-example-1.md) | Example creatinine result for a transplant recipient. |
| [Example Lab Test](Basic-lab-test-example-1.md) | Example definition of a lab test (Albumin). |
| [Example Laboratory Report](DiagnosticReport-lab-report-example-1.md) | Example lab report grouping a single creatinine result. |
| [Example Marker of Immune Function](Basic-mark-imm-func-example-1.md) | Example immune function marker record for a transplant patient. |
| [Example Methylomic Study](Basic-methylomic-study-example-1.md) | Example methylomic record for a locus. |
| [Example Microbiology record](Observation-microbiology-example-1.md) | Example microbiology panel for a transplant recipient. |
| [Example Outcome](Basic-outcome-example-1.md) | Example outcome record for a transplant patient. |
| [Example Outcome Type](Basic-outcome-type-example-1.md) | Example outcome type: Chronic renal failure after pLTx. |
| [Example Patient Instrumental Investigation](Observation-patient-instrumental-investigation-example-1.md) | Example of a patient instrumental investigation linked to InstrumentalInvestigation catalogue. |
| [Example Post Event Type](Basic-post-event-type-example-1.md) | Example post-transplant event type: Episodes of AKI after LTx. |
| [Example Post-Transplant Event](Basic-post-event-example-1.md) | Example of a post-transplant event (e.g., infection episode). |
| [Example Pre-medication](Basic-pre-medication-example-1.md) | Example record of pre-transplant medications. |
| [Example Reference Genome GRCh38](Basic-reference-genome-grch38.md) | Example GRCh38 reference genome used for genomic tests. |
| [Example Target Region](Basic-target-region-example-1.md) | Example target region linked to a genomic test. |
| [Example Variant Annotation](Basic-variant-annotation-example-1.md) | Example annotation for a variant occurrence. |
| [Example Variant Occurrence](Basic-variant-occurrence-example-1.md) | Example variant occurrence linked to a target region. |
| [Example transplant](Encounter-TransplantExample1.md) | Example transplant instance mapped from the transplant table. |
| [Example transplant donor](Patient-ExampleDonor1.md) | Example donor instance mapped from the donor table. |
| [Example transplant recipient](Patient-ExamplePatientTransplant1.md) | Example recipient instance mapped from the patient table. |
| [Example visit](Encounter-VisitExample1.md) | Example visit instance mapped from the visit table. |

