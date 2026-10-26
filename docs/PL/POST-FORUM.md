# Polski podgląd wpisu na forum

**Tytuł:** Przetestowany przez społeczność backport Samba BUG16030 dla TrueNAS CE 25.10.7 (Windows Offline Files)

Przygotowałem specyficzny dla TrueNAS 25.10.7 / Samba 4.22.10 backport poprawki upstream BUG16030. Autorem oryginalnej poprawki jest Ralph Boehme, recenzentem Stefan Metzmacher. Mój indywidualny wkład obejmował integrację z TrueNAS, kompilację i testy.

Kompilację przeprowadzono na Ubuntu/Linux, testy również na wirtualnym TrueNAS 25.10.7 w Proxmox. Archiwalny BUILD-INFO wskazuje PASS regresji i Windows Offline Files; wdrożono też na TrueNAS110. Patch obejmuje 7 plików (+241/-21).

Repo: **[LINK GITHUB]**
Zgłoszenie iXsystems: **[LINK JIRA]**

Jest to wersja nieoficjalna. Nie zalecam instalacji na produkcji bez osobnej analizy kompatybilności i wycofania zmian. Zachęcam do testów w LAB i przekazania wyników.

Rafał Gładysz / GoldenartsPL
