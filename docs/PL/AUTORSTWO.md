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

## Pochodzenie i nagłówek patcha

Historyczna wersja patcha (SHA-256 e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e) została zachowana osobno przez autora integracji.
Na potrzeby publikacji zmieniono wyłącznie nagłówki formatu mailowego From: i Subject:, zastępując dawną etykietę CERTBUD Backport przez Rafal Gladysz <rafal.glad@gmail.com>. Kod zmian (diff) nie został zmodyfikowany.
SHA-256 opublikowanej wersji: eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070.

Pole From: oznacza integratora backportu do TrueNAS, a NIE autora oryginalnego kodu Samba. Autorzy upstream są wskazani powyżej.