# Evidence ledger (based on contributor-provided terminal outputs)

Archived on 2026-10-22 10:28:04 +02:00. Target TrueNAS CE 25.10.7; Samba 4.22.10; truenas-samba `2:4.22.10+ix-1+bug16030.1`; Debian 12 Bookworm/systemd-nspawn; OpenZFS build 2.3.9-1.

SHA256 verification on the archival host reported **OK for all six files**. Patch `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`. Other archived files: source tarball, binary `.deb`, build log, BUILD-INFO, BUG16030-COMMITS.

Archived BUILD-INFO: `Test regresyjny: PASS`, `Windows Offline Files: PASS`. Contributor reports successful compilation in Ubuntu-based workflow and successful testing/deployment on a TrueNAS CE 25.10.7 VM on Proxmox, in addition to deployment on TrueNAS110. Detailed machine-readable result evidence has not been published here.

Patch stats: seven modified files; +241, -21. Regression source includes read_only_file and read_only_dir. A `git apply --check` on the artifacts-only directory returned file-not-found: **not an application test on a pristine checkout**, and must not be claimed as passing.

Full binary package/build log/source tarball are not part of public Git repo. If distributing them later, inspect for secrets and licensing first.
