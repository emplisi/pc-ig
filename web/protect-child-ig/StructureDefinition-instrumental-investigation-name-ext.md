# Instrumental investigation name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Instrumental investigation name**

## Extension: Instrumental investigation name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation-name-ext | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:InstrumentalInvestigationName |

Name of the instrumental investigation test conducted.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Instrumental Investigation](StructureDefinition-instrumental-investigation.md)
* Examples for this Extension: [Basic/instrumental-investigation-example-1](Basic-instrumental-investigation-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/instrumental-investigation-name-ext)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-instrumental-investigation-name-ext.csv), [Excel](StructureDefinition-instrumental-investigation-name-ext.xlsx), [Schematron](StructureDefinition-instrumental-investigation-name-ext.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "instrumental-investigation-name-ext",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation-name-ext",
  "version" : "0.1.0",
  "name" : "InstrumentalInvestigationName",
  "title" : "Instrumental investigation name",
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
  "description" : "Name of the instrumental investigation test conducted.",
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
        "short" : "Instrumental investigation name",
        "definition" : "Name of the instrumental investigation test conducted."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/instrumental-investigation-name-ext"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://example.org/fhir/ValueSet/instrumental-investigation-name"
        }
      }
    ]
  }
}

```
