# Gift-Shop-Database-Design
Avramescu Cosmin-Alexandru 344C3

Software necesar pentru rularea aplicatiei:
Client Oracle
SQL Developer

Fisierul python apeleaza procedurile stocate si afiseaza rezultate text. Pentru grafice, am folosit PowerBI cu aceleasi select-uri din procedurile stocate.

Pentru a rula aplicatia trebuie urmati acesti pasi (demo vizual in videoclipul din arhiva):
1. Se stocheaza package-ul pck_gift_shop in baza de date prin intermediul SQL Developer. Se apasa New Connection, se introduc datele
my-oracle-db, system, parolaAiaPuternic4, XE, se apasa Test, Save, Connect.
2. Se da copy-paste la scripturile sql in SQL Developer, intai la create.sql, apoi la insert_data.sql si commit din butonul de sus cu bifa verde.
3. Din panoul din stanga al SQL Developer, de la Packages, se adauga un pachet nou. Se introduc pe rand, copy-paste, din fisierul pck_gift_shop.sql, crearea antetului pachetului, apoi body-ul pachetului (sunt despartite de o linie comentata) si dupa fiecare se compileaza (butonul cu rotitele gri) si in final se da commit.
4. Se ruleaza comanda python main.py. Se vor afisa rezultatele celor 3 proceduri interogate.