# Dziennik dowodów

Na podstawie przekazanych wyników: archiwizacja 22.10.2026 10:28:04 +02:00, TrueNAS CE 25.10.7, Samba 4.22.10, pakiet `2:4.22.10+ix-1+bug16030.1`, Debian 12 Bookworm / systemd-nspawn.

`sha256sum -c SHA256SUMS`: sześć plików OK. Patch SHA-256 `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`.

BUILD-INFO zapisuje `Test regresyjny: PASS` i `Windows Offline Files: PASS`. Według Twojego opisu kompilowano na Ubuntu, testowano też na VM TrueNAS 25.10.7 w Proxmox; następnie wdrożono na TrueNAS110. Nie dopisujemy nieudokumentowanych logów ani nie wykonujemy kolejnych instalacji.

Patch: 7 plików, +241/-21. `git apply --check` w folderze artefaktów podał brak źródeł — nie jest to niepowodzenie samej poprawki, ale nie mamy potwierdzonego testu na czystym drzewie źródeł.
