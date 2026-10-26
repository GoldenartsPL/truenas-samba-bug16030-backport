# Scope, usage and safety (English)

1. Read README and [ATTRIBUTION](ATTRIBUTION.md). This is an **unofficial, version-specific** backport, not a generic SMB fix.
2. Before any technical evaluation, verify exact target: TrueNAS CE 25.10.7, Samba/truenas-samba 4.22.10, platform amd64, and expected package version; run `scripts/inspect-truenas-readonly.sh` if appropriate. Do not assume 25.10.x variants are compatible.
3. Verify patch checksum using `bash scripts/verify-release.sh` before inspecting or applying it.
4. Engineering review: compare the patch to [Samba BUG16030](https://bugzilla.samba.org/show_bug.cgi?id=16030) and the tagged `truenas/samba` sources. The source archive from the completed build is ALREADY PATCHED and cannot serve as a pristine target for `git apply --check`.
5. For a lab source tree at the correct base revision only: `git apply --check /path/to/BUG16030-TrueNAS-25.10.7.patch` (check, **no write**). Actual application and building should follow the official package source/build process with an experienced maintainer.
6. In an expendable TrueNAS lab VM, snapshot/record a boot environment, collect baseline results, run the Samba regression suite and Windows Offline Files end-to-end scenarios, document rollback. No universal unattended installation command is supplied.
7. **Do not install modified system packages directly on production TrueNAS based only on this README.** TrueNAS is an appliance with its own upgrades and service management; upstream maintenance releases may overwrite custom packages.

## Suggested user test matrix

SMB access in writable share; read-only file with `MxAC`; read-only directory with `MxAC`; folder redirection (Desktop/Documents); Windows Offline Files online/offline/reconnect; effective ACL access; SMB connections after service restart; regression/rollback. Record OS/TrueNAS version, SMB dialect, results and logs with sensitive content removed.

The accompanying Windows PowerShell script gathers read-only diagnostic information; it does not execute offline/online transitions or modify client settings.
