# Jak korzystać z poprawki — zakres i bezpieczeństwo

1. Repozytorium zawiera **nieoficjalny backport tylko do TrueNAS CE 25.10.7**, truenas-samba 4.22.10; nie deklarujemy kompatybilności z innymi wersjami.
2. Zweryfikuj integralność patcha: `bash scripts/verify-release.sh` — bez instalacji.
3. Dla administratorów iXsystems: porównanie kodu ze zgłoszeniem Samba BUG16030 i bazą repo `truenas/samba`. Źródła `.tar.gz` z naszego archiwum są **już zmienione**, więc nie służą do sprawdzenia `git apply --check` na czystej bazie.
4. W odizolowanym LAB można wykonać `git apply --check /ścieżka/do/patcha` z katalogu **czystych źródeł zgodnej wersji**; polecenie nie zmienia plików. Późniejsza budowa/instalacja to zadanie dla doświadczonych testerów.
5. Nie dostarczamy automatycznego instalatora produkcyjnego ani polecenia `dpkg -i` jako uniwersalnej procedury: ryzyko niezgodności iXsystems/aktualizacji.
6. Skrypty diagnostyczne służą do odczytu, zbierania wyników i porównania z oczekiwanymi testami. Nie ma potrzeby instalowania kolejnego TrueNAS w Twoim środowisku; testy historyczne uznajemy za zakończone.

Lista scenariuszy w [TESTY.md](TESTY.md).
