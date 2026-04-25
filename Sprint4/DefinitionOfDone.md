# Definition of Done (DoD)

---

Stavka je **Done** isključivo kada su **svi** sljedeći kriteriji u potpunosti ispunjeni :

### Funkcionalnost:

- Funkcionalnost je implementirana ili dokumentovana prema dogovoru
- Svi definisani Acceptance Criteria su u potpunosti ispunjeni
- Poslovna pravila sistema su ispoštovana 
- Uloge su ispravno implementirane

### Tehnička ispravnost:

- Backend i baza funkcionišu bez grešaka; API validacija je aktivna
- Autentifikacija, autorizacija i sigurnosne mjere su implementirane
- UI komponente su ispravne i konzistentne sa stilom aplikacije
- Nije uvedena vidljiva degradacija performansi
- Build prolazi bez grešaka

### Testiranje i kvalitet:

- Unit testovi su napisani za sve nove metode i logičke jedinice, te svi testovi prolaze sa 100% uspjehom
- Integracijski testovi su napisani za sve nove API endpoint-e i svi testovi prolaze
- Pokrivenost koda (Code Coverage) je mjerena, testovi su napisani da pokriju minimalno 80% linija koda
- Regresijski testovi su napisani (ili ažurirani) i svi prolaze kako bi se potvrdilo da nova funkcionalnost nije narušila postojeći sistem
- Testovi za rubne slučajeve (Edge Cases) su napisani za neispravne unose i prazna polja, te svi prolaze sa očekivanim porukama o greški

### Kod i pregled:

- Kod je pregledan unutar tima (code review završen, pull request odobren)
- Kod je integrisan u glavni branch i pushan na repozitorij

### Dokumentacija i isporuka:

- Promjene su evidentirane u relevantnim projektnim artefaktima
- Funkcionalnost je spremna za demonstraciju u sprint review-u
- API dokumentacija: Ako postoje novi endpointi, oni su dokumentovani