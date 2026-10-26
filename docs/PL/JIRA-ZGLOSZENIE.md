# Polski podgląd zgłoszenia do iXsystems

**Temat:** TrueNAS CE 25.10.7 — prośba o dołączenie upstream Samba BUG16030 (Windows Offline Files i uprawnienia SMB) — przetestowany backport społecznościowy

Dzień dobry,

Proszę o rozważenie wdrożenia oryginalnej poprawki Samba BUG16030 do utrzymywanej gałęzi TrueNAS 25.10, o ile nie została już uwzględniona.

BUG16030 dotyczy sposobu wyliczania uprawnień dla atrybutu `FILE_ATTRIBUTE_READONLY` i błędów dostępu Windows Offline Files. Pierwotną poprawkę przygotował Ralph Boehme, a sprawdził Stefan Metzmacher; zachowuję pełne autorstwo upstream.

Samodzielnie przygotowałem integrację dla TrueNAS CE 25.10.7, skompilowałem pakiet `2:4.22.10+ix-1+bug16030.1` (amd64, Samba 4.22.10), wykonałem kompilację na Ubuntu/Linux oraz testy na wirtualnym TrueNAS CE 25.10.7 w Proxmox. Rozwiązanie wdrożono także na TrueNAS110. Zarchiwizowane dane z 22.10.2026 potwierdzają PASS dla testów regresyjnych i Windows Offline Files oraz kontrolę SHA-256 wszystkich sześciu artefaktów. Patch zmienia 7 plików (+241/-21).

To mój niezależny wkład integracyjny, nie deklaracja autorstwa kodu upstream. Historyczny nagłówek `CERTBUD Backport` jest objaśniony w repozytorium: **[UZUPEŁNIJ LINK GITHUB]**.

Proszę o analizę możliwości dołączenia poprawki do oficjalnego wydania. Mogę udostępnić dodatkowe, uprzednio zanonimizowane archiwa i wyniki.

Rafał Gładysz
Specjalista ds. sieci i urządzeń automatyki
https://github.com/GoldenartsPL
