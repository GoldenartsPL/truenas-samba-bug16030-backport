# Publication checklist

- [ ] Copy original 14 KB patch from TrueNAS110 into `patches/` without editing.
- [ ] Run `bash scripts/verify-release.sh` successfully; compare sha256 to recorded value.
- [ ] Review ALL published files for internal names, domains, passwords, internal IP addresses and confidential contents.
- [ ] Keep original patch attribution and upstream GPL rights; distinguish historical local `CERTBUD Backport` placeholder.
- [ ] Publish repo as `GoldenartsPL/truenas-samba-bug16030-backport`, public, with README and docs.
- [ ] Open repository in browser; check patch link and Polish-English links work.
- [ ] Open Jira ticket after checking for duplicates; add repo link; save ticket number.
- [ ] Post on forums.truenas.com linking repo + Jira ticket; invite optional lab tests.
- [ ] Do not include 205 MB source archive or custom 15 MB `.deb` in the initial source repo; no unreviewed logs.
- [ ] Do not assert `git apply --check` passed on a pristine tree: not demonstrated by captured records.
