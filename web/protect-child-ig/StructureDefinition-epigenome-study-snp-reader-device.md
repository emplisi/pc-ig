# SNP reader device - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SNP reader device**

## Extension: SNP reader device 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-snp-reader-device | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:EpigenomeStudySNPReaderDevice |

Device used as SNP reader.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Epigenome Study](StructureDefinition-epigenome-study.md)
* Examples for this Extension: [Basic/epigenome-study-example-1](Basic-epigenome-study-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/pc.ig|current/StructureDefinition/epigenome-study-snp-reader-device)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-epigenome-study-snp-reader-device.csv), [Excel](StructureDefinition-epigenome-study-snp-reader-device.xlsx), [Schematron](StructureDefinition-epigenome-study-snp-reader-device.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "epigenome-study-snp-reader-device",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-snp-reader-device",
  "version" : "0.1.0",
  "name" : "EpigenomeStudySNPReaderDevice",
  "title" : "SNP reader device",
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
  "description" : "Device used as SNP reader.",
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
        "short" : "SNP reader device",
        "definition" : "Device used as SNP reader."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://example.org/fhir/ImplementationGuide/donor-ig/StructureDefinition/epigenome-study-snp-reader-device"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
