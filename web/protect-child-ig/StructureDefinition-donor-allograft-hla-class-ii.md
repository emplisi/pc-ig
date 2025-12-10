# Donor allograft HLA Class II loci - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor allograft HLA Class II loci**

## Extension: Donor allograft HLA Class II loci 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-ii | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:DonorAllograftHLAClassII |

Donor HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Donor](StructureDefinition-donor.md)
* Examples for this Extension: [Patient/ExampleDonor1](Patient-ExampleDonor1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/donor-allograft-hla-class-ii)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-donor-allograft-hla-class-ii.csv), [Excel](StructureDefinition-donor-allograft-hla-class-ii.xlsx), [Schematron](StructureDefinition-donor-allograft-hla-class-ii.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "donor-allograft-hla-class-ii",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-ii",
  "version" : "0.1.0",
  "name" : "DonorAllograftHLAClassII",
  "title" : "Donor allograft HLA Class II loci",
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
  "description" : "Donor HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ).",
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
        "short" : "Donor allograft HLA Class II loci",
        "definition" : "Donor HLA Class II loci relevant for the transplant (HLA-DR, HLA-DP, HLA-DQ)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-ii"
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
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/patient-hla-class-ii-vs"
        }
      }
    ]
  }
}

```
