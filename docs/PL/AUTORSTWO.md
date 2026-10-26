# Autorstwo i pochodzenie zmian

## Oryginalna poprawka Samba

Kod naprawiający Samba BUG16030 pochodzi z projektu Samba. **Ralph Boehme** jest wskazany jako autor poprawki w informacjach o wydaniu Samby. **Stefan Metzmacher** jest recenzentem tam, gdzie wskazują na to konkretne commity upstream. Autorstwo wszystkich indywidualnych zmian ustala historia Git Samby. Publikujący backport nie przypisuje sobie autorstwa oryginalnego kodu.

- [Samba BUG16030](https://bugzilla.samba.org/show_bug.cgi?id=16030)
- [Informacje o wydaniu 4.23.9](https://www.samba.org/samba/samba/history/samba-4.23.9.html)

## Integrator backportu TrueNAS

**Rafał Gładysz**, [GoldenartsPL](https://github.com/GoldenartsPL), e-mail: **rafal.glad@gmail.com**.

Specjalista ds. sieci i urządzeń automatyki. Samodzielna integracja poprawki dla TrueNAS CE 25.10.7, pakietowanie, kompilacja, wdrożenie i testy na Ubuntu/Linux, testowym TrueNAS w Proxmoxie oraz TrueNAS110. CERTBUD jest środowiskiem wdrożenia i testów, nie autorem poprawki Samby.

## Podpis lokalnego patcha i sumy

Publiczny patch zawiera `From: Rafal Gladysz <rafal.glad@gmail.com>`, identyfikujące **lokalny commit integracyjny**, a nie twórcę pierwotnego kodu Samby. Zmiana podpisu nie modyfikowała różnic w kodzie.

SHA-256 publicznego patcha: `eb32ddc7b5f099132fd770d3b750b09f925d31931c0211e8addff18828c91070`.

Archiwalna poprawka z historycznym podpisem `CERTBUD Backport <certbud-backport@localhost>` ma SHA-256 `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`. Zachowano ją poza repozytorium dla możliwości weryfikacji pochodzenia.

Repozytorium jest nieoficjalnym projektem społecznościowym, niewspieranym przez iXsystems.
