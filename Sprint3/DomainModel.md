## Domenski Model

---

**1. Glavni entiteti i ključni atributi**

U tabeli ispod prikazani su glavni entiteti sistema i njihovi ključni atributi. Za svaki entitet naveden je kratak opis njegove uloge u sistemu, kao i najvažniji atributi, pri čemu su posebno označeni primarni i strani ključevi.

| Entitet | Opis | Ključni atributi |
|---|---|---|
| Korisnik | Predstavlja registrovanog korisnika sistema, uključujući administratora, organizatora, igrača, trenera, navijača i vlasnika objekta. | korisnikId [PK], punoIme, email, hashLozinke, datumKreiranja, brojPrekrsenihRezervacija, statusPouzdanosti, uloga |
| Sport | Predstavlja sportsku kategoriju kojoj pripadaju takmičenja, timovi, utakmice i tipovi statistike. | sportId [PK], naziv, opis, daLiJeTimski |
| Takmicenje | Predstavlja organizovano takmičenje unutar određenog sporta. | takmicenjeId [PK], naziv, sezona, sportId [FK], organizatorId [FK], status, opis, pocetakTakmicenja, krajTakmicenja, tipTakmicenja |
| Tim | Predstavlja sportsku ekipu koja pripada određenom sportu i može učestvovati u jednom ili više takmičenja. | timId [PK], naziv, sportId [FK], opis, logoURL, status |
| ClanstvoTima | Predstavlja vezu između korisnika i tima, npr. igrač ili trener u određenom timu. | clanstvoTimaId [PK], timId [FK], korisnikId [FK], ulogaUTimu, datumPridruzivanja, status |
| UcesceUTakmicenju | Predstavlja prijavu i status učešća određenog tima u takmičenju. | ucesceUTakmicenjuId [PK], takmicenjeId [FK], timId [FK], prijavioKorisnikId [FK], statusPrijave, datumPrijave, datumOdobrenja |
| Utakmica | Predstavlja zakazanu utakmicu između dva tima u okviru takmičenja. | utakmicaId [PK], takmicenjeId [FK], domaciTimId [FK], gostujuciTimId [FK], objekatId [FK], vrijemePocetka, vrijemeZavrsetka, status, lokacija |
| RezultatUtakmice | Predstavlja evidentirani rezultat odigrane utakmice. | rezultatUtakmiceId [PK], utakmicaId [FK], domaciRezultat, gostujuciRezultat, unioKorisnikId [FK], datumUnosa |
| StatistikaTimaNaUtakmici | Predstavlja osnovni zapis statistike jednog tima u okviru konkretne utakmice. Konkretne vrijednosti statistike se ne čuvaju kao fiksne kolone, nego kroz povezanu tabelu vrijednosti. | statistikaTimaNaUtakmiciId [PK], utakmicaId [FK], timId [FK] |
| StatistikaIgracaNaUtakmici | Predstavlja osnovni zapis statistike pojedinačnog igrača u okviru konkretne utakmice i tima za koji je nastupio. Konkretne vrijednosti statistike se čuvaju kroz povezanu tabelu vrijednosti. | statistikaIgracaNaUtakmiciId [PK], utakmicaId [FK], timId [FK], korisnikId [FK] |
| TipStatistike | Predstavlja tip statistike koji pripada određenom sportu, npr. golovi, asistencije, šutevi, korneri, poeni ili drugi pokazatelji. | tipStatistikeId [PK], sportId [FK], naziv |
| VrijednostStatistikeTimaNaUtakmici | Predstavlja konkretnu vrijednost određenog tipa statistike za jedan tim na jednoj utakmici. | vrijednostStatistikeTimaNaUtakmiciId [PK], statistikaTimaNaUtakmiciId [FK], tipStatistikeId [FK], vrijednost |
| VrijednostStatistikeIgracaNaUtakmici | Predstavlja konkretnu vrijednost određenog tipa statistike za jednog igrača na jednoj utakmici. | vrijednostStatistikeIgracaNaUtakmiciId [PK], statistikaIgracaNaUtakmiciId [FK], tipStatistikeId [FK], vrijednost |
| PlasmanNaTabeli | Predstavlja plasman jednog tima na tabeli određenog takmičenja. | plasmanNaTabeliId [PK], timId [FK], takmicenjeId [FK], pobjede, nerijeseni, porazi, bodovi, pozicija |
| SportskiObjekat | Predstavlja teren, dvoranu ili drugi sportski objekat kojim upravlja vlasnik. | objekatId [PK], vlasnikId [FK], naziv, adresa, opis, kapacitet, status |
| TerminObjekta | Predstavlja konkretan vremenski termin u sportskom objektu koji može biti slobodan, zauzet ili blokiran. | terminObjektaId [PK], objekatId [FK], vrijemePocetka, vrijemeZavrsetka, tipTermina, status |
| ZahtjevZaRezervaciju | Predstavlja zahtjev korisnika za rezervaciju termina koji vlasnik objekta može odobriti, odbiti ili staviti na čekanje. | zahtjevZaRezervacijuId [PK], terminObjektaId [FK], korisnikId [FK], timId [FK], status, datumZahtjeva, datumObrade, razlogOdbijanja, obradioKorisnikId [FK] |
| Rezervacija | Predstavlja potvrđenu rezervaciju termina nastalu na osnovu odobrenog zahtjeva za rezervaciju. | rezervacijaId [PK], zahtjevZaRezervacijuId [FK], status, datumKreiranja, datumPotvrde, datumOtkazivanja, razlogOtkazivanja, otkazaoKorisnikId [FK] |
| StavkaListeCekanja | Predstavlja stavku liste čekanja nastalu na osnovu zahtjeva za rezervaciju kada termin nije odmah dostupan. | stavkaListeCekanjaId [PK], zahtjevZaRezervacijuId [FK], redniBroj, datumKreiranja, status |
| OmiljeniTim | Predstavlja tim koji je korisnik označio kao omiljeni radi praćenja sadržaja i primanja obavještenja. | omiljeniTimId [PK], korisnikId [FK], timId [FK], datumDodavanja, korisnickaPoruka |
| Notifikacija | Predstavlja obavještenje poslano korisniku o rezultatima, rasporedu, rezervacijama ili drugim važnim događajima. | notifikacijaId [PK], korisnikId [FK], tip, poruka, status, vrijemeSlanja, vrijemeCitanja |
| AIPredikcija | Predstavlja informativnu AI procjenu ishoda utakmice ili stanja/poretka takmičenja na osnovu historijskih podataka. | aiPredikcijaId [PK], takmicenjeId [FK], utakmicaId [FK], ishod, vjerovatnoca, objasnjenje, vrijemeGenerisanja |

