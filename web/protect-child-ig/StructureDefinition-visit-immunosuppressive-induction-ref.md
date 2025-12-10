# Immunosuppressive induction ID relationship - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immunosuppressive induction ID relationship**

## Extension: Immunosuppressive induction ID relationship 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:VisitImmunosuppressiveInductionRef |

Reference to immunosuppressive induction treatment associated with this visit (imm_ind_pat_id).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Visit](StructureDefinition-visit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/visit-immunosuppressive-induction-ref)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-visit-immunosuppressive-induction-ref.csv), [Excel](StructureDefinition-visit-immunosuppressive-induction-ref.xlsx), [Schematron](StructureDefinition-visit-immunosuppressive-induction-ref.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "visit-immunosuppressive-induction-ref",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref",
  "version" : "0.1.0",
  "name" : "VisitImmunosuppressiveInductionRef",
  "title" : "Immunosuppressive induction ID relationship",
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
  "description" : "Reference to immunosuppressive induction treatment associated with this visit (imm_ind_pat_id).",
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
        "short" : "Immunosuppressive induction ID relationship",
        "definition" : "Reference to immunosuppressive induction treatment associated with this visit (imm_ind_pat_id)."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-immunosuppressive-induction-ref"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-patient"
            ]
          }
        ]
      }
    ]
  }
}

```
