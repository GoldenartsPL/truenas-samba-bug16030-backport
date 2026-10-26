# Test plan and reporting template

## Completed, historically reported

Ubuntu/Linux package build; TrueNAS CE 25.10.7 VM on Proxmox; TrueNAS110 deployment; Samba regression PASS and Windows Offline Files PASS per archived BUILD-INFO. Refer to EVIDENCE.md for limits.

## Suggested independent community tests (optional, not prerequisites for submission)

| ID | Scenario | Expected result | Status |
|---|---|---|---|
| T1 | `smb2.maximum_allowed.read_only_file` | Upstream regression passes | Not independently run here |
| T2 | `smb2.maximum_allowed.read_only_dir` | Upstream regression passes | Not independently run here |
| T3 | Windows redirected Desktop/Documents | Files and metadata usable | Not independently run here |
| T4 | Windows Offline Files: online | No unexpected access denied | Not independently run here |
| T5 | Offline/reconnect/sync | No conflict/loss; appropriate access | Not independently run here |
| T6 | Read-only file vs directory | Windows-compatible rights | Not independently run here |
| T7 | Ordinary ACL / read/write/delete | No permissions regression | Not independently run here |
| T8 | Rollback in lab | Previous working behavior restored | Not independently run here |

For each test collect TrueNAS build, package versions, Windows version, steps, outcome, anonymized logs and relevant `smbd` output. Never upload real SMB credentials, user documents, domain secrets, or private paths.
