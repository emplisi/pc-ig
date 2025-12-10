# Example Clinical Variables - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Clinical Variables**

## Example Basic: Example Clinical Variables

Profile: [Clinical Variable](StructureDefinition-clinical-variable.md)

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**Date**: 2025-01-15

**Weight**: 72.5

**Height**: 175

**Systolic blood pressure**: 120

**Diastolic blood pressure**: 75

**Heart rate**: 68

**Oxygen saturation**: 98

**Temperature**: 37

**identifier**: `http://example.org/fhir/NamingSystem/clinical-variable-id`/CV0001

**code**: Vital signs



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "clinical-variable-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-date",
      "valueDate" : "2025-01-15"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-weight",
      "valueDecimal" : 72.5
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-height",
      "valueDecimal" : 175
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-systolic-blood-pressure",
      "valueInteger" : 120
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-diastolic-blood-pressure",
      "valueInteger" : 75
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-heart-rate",
      "valueInteger" : 68
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-oxygen-saturation",
      "valueInteger" : 98
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/clinical-variable-temperature",
      "valueInteger" : 37
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/clinical-variable-id",
      "value" : "CV0001"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/clinical-variable-type",
        "code" : "vitals",
        "display" : "Vital signs"
      }
    ]
  }
}

```
