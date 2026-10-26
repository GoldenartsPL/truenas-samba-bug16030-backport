# Attribution and provenance

## Upstream Samba fix

The underlying Samba BUG16030 code comes from the Samba project. This repository does not claim authorship of the upstream fix.

- Original BUG16030 fix author: **Ralph Boehme**, as credited by Samba release notes.
- Reviewer: **Stefan Metzmacher**, where specifically credited in upstream commit metadata.
- Other authors and reviewers, if any, retain their credits from the individual upstream commits.
- [Samba bug report](https://bugzilla.samba.org/show_bug.cgi?id=16030)
- [Samba 4.23.9 release notes](https://www.samba.org/samba/samba/history/samba-4.23.9.html)

The upstream Git history remains authoritative for per-commit authorship and licenses.

## TrueNAS backport integrator

**Rafał Gładysz** (Git commit header: **Rafal Gladysz**), [GoldenartsPL](https://github.com/GoldenartsPL), contact: **rafal.glad@gmail.com**.

Independent TrueNAS CE 25.10.7 backport integration, packaging, building, deployment and testing. Professional title: Network and Automation Equipment Specialist (Specjalista ds. sieci i urządzeń automatyki).

Ubuntu/Linux build and TrueNAS CE 25.10.7 VM tests under Proxmox were conducted, followed by deployment and checks on TrueNAS110. CERTBUD identifies the deployment/test environment only; it is not a named author or contributor team.

## Patch header and integrity

The public patch has `From: Rafal Gladysz <rafal.glad@gmail.com>` as the **local backport integration commit identity**. This does not supersede upstream authorship. The code diff was not changed as part of the metadata correction.

Public patch SHA-256: `eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070`.

Historical local patch commit: `79e84b61aac85643a0278406a0f57369116f3452`, previously labelled `CERTBUD Backport <certbud-backport@localhost>`. Archived original patch SHA-256: `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e` (not published here). The archived file was preserved outside this repo.

This is an unofficial community integration, not an iXsystems-supported release.
