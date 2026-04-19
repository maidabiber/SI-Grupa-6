# Branching strategija

Naš tim od osam članova se opredijelio za korištenje strategije GitHub Flow kao osnovnog modela upravljanja verzijama koda.

## Razlozi za izbor GitHub Flow pristupa

Priroda projekta podrazumijeva kontinuirano unapređenje funkcionalnosti kao što su upravljanje rasporedima utakmica, prijava ekipa, te prikaz rezultata i AI predikcija u realnom vremenu. U takvom okruženju, od ključne je važnosti omogućiti brze iteracije i čestu isporuku novih funkcionalnosti, uz istovremeno održavanje stabilnosti sistema.

GitHub Flow se pokazao kao optimalan izbor zbog svoje jednostavnosti i jasno definisanog procesa, koji omogućava efikasan rad bez uvođenja nepotrebne kompleksnosti. Ovakav pristup je posebno pogodan za manje i srednje timove, gdje je transparentna komunikacija i brza integracija izmjena od velikog značaja.

## Tok rada

Proces razvoja zasniva se na sljedećim koracima:

1. Kreiranje zasebne grane za svaku novu funkcionalnost, polazeći od glavne (main) grane  
2. Redovno evidentiranje izmjena kroz commit-ove unutar radne grane  
3. Otvaranje pull request-a radi pregleda koda i pokretanja automatizovanih testova  
4. Spajanje izmjena u glavnu granu nakon odobrenja  
5. Implementacija promjena u produkcijsko okruženje po potrebi  

Ovakav tok rada osigurava da glavna grana u svakom trenutku ostane stabilna i spremna za implementaciju.

## Prednosti GitHub Flow pristupa

Primjena GitHub Flow modela donosi niz prednosti:

- Jednostavna i intuitivna struktura bez složenih pravila grananja  
- Podrška brzom razvoju i čestim iteracijama  
- Laka integracija sa CI/CD alatima i praksama  
- Smanjenje rizika od velikih i kompleksnih spajanja kroz čestu integraciju  

S obzirom na funkcionalnosti sistema koje zahtijevaju stalna unapređenja i prilagođavanja, ovakav pristup značajno doprinosi efikasnosti razvoja.

## Ograničenja i mitigacija

Iako GitHub Flow ima brojne prednosti, postoje i određena ograničenja:

- Povećana vjerovatnoća pojave merge konflikata  
- Izostanak formalnih QA i release grana  
- Oslanjanje na kvalitetnu automatizaciju testiranja  

Kako bi se navedeni nedostaci ublažili, planirano je:

- Rad na manjim, jasno definisanim izmjenama  
- Redovno usklađivanje sa glavnom granom  
- Postepeno uvođenje automatizovanih testova  

## Zaključak

Može se zaključiti da odabrani pristup omogućava efikasan, pregledan i fleksibilan razvojni proces, usklađen sa potrebama projekta i veličinom tima. Fokus na jednostavnosti, brzoj integraciji i kontinuiranoj isporuci funkcionalnosti čini GitHub Flow prikladnim rješenjem za razvoj sistema za upravljanje lokalnim sportskim ligama.