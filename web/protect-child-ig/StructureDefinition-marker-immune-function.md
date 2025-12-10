# Marker of Immune Function - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Marker of Immune Function**

## Resource Profile: Marker of Immune Function 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:MarkerImmuneFunction |

 
Markers of immune function including HLA and non-HLA antibodies for a transplant patient. 

**Usages:**

* Examples for this Profile: [Basic/mark-imm-func-example-1](Basic-mark-imm-func-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/marker-immune-function)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-marker-immune-function.csv), [Excel](StructureDefinition-marker-immune-function.xlsx), [Schematron](StructureDefinition-marker-immune-function.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "marker-immune-function",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function",
  "version" : "0.1.0",
  "name" : "MarkerImmuneFunction",
  "title" : "Marker of Immune Function",
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
  "description" : "Markers of immune function including HLA and non-HLA antibodies for a transplant patient.",
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
        "id" : "Basic.extension:patientId",
        "path" : "Basic.extension",
        "sliceName" : "patientId",
        "short" : "Patient ID relationship",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-patient-ref"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.extension:hlaAntibodyClass",
        "path" : "Basic.extension",
        "sliceName" : "hlaAntibodyClass",
        "short" : "Class or locus of the HLA antibody",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-hla-antibody-class"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:mfiValue",
        "path" : "Basic.extension",
        "sliceName" : "mfiValue",
        "short" : "MFI for that HLA antibody",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-mfi-value"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:dsa",
        "path" : "Basic.extension",
        "sliceName" : "dsa",
        "short" : "Donor-specific antibody flag (yes/no)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-dsa"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:atr1",
        "path" : "Basic.extension",
        "sliceName" : "atr1",
        "short" : "AT1R antibody result",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-atr1"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:etar",
        "path" : "Basic.extension",
        "sliceName" : "etar",
        "short" : "ETAR antibody result",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-etar"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:mica",
        "path" : "Basic.extension",
        "sliceName" : "mica",
        "short" : "Anti-MICA antibody result",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-mica"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:micb",
        "path" : "Basic.extension",
        "sliceName" : "micb",
        "short" : "Anti-MICB antibody result",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-micb"
            ]
          }
        ]
      },
      {
        "id" : "Basic.extension:aecaOther",
        "path" : "Basic.extension",
        "sliceName" : "aecaOther",
        "short" : "AECA / other non-HLA antibodies",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-aeca-other"
            ]
          }
        ]
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "Marker of immune function ID",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/marker-immune-function-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Immune function marker record category",
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
        "fixedUri" : "http://example.org/fhir/CodeSystem/marker-immune-function-type"
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
