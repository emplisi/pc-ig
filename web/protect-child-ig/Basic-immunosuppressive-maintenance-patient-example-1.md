# Example Immunosuppressive Maintenance to Patient - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Immunosuppressive Maintenance to Patient**

## Example Basic: Example Immunosuppressive Maintenance to Patient

Profile: [Immunosuppressive Maintenance to Patient](StructureDefinition-immunosuppressive-maintenance-patient.md)

**Recipient patient reference**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Immunosuppressant ID relationship**: [Basic Immunosuppressive drug](Basic-immunosuppressant-example-1.md)

**Dose of immunosuppressant**: 2

**Unit ID**: mg/kg

**Start date of maintenance therapy**: 2024-04-01

**End date of maintenance therapy**: 2024-10-01

**identifier**: `http://example.org/fhir/NamingSystem/immunosuppressive-maintenance-patient-id`/IMMPAT0001

**code**: Immunosuppressive maintenance therapy to patient



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "immunosuppressive-maintenance-patient-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-immunosuppressant-ref",
      "valueReference" : {
        "reference" : "Basic/immunosuppressant-example-1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-dose",
      "valueDecimal" : 2
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-unit-id",
      "valueString" : "mg/kg"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-start-date",
      "valueDate" : "2024-04-01"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/immunosuppressive-maintenance-end-date",
      "valueDate" : "2024-10-01"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/immunosuppressive-maintenance-patient-id",
      "value" : "IMMPAT0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/immunosuppressive-maintenance-type",
        "code" : "maintenance-to-patient"
      }
    ],
    "text" : "Immunosuppressive maintenance therapy to patient"
  }
}

```
