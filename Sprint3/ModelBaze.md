**1. Glavni entiteti i kljucni atributi**

U tabeli ispod prikazani su glavni entiteti sistema i njihovi kljucni atributi. Za svaki entitet naveden je kratak opis njegove uloge u sistemu, kao i najvazniji atributi, pri cemu su posebno oznaceni primarni i strani kljucevi.

| Entitet | Opis | Kljucni atributi |
|---|---|---|
| Korisnik | Predstavlja registrovanog korisnika sistema, ukljucujuci administratora, organizatora, igraca, trenera, navijaca i vlasnika objekta. | korisnikId [PK], punoIme, email, hashLozinke, uloga, statusNaloga, statusOdobrenja, datumKreiranja |
| Sport | Predstavlja sportsku kategoriju kojoj pripadaju lige, timovi i utakmice. | sportId [PK], naziv, opis, aktivan |
| Liga | Predstavlja organizovano takmicenje unutar odredenog sporta. | ligaId [PK], naziv, sezona, sportId [FK], organizatorId [FK], status, opis |
| Tim | Predstavlja sportsku ekipu koja moze ucestvovati u jednoj ili vise liga. | timId [PK], naziv, sportId [FK], opis, logoUrl, status |
| ClanstvoTima | Predstavlja vezu izmedu korisnika i tima, npr. igrac ili trener u odredenom timu. | clanstvoTimaId [PK], timId [FK], korisnikId [FK], ulogaUTimu, datumPridruzivanja, status |
| UcesceULigi | Predstavlja prijavu i status ucesca odredenog tima u ligi. | ucesceULigiId [PK], ligaId [FK], timId [FK], prijavioKorisnikId [FK], statusPrijave, datumPrijave, datumOdobrenja |
| Utakmica | Predstavlja zakazanu utakmicu izmedu dva tima u okviru lige. | utakmicaId [PK], ligaId [FK], domaciTimId [FK], gostujuciTimId [FK], objekatId [FK], datumVrijemePocetka, datumVrijemeZavrsetka, status |
| RezultatUtakmice | Predstavlja evidentirani rezultat odigrane utakmice. | rezultatUtakmiceId [PK], utakmicaId [FK], domaciRezultat, gostujuciRezultat, unioKorisnikId [FK], datumUnosa |
| StavkaTabele | Predstavlja plasman jednog tima na tabeli odredene lige. | stavkaTabeleId [PK], ligaId [FK], timId [FK], odigrane, pobjede, nerijesene, porazi, datiGolovi, primljeniGolovi, golRazlika, bodovi, pozicija |
| SportskiObjekat | Predstavlja teren, dvoranu ili drugi sportski objekat kojim upravlja vlasnik. | objekatId [PK], vlasnikId [FK], naziv, adresa, opis, kapacitet, status |
| TerminObjekta | Predstavlja konkretan vremenski termin u sportskom objektu koji moze biti slobodan, zauzet ili blokiran. | terminObjektaId [PK], objekatId [FK], datumVrijemePocetka, datumVrijemeZavrsetka, tipTermina, status |
| ZahtjevZaRezervaciju | Predstavlja zahtjev korisnika za rezervaciju termina koji vlasnik objekta moze odobriti ili odbiti. | zahtjevZaRezervacijuId [PK], terminObjektaId [FK], korisnikId [FK], timId [FK, opcionalno], tipZahtjeva, status, datumZahtjeva, datumObrade, obradioKorisnikId [FK], razlogOdbijanja |
| StavkaListeCekanja | Predstavlja korisnika koji ceka oslobadanje zauzetog termina. | stavkaListeCekanjaId [PK], terminObjektaId [FK], korisnikId [FK], redniBroj, datumKreiranja, status |
| OmiljeniTim | Predstavlja tim koji je korisnik oznacio kao omiljeni radi pracenja sadrzaja i primanja obavjestenja. | omiljeniTimId [PK], korisnikId [FK], timId [FK], datumDodavanja |
| Notifikacija | Predstavlja obavjestenje poslano korisniku o rezultatima, rasporedu, rezervacijama ili drugim vaznim dogadajima. | notifikacijaId [PK], korisnikId [FK], tip, naslov, poruka, procitana, datumSlanja, povezaniEntitetTip, povezaniEntitetId |
| AIPredikcija | Predstavlja informativnu AI procjenu ishoda utakmice ili konacnog poretka lige na osnovu historijskih podataka. | aiPredikcijaId [PK], ligaId [FK], utakmicaId [FK, opcionalno], predvideniIshod, vjerovatnoca, objasnjenje, datumGenerisanja |

