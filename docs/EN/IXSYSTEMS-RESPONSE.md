# iXsystems response to NAS-144905 (2026-10)

Official issue: https://ixsystems.atlassian.net/browse/NAS-144905

## Outcome

The ticket was closed following engineering feedback. Andrew Walker stated:

> I don’t see strong reason to backport for hotfix release. 27 already has upstream fix and we’re close to release.

This means that, according to iXsystems engineering feedback, the TrueNAS 27 branch already includes the upstream fix, and a separate hotfix backport was not considered justified at that time. It does **not** mean that this community patch was accepted into TrueNAS 27 or officially validated by iXsystems.

## Project scope

This repository remains an **unofficial community backport for TrueNAS CE 25.10.7** and an archive of the contributor's build and test results. It is not an official iXsystems update. Independent reviewers are welcome to inspect the source changes or test them in **isolated lab environments only**. Do not install unofficial Samba builds in production solely to test this patch.

- Upstream bug: https://bugzilla.samba.org/show_bug.cgi?id=16030
- Community repository: https://github.com/GoldenartsPL/truenas-samba-bug16030-backport
- TrueNAS Jira: https://ixsystems.atlassian.net/browse/NAS-144905

## Attribution

The upstream Samba fix belongs to its original authors, including Ralph Boehme as documented upstream. Rafał Gładysz (GoldenartsPL) independently prepared, compiled, integrated, deployed and tested the TrueNAS 25.10.7 backport. CERTBUD was only the deployment/testing environment.
