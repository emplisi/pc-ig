# BioSample Tissue Type ValueSet - PROTECT-CHILD Pediatric Transplant Data Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BioSample Tissue Type ValueSet**

## ValueSet: BioSample Tissue Type ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/biosample-tissue-type-vs | *Version*:0.1.0 |
| Draft as of 2025-12-10 | *Computable Name*:BioSampleTissueTypeVS |

 
Allowed tissue types for BioSample.tissue_type. 

 **References** 

* [Biological Sample](StructureDefinition-biosample.md)
* [Sample type](StructureDefinition-epigenome-study-sample-type.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "biosample-tissue-type-vs",
  "url" : "http://example.org/fhir/ImplementationGuide/donor-ig/ValueSet/biosample-tissue-type-vs",
  "version" : "0.1.0",
  "name" : "BioSampleTissueTypeVS",
  "title" : "BioSample Tissue Type ValueSet",
  "status" : "draft",
  "date" : "2025-12-10T09:07:26+01:00",
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
  "description" : "Allowed tissue types for BioSample.tissue_type.",
  "compose" : {
    "include" : [
      {
        "system" : "http://example.org/fhir/CodeSystem/biosample-tissue-type",
        "concept" : [
          {
            "code" : "blood"
          },
          {
            "code" : "saliva"
          },
          {
            "code" : "other-tissue"
          }
        ]
      }
    ]
  }
}

```
