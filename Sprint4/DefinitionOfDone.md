# Definition of Done (DoD)

## 1. Uvod

Ovaj dokument definiše skup kriterija koje svaka User Story mora zadovoljiti kako bi se smatrala završenom u okviru projekta *Sistem za upravljanje sportskim terminima i ligama*.

Definition of Done predstavlja zajednički standard kvaliteta za cijeli tim i osigurava da svaka implementirana funkcionalnost bude ne samo razvijena, već i testirana, validirana, pregledana i u potpunosti integrisana u sistem.

Svrha ovog dokumenta je eliminisati nejasnoće oko toga šta znači da je zadatak "gotov", te osigurati da svi članovi tima imaju isto razumijevanje završetka rada.

Ovaj dokument važi za sve User Stories u svim sprintovima i koristi se kao kontrolna lista prilikom završetka svakog zadatka.

---

## 2. Svrha dokumenta

Cilj Definition of Done dokumenta je:

- osigurati konzistentan kvalitet implementacije kroz cijeli projekat  
- omogućiti svim članovima tima jasno razumijevanje kada je zadatak zaista završen  
- spriječiti situacije gdje je funkcionalnost djelimično implementirana ili nedovoljno testirana  
- osigurati da svaka User Story zadovoljava i funkcionalne i tehničke zahtjeve  
- omogućiti lakšu saradnju i integraciju rada između članova tima  
- smanjiti rizik od grešaka i regresija u sistemu  

---

## 3. Definicija završetka (Definition of Done)

User Story se smatra završenim (**Done**) isključivo kada su svi kriteriji definisani u ovom dokumentu u potpunosti ispunjeni.

Djelimična implementacija, neprovjeren kod, neispunjeni acceptance criteria ili neintegrisana funkcionalnost ne smatraju se završenim radom.

---

## 4. Kriteriji za završetak User Story-ja

User Story se smatra završenim (Done) tek kada su ispunjeni svi sljedeći kriteriji:

---

### 1. Funkcionalnost je implementirana

Implementacija User Story-ja je završena u skladu sa opisom i poslovnom vrijednošću.

To podrazumijeva da:
- su implementirani svi potrebni dijelovi sistema (frontend i backend gdje je primjenjivo)  
- funkcionalnost odgovara opisu iz User Story-ja  
- funkcionalnost je dostupna odgovarajućim korisničkim ulogama (admin, trener, igrač, vlasnik objekta, gost)  
- su poštovana pravila pristupa i autorizacije  
- implementacija je usklađena sa postojećom arhitekturom sistema  
- funkcionalnost je pravilno integrisana u postojeći sistem bez narušavanja drugih dijelova  

---

### 2. Acceptance Criteria su u potpunosti zadovoljeni

Svi acceptance criteria definisani u User Story-ju su implementirani, testirani i potvrđeni.

To znači da:
- funkcionalnost radi u svim očekivanim scenarijima  
- svi definisani poslovni zahtjevi su ispunjeni  
- sistem ispravno reaguje na nevalidne unose (pogrešni podaci, nedostajući podaci, nedozvoljene akcije)  
- validacije su implementirane i funkcionišu ispravno  
- poruke o greškama i potvrde korisniku su prikazane na odgovarajući način  

User Story se ne može smatrati završenim bez potpunog ispunjenja acceptance criteria.

---

### 3. Funkcionalnost radi u razvojnom (dev) okruženju

Implementirana funkcionalnost je uspješno pokrenuta i testirana u razvojnom okruženju.

To podrazumijeva da:
- aplikacija se može uspješno buildati bez grešaka  
- nema runtime grešaka tokom izvršavanja funkcionalnosti  
- funkcionalnost radi stabilno u integraciji sa ostatkom sistema  
- podaci se ispravno obrađuju, čuvaju i prikazuju  
- sistem se ponaša očekivano u realnim scenarijima korištenja  

---

### 4. Testiranje je izvršeno