---

**2. Veze između entiteta**

U tabeli ispod prikazane su ključne veze između entiteta sistema, zajedno sa kardinalnostima i kratkim objašnjenjem njihove uloge.

| Entitet 1 | Entitet 2 | Kardinalnost | Opis veze |
|---|---|---|---|
| Sport | Takmicenje | 1:N | Jedan sport može imati više takmičenja, dok svako takmičenje pripada tačno jednom sportu. |
| Sport | Tim | 1:N | Jedan sport može imati više timova, dok svaki tim pripada tačno jednom sportu. |
| Sport | TipStatistike | 1:N | Jedan sport može imati više tipova statistike koji definišu šta se može mjeriti za taj sport. |
| Korisnik | Takmicenje | 1:N | Jedan korisnik u ulozi organizatora može organizovati više takmičenja, dok svako takmičenje ima jednog organizatora. |
| Korisnik | SportskiObjekat | 1:N | Jedan korisnik u ulozi vlasnika može upravljati sa više sportskih objekata, dok svaki objekat ima jednog vlasnika. |
| Korisnik | ClanstvoTima | 1:N | Jedan korisnik može imati više zapisa članstva, npr. biti igrač ili trener u jednom ili više timova. |
| Tim | ClanstvoTima | 1:N | Jedan tim može imati više članova, dok svaki zapis članstva pripada tačno jednom timu. |
| Takmicenje | UcesceUTakmicenju | 1:N | Jedno takmičenje može imati više prijavljenih timova kroz zapise o učešću. |
| Tim | UcesceUTakmicenju | 1:N | Jedan tim može učestvovati u više takmičenja, dok svaki zapis o učešću pripada tačno jednom timu. |
| Korisnik | UcesceUTakmicenju | 1:N | Jedan korisnik, najčešće trener ili predstavnik tima, može poslati više prijava tima na takmičenje. |
| Takmicenje | Utakmica | 1:N | Jedno takmičenje sadrži više utakmica, dok svaka utakmica pripada tačno jednom takmičenju. |
| Tim | Utakmica | 1:N | Jedan tim može učestvovati u više utakmica kao domaći tim. Veza se ostvaruje preko atributa domaciTimId. |
| Tim | Utakmica | 1:N | Jedan tim može učestvovati u više utakmica kao gostujući tim. Veza se ostvaruje preko atributa gostujuciTimId. |
| SportskiObjekat | Utakmica | 1:N | Jedan sportski objekat može biti lokacija za više utakmica, dok se svaka utakmica može vezati za jedan objekat. |
| Utakmica | RezultatUtakmice | 1:0..1 | Jedna utakmica može imati najviše jedan evidentiran rezultat, a rezultat ne može postojati bez utakmice. |
| Korisnik | RezultatUtakmice | 1:N | Jedan korisnik, najčešće organizator ili ovlaštena osoba, može unijeti više rezultata utakmica. |
| Utakmica | StatistikaTimaNaUtakmici | 1:N | Jedna utakmica može imati više zapisa timske statistike, najčešće po jedan za svaki tim koji je učestvovao u utakmici. |
| Tim | StatistikaTimaNaUtakmici | 1:N | Jedan tim može imati više zapisa timske statistike kroz različite utakmice. |
| StatistikaTimaNaUtakmici | VrijednostStatistikeTimaNaUtakmici | 1:N | Jedan zapis timske statistike može imati više konkretnih vrijednosti statistike. |
| TipStatistike | VrijednostStatistikeTimaNaUtakmici | 1:N | Jedan tip statistike može biti korišten u više zapisa vrijednosti timske statistike. |
| Utakmica | StatistikaIgracaNaUtakmici | 1:N | Jedna utakmica može imati više zapisa statistike igrača, za sve igrače koji su nastupili. |
| Korisnik | StatistikaIgracaNaUtakmici | 1:N | Jedan korisnik u ulozi igrača može imati više zapisa statistike kroz različite utakmice. |
| Tim | StatistikaIgracaNaUtakmici | 1:N | Jedan tim može biti povezan sa više zapisa statistike igrača kroz različite utakmice. |
| StatistikaIgracaNaUtakmici | VrijednostStatistikeIgracaNaUtakmici | 1:N | Jedan zapis statistike igrača može imati više konkretnih vrijednosti statistike. |
| TipStatistike | VrijednostStatistikeIgracaNaUtakmici | 1:N | Jedan tip statistike može biti korišten u više zapisa vrijednosti statistike igrača. |
| Takmicenje | PlasmanNaTabeli | 1:N | Jedno takmičenje ima više stavki plasmana na tabeli, po jednu za svaki tim koji učestvuje u takmičenju. |
| Tim | PlasmanNaTabeli | 1:N | Jedan tim može imati više zapisa plasmana kroz različita takmičenja ili sezone. |
| SportskiObjekat | TerminObjekta | 1:N | Jedan sportski objekat može imati više termina, dok svaki termin pripada tačno jednom objektu. |
| TerminObjekta | ZahtjevZaRezervaciju | 1:N | Za jedan termin može postojati više zahtjeva za rezervaciju kroz vrijeme. |
| Korisnik | ZahtjevZaRezervaciju | 1:N | Jedan korisnik može podnijeti više zahtjeva za rezervaciju termina. |
| Tim | ZahtjevZaRezervaciju | 1:N | Jedan tim može biti naveden u više zahtjeva za rezervaciju, pri čemu timId može biti opcionalan ako je zahtjev individualan. |
| Korisnik | ZahtjevZaRezervaciju | 1:N | Jedan korisnik može obraditi više zahtjeva za rezervaciju. Veza se ostvaruje preko atributa obradioKorisnikId. |
| ZahtjevZaRezervaciju | Rezervacija | 1:0..1 | Jedan zahtjev za rezervaciju može rezultirati najviše jednom potvrđenom rezervacijom. |
| Korisnik | Rezervacija | 1:N | Jedan korisnik može otkazati više rezervacija. Veza se ostvaruje preko atributa otkazaoKorisnikId. |
| ZahtjevZaRezervaciju | StavkaListeCekanja | 1:0..1 | Jedan zahtjev za rezervaciju može biti stavljen na listu čekanja ako termin nije dostupan. |
| Korisnik | OmiljeniTim | 1:N | Jedan korisnik može imati više zapisa omiljenih timova. |
| Tim | OmiljeniTim | 1:N | Jedan tim može biti označen kao omiljeni od strane više korisnika. |
| Korisnik | Notifikacija | 1:N | Jedan korisnik može primiti više notifikacija o rezultatima, rasporedu, rezervacijama i drugim važnim događajima. |
| Takmicenje | AIPredikcija | 1:N | Jedno takmičenje može imati više AI predikcija. |
| Utakmica | AIPredikcija | 1:N | Jedna utakmica može imati više AI predikcija, pri čemu ova veza može biti opcionalna ako se predikcija odnosi na cijelo takmičenje. |

