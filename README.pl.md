# Backport Samba BUG16030 do TrueNAS CE 25.10.7

**Integracja, kompilacja i testy:** Rafał Gładysz ([GoldenartsPL](https://github.com/GoldenartsPL)), Specjalista ds. sieci i urządzeń automatyki. **Autor oryginalnej poprawki Samba:** Ralph Boehme; przegląd: Stefan Metzmacher. CERTBUD — środowisko wdrożeniowe i testowe, nie „CERTBUD Team”.

**Nieoficjalna poprawka**, przeznaczona wyłącznie do TrueNAS CE 25.10.7 z pakietem truenas-samba 4.22.10 (`2:4.22.10+ix-1+bug16030.1`). Poprawka upstream rozwiązuje błędy uprawnień SMB powiązane z atrybutem READONLY oraz Windows Offline Files.

**Uwaga o kompletności:** w tym archiwum NIE MA rzeczywistego pliku `.patch` (nadal znajduje się na TrueNAS110). Przed opublikowaniem koniecznie przenieś go do `patches/BUG16030-TrueNAS-25.10.7.patch` i sprawdź SHA-256 skryptem `scripts/verify-release.sh`. Nie opisuj repozytorium jako gotowego do zastosowania, zanim to zrobisz.

Zarchiwizowane wyniki: kompilacja na środowisku Ubuntu/Linux i Debian 12 systemd-nspawn; testy na VM TrueNAS 25.10.7 na Proxmox; następnie wdrożenie na TrueNAS110; BUILD-INFO z 22.10.2026 odnotowuje `Test regresyjny: PASS`, `Windows Offline Files: PASS`. Nie dołączono pełnych logów surowych ani dokumentów testowych potwierdzających każdy krok; nie deklarujemy nowych testów.

Patch: siedem plików, +241/-21 linii, testy `smb2.maximum_allowed.read_only_file` i `read_only_dir`. Zachowujemy niezmieniony oryginalny patch z historycznym nagłówkiem `CERTBUD Backport` — dokumentacja wyjaśnia autorstwo. Nie zastępuj nagłówka bez zachowania ścieżki pochodzenia.

Dalej: [publikacja krok po kroku](docs/PL/PUBLIKACJA.md), [użytkowanie](docs/PL/UZYCIE.md), [testy](docs/PL/TESTY.md), [autorstwo](docs/PL/AUTORSTWO.md).

Informacje o autorach i pochodzeniu poprawek: [Autorstwo](docs/PL/AUTORSTWO.md). Historyczny naglowek patcha nie przypisuje autorstwa kodu upstream.
