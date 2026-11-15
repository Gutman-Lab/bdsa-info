# bdsa-info

Source for <https://info.bdsa.io>, the Brain Digital Slide Archive project site.

The published document root has two parts:

- `/` — the BDSA project site (this repository, MkDocs Material).
- `/docs/` — a build of the [Digital Slide Archive documentation](https://github.com/Gutman-Lab/dsa-docs),
  mirrored without forking its content.

The documentation is still published from GitHub at
<https://gutman-lab.github.io/dsa-docs/>. That remains the primary public copy;
this site is the BDSA-owned mirror.

## Landing page

`docs/index.md` is the BDSA home page. It is laid out for the landing page, not
as a documentation article:

- `overrides/home.html` adds the full-width hero above the page body and turns
  off the sidebar for that one page (`template: home.html` in the front matter).
- `docs/stylesheets/extra.css` holds every landing-page style, scoped to
  `.bdsa-hero` and `.bdsa-home`, and follows Material's light/dark variables.
- The Markdown body of `docs/index.md` is the content below the hero: overview,
  the four "start here" cards, capabilities, the docs call to action, and the
  funding note.

Nothing here applies to `project.md`, `documentation.md`, or the `/docs/`
mirror; those still render as ordinary documentation pages.

## Build

```bash
python3 -m venv .venv
. .venv/bin/activate
pip install -r requirements.txt
scripts/build.sh
```

`scripts/build.sh` writes the complete document root to `publish/`:

```text
publish/
  index.html          BDSA project home
  project/            BDSA project overview
  documentation/      how the mirror works
  docs/               Digital Slide Archive documentation
```

It builds the project site with `mkdocs build --strict`, clones `dsa-docs` at
its default branch, builds that site with `site_url` overridden to
`https://info.bdsa.io/docs/`, and runs the `dsa-docs` link checker against the
mirror.

To preview the project site alone:

```bash
mkdocs serve
```

The documentation mirror is only present after `scripts/build.sh` runs; the
deployed site serves it under `/docs/`.

## Deployment contract

The gateway serves `publish/` as the document root for `info.bdsa.io` and
routes `/docs/` to the mirrored build. A deploy is a replacement of that static
tree; there is no application server or database.

`scripts/build.sh` is deterministic and network-dependent only for cloning
`dsa-docs`. CI should run it on every push to `main` and on a schedule so the
mirror tracks `dsa-docs`.

## A note on content

`docs/project.md` carries the confirmed project content: award numbers, titles,
project period, and investigators (taken from NIH RePORTER), the participating
institutions and their site PIs, and the acknowledgement wording for
publications. The public publications list is still being compiled and is
flagged as such on the page. Confirm any grant language or acknowledgement text
with the project team and the relevant grants office before changing it.
