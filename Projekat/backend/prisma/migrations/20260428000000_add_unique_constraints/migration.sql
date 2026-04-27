CREATE UNIQUE INDEX "ClanstvoTima_korisnikId_timId_key" ON "ClanstvoTima"("korisnikId", "timId");
CREATE UNIQUE INDEX "OmiljeniTim_korisnikId_timId_key" ON "OmiljeniTim"("korisnikId", "timId");
CREATE UNIQUE INDEX "PlasmanNaTabeli_timId_takmicenjeId_key" ON "PlasmanNaTabeli"("timId", "takmicenjeId");