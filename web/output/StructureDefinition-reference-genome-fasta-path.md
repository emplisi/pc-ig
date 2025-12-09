# Reference genome FASTA path - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reference genome FASTA path**

## Extension: Reference genome FASTA path 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome-fasta-path | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:ReferenceGenomeFastaPath |

Filesystem or URI path of the reference genome FASTA file.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Reference Genome](StructureDefinition-reference-genome.md)
* Examples for this Extension: [Basic/reference-genome-grch38](Basic-reference-genome-grch38.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/reference-genome-fasta-path)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-reference-genome-fasta-path.csv), [Excel](StructureDefinition-reference-genome-fasta-path.xlsx), [Schematron](StructureDefinition-reference-genome-fasta-path.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "reference-genome-fasta-path",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome-fasta-path",
  "version" : "0.1.0",
  "name" : "ReferenceGenomeFastaPath",
  "title" : "Reference genome FASTA path",
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
  "description" : "Filesystem or URI path of the reference genome FASTA file.",
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
        "short" : "Reference genome FASTA path",
        "definition" : "Filesystem or URI path of the reference genome FASTA file."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome-fasta-path"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
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