---

**Poslovna pravila važna za model**

U nastavku su izdvojena pravila koja direktno ograničavaju entitete, njihove međusobne odnose i dozvoljena stanja unutar sistema.

- Svaki korisnik mora imati jedinstven email u sistemu.

- Funkcionalnosti koje korisnik može koristiti zavise od njegove uloge u sistemu.

- Korisnici sa specijalnim ulogama, kao što su vlasnik objekta i organizator takmičenja, dobijaju prava za kreiranje objekata ili takmičenja tek nakon odobrenja administratora.

- Takmičenje i tim se uvijek posmatraju u okviru odgovarajućeg sporta.

- Jedan sport može imati više takmičenja, timova i tipova statistike.

- Tim ne može učestvovati u takmičenju bez prethodne prijave kroz zapis UcesceUTakmicenju.

- Isti tim ne smije biti dodan više puta u isto takmičenje.

- Trener ili drugi ovlašteni član može upravljati samo timom koji mu je dodijeljen kroz članstvo u timu.

- Utakmica se može zakazati samo između dva različita tima.

- Domaći i gostujući tim na utakmici ne smiju biti isti.

- Utakmica se može zakazati samo ako su uneseni validni podaci o takmičenju, timovima, vremenu i lokaciji.

- Ako se utakmica povezuje sa sportskim objektom, objekat mora biti dostupan u traženom vremenskom periodu.

