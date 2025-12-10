# Post event type ID relationship - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Post event type ID relationship**

## Extension: Post event type ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:PostEventTypeRef |

Reference to the type/category of the post-transplant event.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Post Event](StructureDefinition-post-event.md)
* Examples for this Extension: [Basic/post-event-example-1](Basic-post-event-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/post-event-type-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-post-event-type-ref.csv), [Excel](StructureDefinition-post-event-type-ref.xlsx), [Schematron](StructureDefinition-post-event-type-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "post-event-type-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-ref",
  "version" : "0.1.0",
  "name" : "PostEventTypeRef",
  "title" : "Post event type ID relationship",
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
  "description" : "Reference to the type/category of the post-transplant event.",
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
        "short" : "Post event type ID relationship",
        "definition" : "Reference to the type/category of the post-transplant event."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/post-event-type"
            ]
          }
        ]
      }
    ]
  }
}

```
