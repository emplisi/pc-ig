# Example Immunosuppressant Induction to Patient - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Immunosuppressant Induction to Patient**

## Example Basic: Example Immunosuppressant Induction to Patient

Profile: [Immunosuppressant Induction to Patient](StructureDefinition-immunosuppressive-induction-patient.md)

**Immunosuppressant ID relationship**: [Basic Immunosuppressive drug](Basic-immunosuppressant-example-1.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Immunosuppressant dose**: 0.15

**Dose unit**: mg/kg

**identifier**: `http://example.org/fhir/NamingSystem/immunosuppressive-induction-patient-id`/IIP0001

**code**: Immunosuppressive induction



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "imm-ind-pat-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-patient"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-imm-ref",
      "valueReference" : {
        "reference" : "Basic/immunosuppressant-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose",
      "valueDecimal" : 0.15
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-induction-dose-unit",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://example.org/fhir/CodeSystem/immunosuppressive-induction-dose-unit",
            "code" : "mg-kg",
            "display" : "mg/kg"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/immunosuppressive-induction-patient-id",
      "value" : "IIP0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/immunosuppressive-induction-patient-type",
        "code" : "induction",
        "display" : "Immunosuppressive induction"
      }
    ]
  }
}

```