Funkcionalnost je testirana i potvrđeno je da radi ispravno.

Testiranje uključuje:
- provjeru osnovnih scenarija korištenja (happy path)  
- provjeru negativnih scenarija (nevalidni inputi, greške)  
- provjeru edge case-ova (duplikati, konflikti termina, ograničenja sistema)  
- provjeru da izmjene ne utiču negativno na postojeće funkcionalnosti (regresija)  

Svi planirani testovi (unit, integracijski ili ručni) moraju biti uspješno izvršeni bez grešaka.

---

### 5. Kod je pregledan (Code Review)

Kod je pregledan od strane najmanje jednog člana tima prije integracije u glavni branch.

Code review uključuje:
- provjeru ispravnosti implementacije  
- provjeru usklađenosti sa zahtjevima User Story-ja  
- provjeru strukture, čitljivosti i organizacije koda  
- identifikaciju potencijalnih grešaka, sigurnosnih problema ili loših praksi  
- davanje sugestija za poboljšanje  

Sve primjedbe iz code review-a moraju biti riješene prije merge-a.

---

### 6. Kod je integrisan u glavni branch

Implementacija je uspješno integrisana u zajednički repozitorij projekta.

To podrazumijeva da:
- je razvoj izvršen u posebnoj grani (feature branch)  
- izmjene su commitane sa jasnim i smislenim commit porukama  
- kod je pushan na udaljeni repozitorij  
- (ako se koristi) kreiran je pull request i odobren od strane tima  
- merge je izvršen u glavni branch (main) bez konflikata  
- kod je dostupan svim članovima tima za dalji razvoj  

---

### 7. Izvršena je završna provjera (Final Review)

Nakon integracije, izvršena je finalna provjera funkcionalnosti.

To uključuje:
- provjeru rada funkcionalnosti nakon merge-a  
- provjeru da nema regresija u sistemu  
- provjeru usklađenosti sa ostatkom aplikacije  
- potvrdu od strane tima da funkcionalnost zadovoljava sve zahtjeve  

Tek nakon ove provjere, User Story može biti označen kao završen.

---

## 5. Dodatna pravila

Pored osnovnih kriterija, važe i sljedeća pravila:

- implementacija mora biti jasno povezana sa odgovarajućim User Story-jem i njegovim Acceptance Criteria  
- funkcionalnost mora biti usklađena sa definisanom arhitekturom sistema  
- implementacija mora poštovati postojeće modele podataka i relacije  
- sigurnosni zahtjevi (autentifikacija, autorizacija, enkripcija podataka) moraju biti ispoštovani  
- podaci prikazani korisniku moraju biti tačni, konzistentni i ažurni  
- sistem mora pravilno obrađivati nevalidne unose i konfliktne situacije  
- za kompleksne funkcionalnosti (rezervacije, evidencija utakmica, AI predikcije) mora se posebno provjeriti logika i stabilnost sistema  

---

## 6. Kada User Story NIJE Done

User Story se ne smatra završenim ako:

- acceptance criteria nisu u potpunosti implementirani  
- funkcionalnost radi samo djelimično  
- implementacija nije testirana  
- postoje poznate greške koje utiču na korištenje funkcionalnosti  
- code review nije izvršen  
- kod nije mergean u glavni branch  
- funkcionalnost ne radi stabilno u sistemu  
- postoje problemi u integraciji sa ostatkom sistema  
- tim nije potvrdio da je funkcionalnost spremna  

---

## 7. Zaključak

Definition of Done osigurava da svaki User Story bude implementiran na konzistentan, kvalitetan i pouzdan način.

Primjenom ovog dokumenta tim osigurava da svaka funkcionalnost:
- zadovoljava definisane zahtjeve  
- radi stabilno u sistemu  
- ne narušava postojeće funkcionalnosti  
- spremna je za dalji razvoj i korištenje  

Tek kada su svi kriteriji iz ovog dokumenta ispunjeni, User Story se može označiti kao **Done**.