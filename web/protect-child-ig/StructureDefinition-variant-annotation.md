# Variant Annotation - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Variant Annotation**

## Resource Profile: Variant Annotation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VariantAnnotation |

 
Annotation of a variant occurrence using external databases and classifications. 

**Usages:**

* Refer to this Profile: [Transplant Case Logical Model](StructureDefinition-transplant-case.md)
* Examples for this Profile: [Basic/variant-annotation-example-1](Basic-variant-annotation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/variant-annotation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-variant-annotation.csv), [Excel](StructureDefinition-variant-annotation.xlsx), [Schematron](StructureDefinition-variant-annotation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "variant-annotation",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation",
  "version" : "0.1.0",
  "name" : "VariantAnnotation",
  "title" : "Variant Annotation",
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
  "description" : "Annotation of a variant occurrence using external databases and classifications.",
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
        "id" : "Basic.extension:variantOccurrenceId",
        "path" : "Basic.extension",
        "sliceName" : "variantOccurrenceId",
        "short" : "Variant occurrence ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-occurrence-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:annotationDatabase",
        "path" : "Basic.extension",
        "sliceName" : "annotationDatabase",
        "short" : "Annotation database",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-annotation-database"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantOrigin",
        "path" : "Basic.extension",
        "sliceName" : "variantOrigin",
        "short" : "Variant origin",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-origin"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantPathogeny",
        "path" : "Basic.extension",
        "sliceName" : "variantPathogeny",
        "short" : "Variant pathogenicity",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-pathogeny"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantClassLevel",
        "path" : "Basic.extension",
        "sliceName" : "variantClassLevel",
        "short" : "Variant class level",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-class-level"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:variantTierLevel",
        "path" : "Basic.extension",
        "sliceName" : "variantTierLevel",
        "short" : "Variant tier level",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-variant-tier-level"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:alleleFrequency",
        "path" : "Basic.extension",
        "sliceName" : "alleleFrequency",
        "short" : "Allele frequency",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-allele-frequency"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:medication",
        "path" : "Basic.extension",
        "sliceName" : "medication",
        "short" : "Medication",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/variant-annotation-medication"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Variant annotation ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/variant-annotation-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Variant annotation category",
        "mustSupport" : true
      },
      {
        "id" : "Basic.code.coding",
        "path" : "Basic.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Basic.code.coding.system",
        "path" : "Basic.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/CodeSystem/variant-annotation-type"
      },
      {
        "id" : "Basic.code.coding.code",
        "path" : "Basic.code.coding.code",
        "min" : 1
      }
    ]
  }
}

```
