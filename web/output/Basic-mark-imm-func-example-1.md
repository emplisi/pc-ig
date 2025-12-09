# Example Marker of Immune Function - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Marker of Immune Function**

## Example Basic: Example Marker of Immune Function

Profile: [Marker of Immune Function](StructureDefinition-marker-immune-function.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**HLA antibody class or locus**: HLA-DQ7

**MFI value**: 3500

**Donor-specific antibody (DSA)**: true

**AT1R antibody result**: 12.3

**ETAR antibody result**: 8.7

**Anti-MICA antibody result**: 5.2

**Anti-MICB antibody result**: 4.9

**AECA / other non-HLA antibodies**: Low-titer anti-endothelial cell antibodies

**identifier**: `http://example.org/fhir/NamingSystem/marker-immune-function-id`/MIF0001

**code**: Antibody marker



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "mark-imm-func-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-hla-antibody-class",
      "valueString" : "HLA-DQ7"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-mfi-value",
      "valueString" : "3500"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-dsa",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-atr1",
      "valueDecimal" : 12.3
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-etar",
      "valueDecimal" : 8.7
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-mica",
      "valueDecimal" : 5.2
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-micb",
      "valueDecimal" : 4.9
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/marker-immune-function-aeca-other",
      "valueString" : "Low-titer anti-endothelial cell antibodies"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/marker-immune-function-id",
      "value" : "MIF0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/marker-immune-function-type",
        "code" : "antibody",
        "display" : "Antibody marker"
      }
    ]
  }
}

```
