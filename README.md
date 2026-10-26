# Samba BUG16030 backport for TrueNAS CE 25.10.7

**TrueNAS community backport, packaging and validation:** Rafał Gładysz ([GoldenartsPL](https://github.com/GoldenartsPL)), Network and Automation Equipment Specialist. **Original upstream Samba fix:** Ralph Boehme (see upstream commit history for individual authors and reviewers, including Stefan Metzmacher where credited). CERTBUD served as a deployment and testing environment, not the author of the upstream fix.

> **Unofficial community backport, not endorsed or supported by iXsystems.** Target: TrueNAS CE 25.10.7; source Samba 4.22.10; rebuilt package `2:4.22.10+ix-1+bug16030.1`. Other versions need independent engineering review.

## Issue

[Samba BUG16030](https://bugzilla.samba.org/show_bug.cgi?id=16030): SMB access mask calculations involving `FILE_ATTRIBUTE_READONLY` can cause permission errors, including Windows Offline Files and redirected folders. The underlying fix is upstream Samba work; this repository documents its TrueNAS-specific backport.

## Patch availability and integrity

The backport is included as [`patches/BUG16030-TrueNAS-25.10.7.patch`](patches/BUG16030-TrueNAS-25.10.7.patch). The public patch has an updated **local integration commit header** with `From: Rafal Gladysz <rafal.glad@gmail.com>`; that does **not** assign authorship of original Samba changes to the integrator. Diff hunks were not changed when the header was updated.

Public patch SHA-256: `eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070`.

Historical archived patch SHA-256 (before integration header update): `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`. The archived original remains outside this repository.

Verify the public patch with `bash scripts/verify-release.sh` from the repository root (requires Bash, sha256sum and Git).

## Historical validation

- Build process on Ubuntu/Linux using Debian 12 Bookworm `systemd-nspawn` completed.
- Functional and regression checks were conducted on a TrueNAS CE 25.10.7 VM under Proxmox (contributor-reported PASS).
- The backport was deployed on TrueNAS110. Archived `BUILD-INFO.txt` records `Test regresyjny: PASS` and `Windows Offline Files: PASS` on 2026-10-22.
- Archived SHA-256 checks of the six original artifacts all returned OK. Full raw logs are not publicly included; these results do not represent upstream CI verification.

## Patch overview

7 files changed, 241 insertions and 21 deletions. Includes `smb2.maximum_allowed.read_only_file` and `read_only_dir` regression tests. Historical local integration commit: `79e84b61aac85643a0278406a0f57369116f3452`; baseline parent recorded as `8c961eaa9a3e03729c48cc006e2f54240fffc8d1`. The public patch uses the same code diff but a corrected integration header.

## Documentation

- [Polish project overview](README.pl.md)
- [English usage and deployment notes](docs/EN/USAGE.md)
- [Testing and evidence](docs/EN/TESTING.md) / [Evidence](docs/EN/EVIDENCE.md)
- [Attribution and provenance](docs/EN/ATTRIBUTION.md)
- [Publication notes](docs/EN/PUBLISHING.md)

No unattended installer is supplied. Do not install unofficial packages on production TrueNAS systems without independent review, backups and a tested rollback plan. This backport is pending iXsystems engineering review and broader community validation.
