# Epigenome Study ID Relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Epigenome Study ID Relationship**

## Extension: Epigenome Study ID Relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-epigenome-study-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BioSampleEpigenomeStudyRef |

epigenome_study_id – reference to epigenome study linked to this sample.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Biological Sample](StructureDefinition-biosample.md)
* Examples for this Extension: [Specimen/biosample-example-1](Specimen-biosample-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/bio-sample-epigenome-study-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bio-sample-epigenome-study-ref.csv), [Excel](StructureDefinition-bio-sample-epigenome-study-ref.xlsx), [Schematron](StructureDefinition-bio-sample-epigenome-study-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bio-sample-epigenome-study-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-epigenome-study-ref",
  "version" : "0.1.0",
  "name" : "BioSampleEpigenomeStudyRef",
  "title" : "Epigenome Study ID Relationship",
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
  "description" : "epigenome_study_id – reference to epigenome study linked to this sample.",
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
        "short" : "Epigenome Study ID Relationship",
        "definition" : "epigenome_study_id – reference to epigenome study linked to this sample."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-epigenome-study-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study"
            ]
          }
        ]
      }
    ]
  }
}

```
