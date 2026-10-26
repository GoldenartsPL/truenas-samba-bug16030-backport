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

## Patch provenance and published header

The original archived patch SHA-256 is e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e; the contributor retains that file separately.
For publication only the email-format From: and Subject: fields were updated from the historical CERTBUD Backport placeholder to Rafal Gladysz <rafal.glad@gmail.com> and a neutral backport subject. The original source-code diff hunks were not altered.
Published patch SHA-256: eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070.

This patch's From: field credits the TrueNAS **backport integrator**, not the author of the upstream Samba changes. All underlying upstream authorship remains with the Samba contributors identified above.