**2. Veze između entiteta**

U tabeli ispod prikazane su kljucne veze izmedu entiteta sistema, zajedno sa kardinalnostima i kratkim objasnjenjem njihove uloge.

| Entitet 1 | Entitet 2 | Kardinalnost | Opis veze |
|---|---|---|---|
| Sport | Liga | 1:N | Jedan sport moze imati vise liga, dok svaka liga pripada tacno jednom sportu. |
| Sport | Tim | 1:N | Jedan sport moze imati vise timova, dok svaki tim pripada tacno jednom sportu. |
| Korisnik | Liga | 1:N | Jedan korisnik u ulozi organizatora moze upravljati sa vise liga, dok svaka liga ima jednog organizatora. |
| Korisnik | SportskiObjekat | 1:N | Jedan korisnik u ulozi vlasnika moze upravljati sa vise sportskih objekata, dok svaki objekat ima jednog vlasnika. |
| Korisnik | ClanstvoTima | 1:N | Jedan korisnik moze imati vise zapisa clanstva, npr. biti igrac ili trener u jednom ili vise timova. |
| Tim | ClanstvoTima | 1:N | Jedan tim moze imati vise clanova, dok svaki zapis clanstva pripada tacno jednom timu. |
| Liga | UcesceULigi | 1:N | Jedna liga moze imati vise prijavljenih timova kroz zapise o ucescu. |
| Tim | UcesceULigi | 1:N | Jedan tim moze ucestvovati u vise liga, dok svaki zapis o ucescu pripada tacno jednom timu. |
| Korisnik | UcesceULigi | 1:N | Jedan korisnik, najcesce trener, moze poslati vise prijava tima na ligu ili takmicenje. |
| Liga | Utakmica | 1:N | Jedna liga sadrzi vise utakmica, dok svaka utakmica pripada tacno jednoj ligi. |
| Tim | Utakmica | 1:N | Jedan tim moze ucestvovati u vise utakmica, bilo kao domaci ili gostujuci tim. |
| SportskiObjekat | Utakmica | 1:N | Jedan sportski objekat moze biti lokacija za vise utakmica, dok se svaka utakmica igra na jednom objektu. |
| Utakmica | RezultatUtakmice | 1:0..1 | Jedna utakmica moze imati najvise jedan evidentiran rezultat, a rezultat ne moze postojati bez utakmice. |
| Korisnik | RezultatUtakmice | 1:N | Jedan korisnik, najcesce organizator, moze unijeti vise rezultata utakmica. |
| Liga | StavkaTabele | 1:N | Jedna liga ima vise stavki tabele, po jednu za svaki tim koji ucestvuje u ligi. |
| Tim | StavkaTabele | 1:N | Jedan tim moze imati vise stavki tabele kroz razlicite lige ili sezone. |
| SportskiObjekat | TerminObjekta | 1:N | Jedan sportski objekat moze imati vise termina, dok svaki termin pripada tacno jednom objektu. |
| TerminObjekta | ZahtjevZaRezervaciju | 1:N | Za jedan termin moze postojati vise zahtjeva kroz vrijeme, ali samo jedan moze biti odobren za aktivni termin. |
| Korisnik | ZahtjevZaRezervaciju | 1:N | Jedan korisnik moze podnijeti vise zahtjeva za rezervaciju termina. |
| Tim | ZahtjevZaRezervaciju | 1:N | Jedan tim moze biti vezan za vise zahtjeva za rezervaciju, ali je ova veza opcionalna jer individualna rezervacija ne mora biti vezana za tim. |
| Korisnik | ZahtjevZaRezervaciju (obrada) | 1:N | Jedan korisnik, najcesce vlasnik objekta, moze obraditi vise zahtjeva za rezervaciju. |
| TerminObjekta | StavkaListeCekanja | 1:N | Jedan zauzet termin moze imati vise korisnika na listi cekanja. |
| Korisnik | StavkaListeCekanja | 1:N | Jedan korisnik moze biti prijavljen na listu cekanja za vise termina. |
| Korisnik | OmiljeniTim | 1:N | Jedan korisnik moze imati jedan ili vise zapisa omiljenih timova, zavisno od poslovnog pravila sistema. |
| Tim | OmiljeniTim | 1:N | Jedan tim moze biti oznacen kao omiljeni od strane vise korisnika. |
| Korisnik | Notifikacija | 1:N | Jedan korisnik moze primiti vise notifikacija o rezultatima, rasporedu, rezervacijama i drugim dogadjajima. |
| Liga | AIPredikcija | 1:N | Jedna liga moze imati vise AI predikcija, npr. za poredak ili vise buducih utakmica. |
| Utakmica | AIPredikcija | 1:0..N | Jedna utakmica moze imati vise AI predikcija kroz razlicita generisanja modela, ali ova veza moze biti opcionalna ako je predikcija vezana samo za ligu. |

