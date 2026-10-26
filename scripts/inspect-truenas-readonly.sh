#!/usr/bin/env bash
set -u
printf '%s
' '=== Read-only TrueNAS / Samba inventory ==='
date -Is
command -v midclt >/dev/null && midclt call system.version 2>/dev/null || true
dpkg-query -W -f='${Package} ${Version}
' truenas-samba 2>/dev/null || true
command -v smbd >/dev/null && smbd -V || true
systemctl is-active smbd winbind 2>/dev/null || true
command -v testparm >/dev/null && testparm -s 2>&1 | tail -n 15 || true
printf '%s
' 'Read-only inspection completed. No configuration changed.'
