# Publikacja na GitHub — dokładnie krok po kroku (PL)

## A. Skopiowanie patcha z TrueNAS110 na komputer Windows (PowerShell)

1. Rozpakuj dostarczony ZIP w Windows, np. `C:\GitHub\truenas-samba-bug16030-backport`.
2. W PowerShell na Windows przejdź do katalogu repozytorium: `cd 'C:\GitHub\truenas-samba-bug16030-backport'` (dostosuj ścieżkę).
3. Pobierz **tylko oryginalny patch** po SSH (jeżeli SSH/SCP do TrueNAS110 jest dostępny):

   `scp cb_admin@192.168.33.110:/mnt/sys_pool/certbud-samba-build/artifacts/bug16030/BUG16030-TrueNAS-25.10.7.patch .\patches\`

   Adres jest jedynie przykładem z infrastruktury używanej w projekcie; jeżeli inny adres jest właściwy, użyj swojego. Jeśli SCP nie ma dostępu, przenieś plik przez bezpieczny udział SMB lub WinSCP i zachowaj nazwę.
4. Na Windows zweryfikuj hash: `Get-FileHash .\patches\BUG16030-TrueNAS-25.10.7.patch -Algorithm SHA256`. Musi być `e988506ec8db69ff25401c05975c64014534393fdeb5e5af60592c246af7659e`.
5. Gdy hash jest inny, **nie publikuj** patcha; pobierz ponownie.

## B. Utworzenie repozytorium na GitHub w przeglądarce (bez instalacji Git)

1. Zaloguj się jako https://github.com/GoldenartsPL.
2. Wejdź na https://github.com/new.
3. Owner: `GoldenartsPL`; Repository name: `truenas-samba-bug16030-backport`; Visibility: **Public**.
4. Jeżeli masz przygotowane pliki lokalnie, **nie zaznaczaj** automatycznego generowania README/license/.gitignore, aby uniknąć konfliktu.
5. Kliknij **Create repository**. Na pustym repo wybierz `uploading an existing file` / `Add file → Upload files`.
6. Przeciągnij **zawartość rozpakowanego katalogu**, zachowując strukturę `docs/`, `scripts/`, `patches/` i pliki główne. Interfejs wgrywania folderów zależy od przeglądarki; jeśli nie zachowuje podfolderów, użyj metody Git (sekcja C).
7. Upewnij się, że na ekranie przesyłania występuje `patches/BUG16030-TrueNAS-25.10.7.patch`, `README.md`, `README.pl.md`, dokumenty, skrypty.
8. W polu Commit message wpisz `Publish documented Samba BUG16030 TrueNAS backport` i kliknij **Commit changes**.
9. Otwórz stronę repo i `patches/BUG16030-TrueNAS-25.10.7.patch` — sprawdź, czy GitHub wyświetla źródło.

## C. Alternatywa — Git z PowerShell (najpewniej zachowuje foldery)

Po utworzeniu **pustego** repozytorium (kroki 1–5):

```powershell
cd 'C:\GitHub\truenas-samba-bug16030-backport'
git init
git branch -M main
git add .
git status
git commit -m "Publish documented Samba BUG16030 TrueNAS backport"
git remote add origin https://github.com/GoldenartsPL/truenas-samba-bug16030-backport.git
git push -u origin main
```

Jeżeli Git poprosi o tożsamość, ustaw `git config user.name 'Rafał Gładysz'` i `git config user.email 'TWÓJ_PUBLICZNY_LUB_GITHUB_NOREPLY_EMAIL'` (nie wstawiaj fikcyjnego adresu). Autoryzacja może użyć Git Credential Manager lub przeglądarki.

## D. Udostępnienie iXsystems i społeczności

1. Najpierw zweryfikuj publiczny link: https://github.com/GoldenartsPL/truenas-samba-bug16030-backport.
2. Sprawdź istniejące zgłoszenia w https://jira.ixsystems.com / https://ixsystems.atlassian.net; utwórz zgłoszenie, jeśli brak odpowiednika.
3. Wklej treść `docs/EN/JIRA-SUBMISSION.md`, **zastępując placeholder** linkiem GitHub.
4. Skopiuj adres/ID zgłoszenia. Na https://forums.truenas.com opublikuj `docs/EN/FORUM-POST.md` z linkami GitHub i Jira.
5. Sprawdź GitHub Issues i pytania społeczności, odpowiadaj z wynikami testów i bez danych wewnętrznych.

**Nie publikuj na razie archiwum źródeł 205 MB, DEB 15 MB ani pełnych logów**. Szczególnie logi trzeba wcześniej przeglądnąć pod kątem sekretów. Niewielki patch + dokumenty wystarczają do zgłoszenia.
