# Gate before public publication

1. Original patch exists at `patches/BUG16030-TrueNAS-25.10.7.patch` (missing from starter ZIP by design).
2. Its SHA-256 equals `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`.
3. `bash scripts/verify-release.sh` passes.
4. Original upstream authors are credited; historical `CERTBUD Backport` header is explained.
5. No sensitive paths/logs/user records or binary packages included.
6. Draft placeholders in Jira and Forum texts are replaced only when posting.
