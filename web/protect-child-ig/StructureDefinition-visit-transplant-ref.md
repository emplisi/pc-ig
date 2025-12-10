# Transplant ID relationship - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transplant ID relationship**

## Extension: Transplant ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VisitTransplantRef |

Reference to the transplant associated with this visit (transplant_id).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Visit](StructureDefinition-visit.md)
* Examples for this Extension: [Encounter/VisitExample1](Encounter-VisitExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/visit-transplant-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-visit-transplant-ref.csv), [Excel](StructureDefinition-visit-transplant-ref.xlsx), [Schematron](StructureDefinition-visit-transplant-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visit-transplant-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref",
  "version" : "0.1.0",
  "name" : "VisitTransplantRef",
  "title" : "Transplant ID relationship",
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
  "description" : "Reference to the transplant associated with this visit (transplant_id).",
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
        "short" : "Transplant ID relationship",
        "definition" : "Reference to the transplant associated with this visit (transplant_id)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant"
            ]
          }
        ]
      }
    ]
  }
}

```
