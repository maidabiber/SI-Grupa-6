-- AlterTable
ALTER TABLE "Korisnik" ADD COLUMN     "datumObrade" TIMESTAMP(3),
ADD COLUMN     "datumZahtjeva" TIMESTAMP(3),
ADD COLUMN     "documents" TEXT[],
ADD COLUMN     "razlogOdbijanja" TEXT,
ADD COLUMN     "refreshToken" TEXT,
ADD COLUMN     "statusUloge" TEXT,
ADD COLUMN     "trazenaUloga" "Uloga";
