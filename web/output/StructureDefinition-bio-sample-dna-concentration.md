# DNA concentration - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DNA concentration**

## Extension: DNA concentration 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:BioSampleDNAConcentration |

dna_concentration – DNA concentration for the sample (float).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Biological Sample](StructureDefinition-biosample.md)
* Examples for this Extension: [Specimen/biosample-example-1](Specimen-biosample-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/bio-sample-dna-concentration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bio-sample-dna-concentration.csv), [Excel](StructureDefinition-bio-sample-dna-concentration.xlsx), [Schematron](StructureDefinition-bio-sample-dna-concentration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bio-sample-dna-concentration",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration",
  "version" : "0.1.0",
  "name" : "BioSampleDNAConcentration",
  "title" : "DNA concentration",
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
  "description" : "dna_concentration – DNA concentration for the sample (float).",
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
        "short" : "DNA concentration",
        "definition" : "dna_concentration – DNA concentration for the sample (float).",
        "constraint" : [
          {
            "key" : "biosample-dna-concentration-nonnegative",
            "severity" : "error",
            "human" : "DNA concentration must be zero or positive.",
            "expression" : "valueDecimal >= 0",
            "source" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration"
          }
        ]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/bio-sample-dna-concentration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      }
    ]
  }
}

```
