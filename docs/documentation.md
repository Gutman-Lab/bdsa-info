# Digital Slide Archive documentation

The complete Digital Slide Archive documentation is mirrored here at
[info.bdsa.io/docs/](https://info.bdsa.io/docs/). It is the same site that is
published from GitHub at
[gutman-lab.github.io/dsa-docs](https://gutman-lab.github.io/dsa-docs/), which
remains the primary public copy for discoverability and pull requests.

## What the documentation covers

- **[Get Started](https://info.bdsa.io/docs/get-started/what-is-dsa/)** — what
  DSA is, the public demo, single-machine installation, and a first slide.
- **[Tutorials](https://info.bdsa.io/docs/tutorials/)** — connect, create
  collections and folders, upload or import images, edit metadata, share,
  annotate, and run an analysis.
- **[User guide](https://info.bdsa.io/docs/user-guide/)** — viewer controls,
  annotation basics, style groups, and permissions.
- **[Administration](https://info.bdsa.io/docs/admin/)** — the web console,
  users and roles, assetstores and storage, plugins, and system settings.
- **[Reference](https://info.bdsa.io/docs/reference/rest-api/)** — REST API,
  Python client, and the `bdsa-react-components` UI library.
- **[Release notes](https://info.bdsa.io/docs/release-notes/)**, **[troubleshooting](https://info.bdsa.io/docs/troubleshooting/)**, and **[contributing](https://info.bdsa.io/docs/contributing/)**.

## Where the source lives

The documentation is written in Markdown and built with MkDocs Material from
[`Gutman-Lab/dsa-docs`](https://github.com/Gutman-Lab/dsa-docs). Each page
records its source and verification date. The repository's `SOURCES.md` tracks
where every page came from and what is still being consolidated.

## Keeping the mirror current

This site rebuilds the documentation from `dsa-docs`; it does not fork the
content. Fixes belong in the `dsa-docs` repository, where they are reviewed and
published, and the mirror picks them up on the next build.
