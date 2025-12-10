# Example transplant - (DRAFT) PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example transplant**

## Example Encounter: Example transplant

Profile: [Transplant](StructureDefinition-transplant.md)

**Transplant donor reference**: [Anonymous Patient Male, DoB: 1990-07-21 ( http://example.org/fhir/identifiers/donor#D000123)](Patient-ExampleDonor1.md)

**Donor/recipient weight ratio**: 0.95

**Vessel mismatch (donor-recipient)**: false

**Cold ischaemia time (minutes)**: 480

**Time from diagnosis to transplant (months)**: 18

**Vascular anomalies**: Accessory hepatic artery reconstructed

**First warm ischaemia time (minutes)**: 45

**identifier**: `http://example.org/fhir/identifiers/transplant`/T000001

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**type**: Liver transplant

**subject**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**period**: 2023-08-15 08:00:00+0100 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "TransplantExample1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-donor-ref",
      "valueReference" : {
        "reference" : "Patient/ExampleDonor1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-donor-recipient-weight-ratio",
      "valueDecimal" : 0.95
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vessel-mismatch",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-cold-ischaemia-time",
      "valueInteger" : 480
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-time-diagnosis-to-transplant",
      "valueInteger" : 18
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-vascular-anomalies",
      "valueString" : "Accessory hepatic artery reconstructed"
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/transplant-first-warm-ischemia-time",
      "valueInteger" : 45
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/identifiers/transplant",
      "value" : "T000001"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP",
    "display" : "inpatient encounter"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://example.org/fhir/CodeSystem/transplant-type",
          "code" : "liver",
          "display" : "Liver transplant"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  },
  "period" : {
    "start" : "2023-08-15T08:00:00+01:00"
  }
}

```
