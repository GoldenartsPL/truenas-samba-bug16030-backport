# Backport Samba BUG16030 dla TrueNAS CE 25.10.7

**Backport, integracja, pakietowanie, kompilacja i testy:** Rafał Gładysz ([GoldenartsPL](https://github.com/GoldenartsPL)), Specjalista ds. sieci i urządzeń automatyki. **Oryginalna poprawka Samba:** Ralph Boehme oraz inni autorzy wskazani w historii upstream; Stefan Metzmacher jako recenzent tam, gdzie wskazano go w commitach. CERTBUD było środowiskiem wdrożenia i testów, a nie autorem poprawki Samby.

> **Nieoficjalny backport społecznościowy.** Nie jest wydaniem ani poprawką wspieraną przez iXsystems. Docelowy system: TrueNAS CE 25.10.7, Samba 4.22.10, pakiet `2:4.22.10+ix-1+bug16030.1`.

## Problem

[Błąd Samba BUG16030](https://bugzilla.samba.org/show_bug.cgi?id=16030) dotyczy wyliczania uprawnień SMB dla atrybutu READONLY i może powodować błędy Windows Offline Files i przekierowanych folderów.

## Dostępność poprawki

Plik [`patches/BUG16030-TrueNAS-25.10.7.patch`](patches/BUG16030-TrueNAS-25.10.7.patch) **znajduje się w repozytorium**. Nagłówek lokalnego commita integracyjnego ma podpis `Rafal Gladysz <rafal.glad@gmail.com>`. Nie oznacza to autorstwa oryginalnego kodu Samba. Zawartość zmian w kodzie nie została zmieniona przy korekcie tego nagłówka.

SHA-256 opublikowanego patcha: `eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070`.

Historyczna suma archiwalnego patcha (przed zmianą nagłówka): `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`. Oryginalny egzemplarz zachowano poza repozytorium.

## Przeprowadzone testy

Kompilacja na Ubuntu/Linux z Debian 12 Bookworm `systemd-nspawn`; testy funkcjonalne i regresyjne na VM TrueNAS CE 25.10.7 w Proxmoxie; wdrożenie na TrueNAS110. Archiwalne `BUILD-INFO.txt` z 22.10.2026 zawiera `Test regresyjny: PASS` i `Windows Offline Files: PASS`. Nie publikujemy pełnych surowych logów ani nie deklarujemy niezależnych testów CI.

Patch obejmuje 7 plików (+241/-21 linii) oraz testy `read_only_file` i `read_only_dir`. Nie zaleca się bezpośredniego wdrażania nieoficjalnych pakietów na produkcji bez analizy i planu powrotu.

Dokumenty: [użycie](docs/PL/UZYCIE.md), [testy](docs/PL/TESTY.md), [autorstwo](docs/PL/AUTORSTWO.md), [publikacja](docs/PL/PUBLIKACJA.md).

## Odpowiedź iXsystems i testy społeczności

Zgłoszenie [NAS-144905](https://ixsystems.atlassian.net/browse/NAS-144905) zostało zamknięte. Andrew Walker poinformował, że TrueNAS 27 zawiera już oryginalną poprawkę upstream i nie zaleca osobnego hotfixa. **Nie oznacza to** zatwierdzenia ani włączenia naszego społecznościowego patcha. Repozytorium pozostaje nieoficjalnym backportem dla TrueNAS 25.10.7. Zapraszamy do przeglądu kodu i testów w odizolowanym laboratorium. Zobacz [opis odpowiedzi i zakres projektu](docs/PL/ODPOWIEDZ-IXSYSTEMS.md).
