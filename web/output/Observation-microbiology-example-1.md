# Example Microbiology record - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Microbiology record**

## Example Observation: Example Microbiology record

Profile: [Microbiology](StructureDefinition-microbiology.md)

**Blood EBV-DNA**: 2450

**EBV serology IgM anti-EA**: false

**EBV serology IgM anti-VCA**: false

**EBV serology IgG anti-VCA**: true

**EBV serology IgG EBNA**: true

**Blood CMV-DNA**: false

**CMV serology IgM**: false

**CMV serology IgG**: true

**Blood Parvovirus B19-DNA**: false

**Parvovirus B19 serology IgG**: true

**Parvovirus B19 serology IgM**: false

**HSV serology IgG**: true

**HSV serology IgM**: false

**Adenovirus serology IgG**: true

**Adenovirus serology IgM**: false

**VZV serology IgG**: true

**VZV serology IgM**: false

**Blood BKV-DNA**: false

**Urine BKV-DNA**: false

**BKV-DNA on kidney biopsy**: false

**BKV FISH on kidney biopsy**: false

**Patient ID relationship**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)

**identifier**: `http://example.org/fhir/NamingSystem/microbiology-id`/M0001

**status**: Final

**code**: Microbiology studies (set)

**subject**: [Anonymous Patient Female, DoB: 2012-03-12 ( http://example.org/fhir/identifiers/patient#P000456)](Patient-ExamplePatientTransplant1.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "microbiology-example-1",
  "meta" : {
    "profile" : [
      "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology"
    ]
  },
  "extension" : [
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-dna",
      "valueDecimal" : 2450
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igm-anti-ea",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igm-anti-vca",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-anti-vca",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-ebv-igg-ebna",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-dna",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-igm",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-cmv-igg",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna-igg",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-parvovirus-b19-dna-igm",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-hsv-igg",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-hsv-igm",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-adenovirus-igg",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-adenovirus-igm",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-vzv-igg",
      "valueBoolean" : true
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-vzv-igm",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-blood-bkv-dna",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-urine-bkv-dna",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-dna-kidney-biopsy",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-bkv-fish-kidney-biopsy",
      "valueBoolean" : false
    },
    {
      "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/microbiology-patient-ref",
      "valueReference" : {
        "reference" : "Patient/ExamplePatientTransplant1"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/fhir/NamingSystem/microbiology-id",
      "value" : "M0001"
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "24323-8",
        "display" : "Microbiology studies (set)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplePatientTransplant1"
  }
}

```
