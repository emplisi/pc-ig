# Reference Genome - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Reference Genome**

## Resource Profile: Reference Genome 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ReferenceGenome |

 
Reference genome definition used by genomic tests, including build_name and FASTA path. 

**Usages:**

* Refer to this Profile: [Reference Genome ID relationship](StructureDefinition-genomic-test-reference-genome.md), [Reference genome ID relationship](StructureDefinition-methylomic-study-reference-genome-ref.md) and [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/reference-genome-grch38](Basic-reference-genome-grch38.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/reference-genome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-reference-genome.csv), [Excel](StructureDefinition-reference-genome.xlsx), [Schematron](StructureDefinition-reference-genome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "reference-genome",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome",
  "version" : "0.1.0",
  "name" : "ReferenceGenome",
  "title" : "Reference Genome",
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
  "description" : "Reference genome definition used by genomic tests, including build_name and FASTA path.",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Basic",
        "path" : "Basic"
      },
      {
        "id" : "Basic.extension",
        "path" : "Basic.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Basic.extension:fasta_path",
        "path" : "Basic.extension",
        "sliceName" : "fasta_path",
        "short" : "fasta_path – filesystem or URI of the reference genome FASTA",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/reference-genome-fasta-path"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "reference_genome_id – identifier for the reference genome",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/reference-genome-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "build_name – reference genome build name",
        "mustSupport" : true,
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BasicResourceType"
            }
          ],
          "strength" : "required",
          "description" : "Codes for identifying types of resources not yet defined by FHIR.",
          "valueSet" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/reference-genome-build-vs"
        }
      }
    ]
  }
}

```