- Rezultat se može evidentirati samo za prethodno zakazanu i odigranu utakmicu.

- Jedna utakmica može imati najviše jedan evidentiran rezultat.

- Nakon unosa rezultata, tabela i bodovi se automatski ažuriraju kroz zapise plasmana na tabeli.

- Jedan tim može imati najviše jedan zapis plasmana u okviru istog takmičenja.

- Detaljna statistika timova i igrača može se evidentirati samo za prethodno zakazanu i odigranu utakmicu.

- Statistika tima mora biti povezana sa konkretnom utakmicom i timom koji je učestvovao u toj utakmici.

- Statistika igrača mora biti povezana sa konkretnom utakmicom, igračem i timom za koji je igrač nastupio.

- Tipovi statistike se definišu po sportu, kako bi sistem podržao različite sportove bez dodavanja posebnih kolona za svaki sport.

- Konkretne vrijednosti statistike tima i igrača čuvaju se kroz tabele vrijednosti statistike, povezane sa odgovarajućim tipom statistike.

- Isti tip statistike ne smije biti evidentiran više puta za isti zapis statistike tima na utakmici.

- Isti tip statistike ne smije biti evidentiran više puta za isti zapis statistike igrača na utakmici.

- Zbirna statistika timova i igrača može se automatski ažurirati na osnovu unesenih podataka sa utakmica.

- Vlasnik sportskog objekta upravlja terminima svog objekta.

- Termini unutar istog sportskog objekta ne smiju se vremenski preklapati.

- Za jedan termin može postojati više zahtjeva za rezervaciju kroz vrijeme.

- Zahtjev za rezervaciju podnosi korisnik, a po potrebi može biti vezan za tim.

- Zahtjev za rezervaciju obrađuje ovlašteni korisnik, najčešće vlasnik sportskog objekta ili administrator.

- Ako vlasnik odbije zahtjev za rezervaciju, rezervacija se ne kreira, a razlog odbijanja se evidentira.

- Ako je zahtjev za rezervaciju odobren, može se kreirati najviše jedna rezervacija na osnovu tog zahtjeva.

- Rezervacija se zasniva na zahtjevu za rezervaciju i ne duplira podatke o terminu, korisniku i timu.

- Podaci o terminu, korisniku i timu za rezervaciju dobijaju se preko povezanog zahtjeva za rezervaciju.

- Sistem ne smije dozvoliti duplu aktivnu rezervaciju istog termina.

- Provjera duple aktivne rezervacije istog termina vrši se preko termina povezanog sa zahtjevom za rezervaciju.

- Otkazivanje aktivne rezervacije mora rezultirati promjenom statusa rezervacije i ponovnim oslobađanjem pripadajućeg termina u sistemu.

- Korisnik koji otkaže rezervaciju evidentira se kroz atribut otkazaoKorisnikId.

- Ako termin nije dostupan, zahtjev za rezervaciju može biti stavljen na listu čekanja.

- Stavka liste čekanja se veže za zahtjev za rezervaciju, a ne direktno za termin ili korisnika, jer se ti podaci dobijaju preko zahtjeva.

- Lista čekanja ne kreira rezervaciju automatski, nego evidentira redoslijed čekanja i omogućava obavještavanje korisnika.

- Kada se termin oslobodi, korisnici sa liste čekanja mogu biti obaviješteni prema redoslijedu.

- Odabir omiljenog tima predstavlja osnovu za personalizovane notifikacije registrovanom navijaču.

- Jedan korisnik ne bi trebao imati isti tim više puta označen kao omiljeni.

- Notifikacija uvijek pripada jednom korisniku.

- AI predikcija služi isključivo kao informativni prikaz i nema uticaj na stvarne rezultate niti na stvarni poredak na tabeli.

- AI predikcija može biti vezana za konkretno takmičenje, a po potrebi i za konkretnu utakmicu.

