# Attribution and provenance

## Upstream Samba fix

The underlying Samba BUG16030 fix is **upstream Samba work**, not original code written by the publisher of this repository.

- **Original fix author:** Ralph Boehme (Samba project), as identified by official Samba release notes and upstream commit history.
- **Upstream reviewer:** Stefan Metzmacher (where credited in the respective upstream commits).
- **Original issue:** https://bugzilla.samba.org/show_bug.cgi?id=16030
- **Upstream release notes:** https://www.samba.org/samba/samba/history/samba-4.23.9.html
- **Upstream history:** https://www.mail-archive.com/samba-cvs@lists.samba.org/msg89805.html

The authoritative author/reviewer attribution for individual changes is the upstream Git commit history. This repository does not claim authorship of the upstream fix.

## TrueNAS integration and testing

**Rafal Gladysz** (Rafał Gładysz), GitHub: https://github.com/GoldenartsPL

Role: independent preparation of the TrueNAS 25.10.7 backport, packaging, compilation, deployment and validation. Job title: Network and Automation Equipment Specialist (Polish: Specjalista ds. sieci i urządzeń automatyki).

Build and tests were conducted on Ubuntu and on a TrueNAS CE 25.10.7 virtual machine under Proxmox. The patched build was also deployed and checked in the CERTBUD TrueNAS environment. CERTBUD is the test/deployment environment, **not** the author or a development team responsible for this contribution.

## Original artifact integrity

The historical patch is deliberately retained unchanged, including its original header `From: CERTBUD Backport <certbud-backport@localhost>`. This is a legacy **local backport commit label**, not an upstream author credit or a statement that a CERTBUD team developed the code.

Patch SHA-256 (unchanged): `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`

This public GitHub repository documents an integration of an existing fix, not a newly invented Samba patch. It is not an official iXsystems release.
