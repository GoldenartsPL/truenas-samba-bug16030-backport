# Odpowiedź iXsystems na zgłoszenie NAS-144905 (2026-10)

Oficjalne zgłoszenie: https://ixsystems.atlassian.net/browse/NAS-144905

## Wynik zgłoszenia

Zgłoszenie zostało zamknięte po odpowiedzi inżyniera Andrew Walkera:

> I don’t see strong reason to backport for hotfix release. 27 already has upstream fix and we’re close to release.

Znaczenie: według odpowiedzi iXsystems gałąź TrueNAS 27 zawiera już oryginalną poprawkę upstream. Osobny backport w formie hotfixa nie został uznany za uzasadniony. **Nie oznacza to**, że nasz społecznościowy patch został włączony do TrueNAS 27 ani oficjalnie zatwierdzony przez iXsystems.

## Status projektu

Repozytorium pozostaje **nieoficjalnym backportem dla TrueNAS CE 25.10.7** oraz dokumentacją historycznych prac i testów. Zapraszamy do przeglądu kodu i niezależnych testów **wyłącznie w odizolowanym laboratorium**. Nie należy instalować nieoficjalnego pakietu Samba na produkcji tylko w celu przeprowadzenia testu.

- Błąd upstream: https://bugzilla.samba.org/show_bug.cgi?id=16030
- Repozytorium: https://github.com/GoldenartsPL/truenas-samba-bug16030-backport
- Jira TrueNAS: https://ixsystems.atlassian.net/browse/NAS-144905

## Autorstwo

Autorstwo oryginalnego kodu należy do twórców poprawki Samba, w tym Ralpha Boehme, zgodnie z historią upstream. Rafał Gładysz (GoldenartsPL) samodzielnie przygotował backport, kompilację, integrację, wdrożenie i testy na TrueNAS 25.10.7. CERTBUD stanowiło wyłącznie środowisko wdrożenia i testów.
