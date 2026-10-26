# Forum post (English)

**Title:** Community-tested Samba BUG16030 backport for TrueNAS CE 25.10.7 (Windows Offline Files)

I have prepared a version-specific community backport of the upstream Samba BUG16030 fix for TrueNAS CE 25.10.7 / Samba 4.22.10. The upstream fix was authored by Ralph Boehme and reviewed by Stefan Metzmacher; my contribution was independently integrating, building and testing the TrueNAS package.

Successful build/testing was performed using Ubuntu/Linux tooling and a TrueNAS 25.10.7 VM on Proxmox; archived metadata also records regression PASS and Windows Offline Files PASS following deployment on TrueNAS110. The seven-file patch has +241/-21 lines and is documented with expected SHA-256 and test guidance.

Repository: **[INSERT GITHUB URL]**
iXsystems issue: **[INSERT JIRA URL]**

This is not an official iXsystems build. Please do not apply an unofficial package to production without a complete compatibility and rollback review. Feedback and independent lab results are welcome.

Rafał Gładysz / GoldenartsPL
