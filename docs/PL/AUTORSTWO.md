# Autorstwo i pochodzenie zmian

## Oryginalna poprawka Samba

Kod naprawiający **Samba BUG16030** pochodzi z projektu Samba; osoba publikująca to repozytorium **nie jest autorem pierwotnego kodu poprawki**.

- **Autor oryginalnej poprawki:** Ralph Boehme (projekt Samba), wskazany w oficjalnych informacjach o wydaniach oraz historii commitów.
- **Recenzent upstream:** Stefan Metzmacher (w commitach, które zawierają oznaczenie Reviewed-by).
- **Zgłoszenie:** https://bugzilla.samba.org/show_bug.cgi?id=16030
- **Informacje o wydaniu:** https://www.samba.org/samba/samba/history/samba-4.23.9.html
- **Historia upstream:** https://www.mail-archive.com/samba-cvs@lists.samba.org/msg89805.html

Właściwym źródłem przypisania autorstwa każdej zmiany są metadane commitów upstream.

## Adaptacja do TrueNAS i testy

**Rafał Gładysz** (w metadanych Git: Rafal Gladysz), GitHub: https://github.com/GoldenartsPL

Stanowisko: Specjalista ds. sieci i urządzeń automatyki.

Samodzielnie przygotował backport do TrueNAS CE 25.10.7, pakiet, kompilację, wdrożenie i testy. Kompilację i testy wykonano na Ubuntu oraz w maszynie wirtualnej TrueNAS CE 25.10.7 na Proxmoxie. Poprawiona wersja została również wdrożona i sprawdzona w środowisku TrueNAS CERTBUD.

**CERTBUD to środowisko testów i wdrożenia**, a nie autor ani zespół programistyczny opracowujący tę poprawkę.

## Nienaruszona postać patcha

Historyczny plik patcha zachowujemy bez modyfikacji, wraz z nagłówkiem `From: CERTBUD Backport <certbud-backport@localhost>`. Ten wpis jest historyczną etykietą **lokalnego commita integracyjnego**, a nie przypisaniem autorstwa pierwotnego kodu zespołowi CERTBUD.

SHA-256 patcha: `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`

Repozytorium publikuje integrację istniejącej poprawki i nie jest oficjalnym wydaniem iXsystems.
