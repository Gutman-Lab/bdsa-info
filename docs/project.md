# Project overview

The **Brain Digital Slide Archive (BDSA)** is shared digital pathology
infrastructure for neuropathology research. It is supported by two NIH U24
awards running from September 2023 through August 2028, and it is built on the
open-source [Digital Slide Archive](https://digitalslidearchive.github.io/digital_slide_archive/).

| | |
| --- | --- |
| **Awards** | U24 NS133949 and U24 NS133945 |
| **Funder** | National Institutes of Health; both awards are administered by the National Institute of Neurological Disorders and Stroke (NINDS) |
| **Project period** | September 2023 – August 2028 |
| **Lead institutions** | Emory University and the University of Kentucky, with ten participating sites |
| **Platform** | [Digital Slide Archive](https://digitalslidearchive.github.io/digital_slide_archive/), open source |

## What BDSA is

BDSA is a shared digital pathology infrastructure for neuropathology. It
connects participating institutions to a common archive so that whole-slide
images, annotations, and derived analysis results can be managed together
instead of living in disconnected local systems.

BDSA is built on the open-source
[Digital Slide Archive](https://digitalslidearchive.github.io/digital_slide_archive/),
the same platform used by the Cancer Digital Slide Archive and by pathology
groups worldwide. Each institution can run its own DSA node while sharing a
common metadata schema and access model.

## The two awards

The project was funded as two separate U24 awards. The teams now coordinate to
develop a single platform for the management, visualization, and analysis of
large *federated* neuropathology data sets.

**U24 NS133949 — Brain Digital Slide Archive: an open source platform for data
sharing and analysis of digital neuropathology** (Emory University). Contact PI
David Andrew Gutman, with Lee Cooper, Brittany Dugger, and Thomas Pearce as
multiple PIs.

**U24 NS133945 — Federated digital pathology platform for AD/ADRD research and
diagnostics** (University of Kentucky). Multiple PIs Cody Bumgardner, Margaret
Flanagan, and Peter Nelson.

Award numbers, titles, project periods, and the investigator lists above follow
the NIH RePORTER record for each award.

## Participating institutions

Each participating institution has a site PI and a BDSA delegate who coordinates
onboarding, metadata harmonization, and annual progress-report materials.

| Institution | Site PI |
| --- | --- |
| Emory University | David Andrew Gutman |
| University of California, Davis | Brittany Dugger |
| Northwestern University | Lee Alex Donald Cooper |
| University of Kentucky | Peter Nelson |
| The University of Texas Health Science Center at San Antonio | Margaret Flanagan |
| University of Toronto | Gabor Kovacs |
| University of Pittsburgh | Thomas Pearce |
| University of Sao Paulo Medical School | Claudia Suemoto |
| Icahn School of Medicine at Mount Sinai | John Crary |
| University of Washington | Amber Nolan |

## Why a brain-focused archive

Neuropathology collections are large, longitudinal, and spread across
institutions. A shared archive makes it possible to:

- keep images with standardized case and specimen metadata;
- view and annotate slides without moving multi-gigabyte files between labs;
- compare findings across sites and stain protocols; and
- curate public datasets for methods development and benchmarking.

## How the project fits together

| Layer | What it provides |
| --- | --- |
| DSA nodes | Per-institution storage, viewing, annotation, and analysis |
| Shared schema | Common case, specimen, and assay metadata (published at [api.bdsa.io](https://api.bdsa.io)) |
| Public data | Open collections and reference material at [pub-data.bdsa.io](https://pub-data.bdsa.io) |
| Documentation | Guides, tutorials, and reference at [info.bdsa.io/docs](https://info.bdsa.io/docs/) |

## Publications and project outputs

Peer-reviewed papers, posters, presentations, and other products from the two
awards are collected centrally so that each institution can draw on them for its
annual progress report. A public list is being compiled and will be published
here.

Outputs that are already public:

- [Digital Slide Archive](https://github.com/DigitalSlideArchive) — the open
  source platform, documentation, and analysis components;
- [bdsa-react-components](https://github.com/Gutman-Lab/bdsa-react-components) —
  reusable UI components for building pathology viewers and annotation tools;
- [Public data](https://pub-data.bdsa.io) — open neuropathology collections and
  their metadata.

The Digital Slide Archive's own papers and success stories are listed in the
[DSA documentation](https://info.bdsa.io/docs/about/).

## Acknowledgement wording

Publications and presentations that use BDSA data, software, or infrastructure
should acknowledge both awards. The standard NIH wording, with the award numbers
filled in:

> Research reported in this publication was supported by the National Institute
> of Neurological Disorders and Stroke of the National Institutes of Health
> under Award Numbers U24NS133949 and U24NS133945. The content is solely the
> responsibility of the authors and does not necessarily represent the official
> views of the National Institutes of Health.

Please confirm the exact wording with your institution's grants office before
submission.

## Contact and collaboration

For questions about the project, data access, or collaboration, contact the
Gutman Lab at Emory University. Software questions and bug reports are best
filed in the relevant GitHub repository:

- [Digital Slide Archive documentation](https://github.com/Gutman-Lab/dsa-docs)
- [bdsa-react-components](https://github.com/Gutman-Lab/bdsa-react-components)
