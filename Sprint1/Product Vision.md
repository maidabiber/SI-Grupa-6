# Product Vision

---

## Naziv projekta
Sistem za upravljanje sportskim terminima i ligama - SportManager

---

## Problem koji sistem rješava

Osnovni problem koji ovaj sistem rješava je neefikasnost i fragmentacija u organizaciji sporta, naročito rekreativnog i amaterskog. Problem je podjednako prisutan na svim nivoima — od malih lokalnih liga i turnira, pa sve do ozbiljnijih sportskih organizacija. Većina sportskih centara i amaterskih liga i dalje se oslanja na neformalne kanale komunikacije (Viber/WhatsApp grupe), plakate, usmeno dogovaranje ili papirnu evidenciju. To je pristup podložan greškama, teško skalabilan, i rezultira nejasnim rasporedima i propuštenim informacijama.

#### Ključni problemi:
* **Organizacijski propusti:** Obavještenja o rasporedu se šalju putem društvenih mreža, igrači i gledaoci prekasno saznaju o promjenama rasporeda ili otkazivanjem, jer su informacije rasute po različitim platformama. Vođenje tabela sa rezultatima se vrši ručno, a često i samo na papiru.
* **Netransparentnost i nedostatak podataka:** Ne postoji jednostavan način za pregled historije rezultata ili statistika timova. Gledaoci i navijači su isključeni iz dešavanja jer nemaju uvid u trenutno stanje i rezultate u realnom vremenu.
* **Finansijska neažurnost:** Problemi sa evidencijom uplata članarina ili zakupa termina.
* **Slaba popunjenost kapaciteta:** Potencijalni korisnici nemaju jednostavan način da provjere slobodne termine bez direktnog zvanja vlasnika terena. S druge strane, mnoga sportska dešavanja ostaju neposjećena jer ne postoji jedinstveno mjesto gdje bi se publika mogla informisati o lokalnim ligama i utakmicama.

Rješavanje ovih problema direktno utiče na profesionalizaciju amaterskog sporta:

1.  **Automatizacija:** Smanjuje se administrativni teret za organizatore i vlasnike terena.
2.  **Optimizacija prihoda:** Lakši uvid u slobodne termine znači veću popunjenost.
3.  **Korisničko iskustvo:** Omogućava igračima da se fokusiraju na sport i gledaocima da lakše saznaju informacije.
4.  **Integritet i fair-play:** Kada sistem automatski računa bodove i gol-razliku, eliminiše se mogućnost ljudske greške i što gradi povjerenje među timovima.

Ovaj sistem rješava navedene probleme tako što omogućava centralizovan pristup svim informacijama na jednom mjestu. Sistem nudi platformu za automatsko generisanje tabela i uvid u raspored, gdje se nakon unosa rezultata stanje na tabeli i statistika igrača ažuriraju trenutno i bez greške. Na taj način, vlasnici terena dobijaju alat za bolju popunjenost kapaciteta, dok igrači i gledaoci imaju uvid u svaku promjenu, čime se stvara moderna i transparentna sportska zajednica.

---

## Ciljni korisnici

1. Organizatori liga i turnira
2. Igrači 
3. Gledaoci i lokalna zajednica, ljubitelji sporta
4. Vlasnici i menadžeri sportskih objekata

---

## Vrijednost sistema

Glavne vrijednosti koje sistem donosi su:

1. Smanjuje se vrijeme utrošeno na administraciju – rasporedi se kreiraju automatski, rezultati se unose brzo, a tabele se ažuriraju trenutno, što svodi greške na minimum. 
2. Centralizovan pristup informacijama
Sistem služi kao jedinstvena platforma za sve učesnike:
* **Igrači i kapiteni** više ne moraju pretraživati historiju poruka u Viber grupama; svi rasporedi, lokacije i satnice su im dostupni u dva klika.
* **Gledaoci i mediji** dobijaju uvid u rezultate i stanje na tabeli u realnom vremenu, što podiže nivo profesionalizma amaterskog sporta.
3. Vlasnici sportskih objekata dobijaju alat koji direktno utiče na njihovu profitabilnost:
* Veća vidljivost slobodnih termina smanjuje broj neiskorištenih sati u dvoranama.
* Jasna evidencija o uplatama (članarina ili zakupa) omogućava bolju finansijsku kontrolu i smanjuje broj neizmirenih dugovanja.
4. Dobiva se skalabilan sistem koji podiže nivo profesionalnosti amaterskog sporta. Digitalna prisutnost čine ligu privlačnijom za sponzore i nove partnere.

---

## Scope MVP verzije

- Registracija i upravljanje korisnicima – Registracija korisnika s podrškom za različite uloge (administrator, organizator, igrač, gledaoc)
- Upravljanje sportskim sadržajem – Unos i uređivanje kategorija sporta, liga, turnira i ekipa od strane organizatora
- Unos rezultata i automatske tabele – Nakon unosa rezultata utakmice, sistem automatski ažurira tabelu, bodove i statistiku
- Kreiranje i pregled rasporeda – Organizatori kreiraju rasporede utakmica koji su vidljivi svim korisnicima u realnom vremenu
- Pregled sportskih dešavanja – Prikaz predstojećih i odigranih utakmica s mogućnošću filtriranja po sportu, ligi, timu ili datumu
- Pregled dostupnosti sportskih objekata 
- Obavještenja i notifikacije – Slanje obavještenja učesnicima o promjenama rasporeda, rezultatima i važnim informacijama
- Rezervacija i pregled termina – Pregled slobodnih i zauzetih termina na sportskim objektima
---

## Šta ne ulazi u MVP

- Mobilna aplikacija
- Online plaćanje kotizacije, objekata i sl.
- Detaljna statistika igrača: (npr. broj žutih kartona, asistencije - za sada samo rezultat tima).
- Višejezičnost
---

## Ključna ograničenja i pretpostavke

### Tehnička ograničenja
* Obavezna je stabilna veza za ažuriranje i pregled podataka u realnom vremenu.
* Web-first pristup: Sistem se razvija prvenstveno kao responzivna web aplikacija, dok se razvoj mobilne aplikacije planira u kasnijim fazama.
* Sistem ne podržava integraciju s vanjskim kalendarima u MVP.

### Poslovna ograničenja
* Bez online naplate: U MVP fazi ne postoji integracija sa kartičnim plaćanjem; finansijske transakcije se obavljaju van sistema, a u sistemu se samo evidentiraju.
* Fokus na timske sportove: Primarni fokus je na sportove sa standardnim bodovanjem (fudbal, košarka, odbojka).
* Sistem je prvenstveno namijenjen amaterskim i rekreativnim ligama.

### Organizacijska ograničenja
* Sistem zavisi o ažurnosti administratora. Ako se rezultati ne unose na vrijeme, sistem gubi "real-time" vrijednost - ne podržava automatski uvoz rezultata iz vanjskih izvora.
* Vlasnici i menadžeri sportskih objekata odgovorni su za pravovremeno ažuriranje dostupnosti svojih prostora – sistem ne može automatski detektovati zauzetost dvorana, terena ili sala.
* Pravna odgovornost: Organizatori su odgovorni za prikupljanje saglasnosti igrača za javnu objavu njihovih podataka na platformi.

### Ključne pretpostavke
* Pretpostavlja se da svi korisnici imaju osnovno znanje korištenja web aplikacija.
* Organizatori liga preuzimaju odgovornost za upravljanje ligom i unosom podataka
* Pretpostavlja se da postoji dovoljan interes korisnika za korištenje ovakvog sistema u lokalnoj sportskoj zajednici
