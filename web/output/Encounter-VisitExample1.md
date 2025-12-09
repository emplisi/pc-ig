# Example visit - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example visit**

## Example Encounter: Example visit

Profile: [Visit](StructureDefinition-visit.md)

**Transplant ID relationship**: [Encounter: extension = ->Anonymous Patient Male, DoB: 1990-07-21 ( http://example.org/fhir/identifiers/donor#D000123),0.95,false,480,18,Accessory hepatic artery reconstructed,45; identifier = http://example.org/fhir/identifiers/transplant#T000001; status = finished; class = inpatient encounter (ActCode#IMP); type = Liver transplant; period = 2023-08-15 08:00:00+0100 --> (ongoing)](Encounter-TransplantExample1.md)

**Outcome ID relationship**: [Basic Clinical outcome](Basic-outcome-example-1.md)

**identifier**: `http://example.org/fhir/identifiers/visit`/V000001

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.0.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**type**: 1 month visit

**subject**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**period**: 2023-09-15 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "VisitExample1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-transplant-ref",
      "valueReference" : {
        "reference" : "Encounter/TransplantExample1"
      }
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/visit-outcome-ref",
      "valueReference" : {
        "reference" : "Basic/outcome-example-1"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/identifiers/visit",
      "value" : "V000001"
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://example.org/fhir/CodeSystem/visit-type",
          "code" : "month-1",
          "display" : "1 month visit"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  },
  "period" : {
    "start" : "2023-09-15"
  }
}

```
