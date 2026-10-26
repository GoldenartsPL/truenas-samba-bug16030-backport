# Samba BUG16030 backport for TrueNAS CE 25.10.7

**Community integration by Rafał Gładysz** ([GoldenartsPL](https://github.com/GoldenartsPL)), Network and Automation Equipment Specialist. **Original Samba fix by Ralph Boehme**; reviewed by Stefan Metzmacher. This repository does not claim authorship of upstream Samba code. CERTBUD was a deployment/test environment, not a contributor team.

> **Unofficial community backport. Not endorsed or supported by iXsystems.** Targeted to **TrueNAS CE 25.10.7**, source package Samba **4.22.10**, built Debian version **`2:4.22.10+ix-1+bug16030.1`**. Do not use on another version without independent review and testing.

## Issue

[Samba BUG16030](https://bugzilla.samba.org/show_bug.cgi?id=16030): SMB access calculations with `FILE_ATTRIBUTE_READONLY` can cause permission failures, notably with Windows Offline Files and redirected folders. Upstream fix is already in later Samba branches; this is a TrueNAS-specific backport proposal.

## Patch availability

The source patch is included at [patches/BUG16030-TrueNAS-25.10.7.patch](patches/BUG16030-TrueNAS-25.10.7.patch).
Its mail header identifies the TrueNAS backport integrator, **Rafal Gladysz** (Rafal Gladysz / GoldenartsPL, displayed as Rafał Gładysz in the documentation). **This is not a claim of authorship of the upstream Samba fix.**
Published patch SHA-256: eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070. The original archived patch SHA-256 was e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e (header before attribution correction).

## What was tested (historical records)

- Build/test process on Ubuntu/Linux, with Debian 12 Bookworm `systemd-nspawn` build environment; compilation completed.
- Deployment and functional/regression checks on a **TrueNAS CE 25.10.7 VM on Proxmox**; contributor reports PASS.
- Deployment on TrueNAS110 and production Windows Offline Files/SMB checks; archived `BUILD-INFO.txt` records `Test regresyjny: PASS` and `Windows Offline Files: PASS` on 2026-10-22.
- Archived six artifact SHA-256 checks returned OK; do not confuse these with an independently reproduced upstream CI run.

Full raw test logs/screenshots are not included in this bootstrap package. See [TESTING.md](docs/EN/TESTING.md) and [Evidence](docs/EN/EVIDENCE.md).

## Patch summary

7 files; **241 insertions, 21 deletions**. Includes `smb2.maximum_allowed.read_only_file` and `read_only_dir` regression tests. The historical integration commit `79e84b61aac85643a0278406a0f57369116f3452` had placeholder author metadata. The distributed patch mail header now names Rafal Gladysz as the backport integrator; upstream code authorship remains unchanged. Base parent commit reported: `8c961eaa9a3e03729c48cc006e2f54240fffc8d1` (Andrew Walker, unrelated winbind change). These facts should not be interpreted as seven Git commits in the local patch: it is one combined patch.

## Read first

- [English install/build and safe-use notes](docs/EN/USAGE.md)
- [English tests](docs/EN/TESTING.md)
- [Polski opis projektu](README.pl.md)
- [Licensing and authorship](docs/EN/ATTRIBUTION.md)
- [Publication checklist](docs/EN/PUBLISHING.md)

No unattended installer is provided. Applying an unofficial `.deb` to a TrueNAS appliance can break support, upgrade paths or boot environments. Community testing is at your own risk and **should be on a disposable lab instance**; the maintainer does not advise direct installation to production.

## Project status

Community backport, pending engineering review and wider testing. Please report findings via the iXsystems tracker and link them in a GitHub issue.

For author credits and upstream provenance, see [Attribution](docs/EN/ATTRIBUTION.md). The patch mail header identifies the TrueNAS backport integrator, not the author of the upstream Samba fix.
