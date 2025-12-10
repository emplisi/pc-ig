# Donor allograft HLA Class I loci - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Donor allograft HLA Class I loci**

## Extension: Donor allograft HLA Class I loci 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-i | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:DonorAllograftHLAClassI |

Donor HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Transplant Donor](StructureDefinition-donor.md)
* Examples for this Extension: [Patient/ExampleDonor1](Patient-ExampleDonor1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/donor-allograft-hla-class-i)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-donor-allograft-hla-class-i.csv), [Excel](StructureDefinition-donor-allograft-hla-class-i.xlsx), [Schematron](StructureDefinition-donor-allograft-hla-class-i.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "donor-allograft-hla-class-i",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-i",
  "version" : "0.1.0",
  "name" : "DonorAllograftHLAClassI",
  "title" : "Donor allograft HLA Class I loci",
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
  "description" : "Donor HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C).",
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
        "short" : "Donor allograft HLA Class I loci",
        "definition" : "Donor HLA Class I loci relevant for the transplant (HLA-A, HLA-B, HLA-C)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/donor-allograft-hla-class-i"
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
