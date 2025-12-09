# Instrumental Investigation - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instrumental Investigation**

## Resource Profile: Instrumental Investigation 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation | *Version*:0.1.0 |
| Draft as of 2025-12-09 | *Computable Name*:InstrumentalInvestigation |

 
Catalogue of instrumental investigation tests, aligned with the instrumental_investigation table. 

**Usages:**

* Refer to this Profile: [Instrumental investigation ID relationship](StructureDefinition-patient-instrumental-investigation-instrument-ref.md)
* Examples for this Profile: [Basic/instrumental-investigation-example-1](Basic-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/instrumental-investigation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-instrumental-investigation.csv), [Excel](StructureDefinition-instrumental-investigation.xlsx), [Schematron](StructureDefinition-instrumental-investigation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "instrumental-investigation",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation",
  "version" : "0.1.0",
  "name" : "InstrumentalInvestigation",
  "title" : "Instrumental Investigation",
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
  "description" : "Catalogue of instrumental investigation tests, aligned with the instrumental_investigation table.",
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
        },
        "min" : 1
      },
      {
        "id" : "Basic.extension:name",
        "path" : "Basic.extension",
        "sliceName" : "name",
        "short" : "name – Name of the instrumental investigation test conducted",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation-name-ext"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier",
        "path" : "Basic.identifier",
        "short" : "instrumental_investigation_id – identifier of the instrumental investigation test",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Basic.identifier.system",
        "path" : "Basic.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/fhir/NamingSystem/instrumental-investigation-id"
      },
      {
        "id" : "Basic.identifier.value",
        "path" : "Basic.identifier.value",
        "min" : 1
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "short" : "Kind of Basic resource (instrumental investigation definition)",
        "mustSupport" : true
      },
      {
        "id" : "Basic.code.text",
        "path" : "Basic.code.text",
        "min" : 1,
        "patternString" : "Instrumental investigation test definition"
      }
    ]
  }
}

```
