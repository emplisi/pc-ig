# Immunosuppressant name - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressant name**

## Extension: Immunosuppressant name 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant-name | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:ImmunosuppressantName |

Name/type of the immunosuppressant drug.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Immunosuppressant](StructureDefinition-immunosuppressant.md)
* Examples for this Extension: [Basic/immunosuppressant-example-1](Basic-immunosuppressant-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/immunosuppressant-name)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-immunosuppressant-name.csv), [Excel](StructureDefinition-immunosuppressant-name.xlsx), [Schematron](StructureDefinition-immunosuppressant-name.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "immunosuppressant-name",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant-name",
  "version" : "0.1.0",
  "name" : "ImmunosuppressantName",
  "title" : "Immunosuppressant name",
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
  "description" : "Name/type of the immunosuppressant drug.",
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
        "short" : "Immunosuppressant name",
        "definition" : "Name/type of the immunosuppressant drug."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressant-name"
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
          "valueSet" : "http://example.org/fhir/ValueSet/immunosuppressant-drug-type"
        }
      }
    ]
  }
}

```