**Poslovna pravila vazna za model**

U nastavku su izdvojena pravila koja direktno ogranicavaju entitete, njihove medjusobne odnose i dozvoljena stanja unutar sistema.

- Svaki korisnik mora imati jedinstven email u sistemu. 

- Funkcionalnosti koje korisnik moze koristiti zavise od njegove uloge u sistemu. 

- Korisnici sa specijalnim ulogama, kao sto su vlasnik objekta i organizator lige, dobijaju prava za kreiranje objekata ili liga tek nakon odobrenja administratora.

- Liga i tim se uvijek posmatraju u okviru odgovarajuceg sporta. 

- Tim ne moze ucestvovati u ligi bez prethodne prijave na takmicenje.

- Isti tim ne smije biti dodan vise puta u istu ligu. 

- Trener moze upravljati samo timom koji mu je dodijeljen. 

- Utakmica se moze zakazati samo ako su uneseni validni podaci o terminu, timovima i lokaciji, te ako ne postoji preklapanje termina.

- Rezultat se moze evidentirati samo za prethodno zakazanu i odigranu utakmicu.

- Nakon unosa rezultata, tabela i bodovi se automatski azuriraju.

- Vlasnik sportskog objekta upravlja terminima svog objekta, a termini unutar istog objekta se ne smiju preklapati.

- Rezervacija termina se zasniva na zahtjevu korisnika, a termin postaje zauzet tek nakon odobrenja vlasnika objekta. 

- Ako vlasnik odbije zahtjev za rezervaciju, termin ostaje slobodan. 

- Sistem ne smije dozvoliti duplu rezervaciju istog termina, niti isti korisnik smije rezervisati isti termin vise puta. 

- Otkazivanjem rezervacije termin se oslobadja, a korisnici sa liste cekanja se obavjestavaju o oslobodjenom terminu. 

- Lista cekanja ne rezervise termin automatski, nego samo evidentira korisnike i omogucava njihovo obavjestavanje po redoslijedu. 

- Odabir omiljenog tima predstavlja osnovu za personalizovane notifikacije registrovanom navijacu. 

- AI predikcija sluzi iskljucivo kao informativni prikaz i nema uticaj na stvarne rezultate niti na stvarni poredak na tabeli. 