# Proposed iXsystems bug report (copy into Jira)

**Summary:** TrueNAS CE 25.10.7: request to integrate upstream Samba BUG16030 fix (Windows Offline Files/read-only SMB access) — verified community backport

**Description:**

Hello TrueNAS maintainers,

Please consider integrating the upstream Samba BUG16030 fix into the TrueNAS Samba package used by the 25.10 maintenance branch, if it is not already included.

BUG16030 concerns access-mask/`FILE_ATTRIBUTE_READONLY` handling and Windows Offline Files permission failures. The original upstream Samba fix is by Ralph Boehme (reviewed by Stefan Metzmacher); original upstream credit remains with those contributors.

I independently prepared a TrueNAS CE 25.10.7 adaptation of the upstream fix, built package `2:4.22.10+ix-1+bug16030.1` for amd64 with Samba 4.22.10, and tested it using Ubuntu/Linux build infrastructure and a TrueNAS CE 25.10.7 VM on Proxmox. The backport was additionally deployed on TrueNAS110. Archived build metadata dated 2026-10-22 records Samba regression PASS and Windows Offline Files PASS; all six archived artifacts passed SHA-256 verification. The patch changes seven source files (+241/-21 lines) and includes `read_only_file` and `read_only_dir` Samba regression tests.

This is a **community integration/test contribution**, not a claim to authorship of the upstream fix. The preserved combined local patch has a historical placeholder Git author `CERTBUD Backport`; full attribution is explained in the linked repository. The source patch and technical documentation: **[INSERT PUBLIC GITHUB URL AFTER UPLOAD]**.

Please assess whether this backport, or the appropriate upstream fix set, can be included in an officially maintained release. I can provide additional archived build/test artifacts upon request, after sanitization.

Best regards,
Rafał Gładysz
Network and Automation Equipment Specialist
https://github.com/GoldenartsPL

**Upstream issue:** https://bugzilla.samba.org/show_bug.cgi?id=16030
**Target:** TrueNAS CE 25.10.7; Samba 4.22.10; amd64
**Original patch SHA-256:** e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e
