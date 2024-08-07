/*
  Warnings:

  - You are about to drop the column `barbershopid` on the `BarbershopService` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `BarbershopService` table. All the data in the column will be lost.
  - Added the required column `barbershopId` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `BarbershopService` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "BarbershopService" DROP CONSTRAINT "BarbershopService_barbershopid_fkey";

-- AlterTable
ALTER TABLE "BarbershopService" DROP COLUMN "barbershopid",
DROP COLUMN "nome",
ADD COLUMN     "barbershopId" TEXT NOT NULL,
ADD COLUMN     "name" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "BarbershopService" ADD CONSTRAINT "BarbershopService_barbershopId_fkey" FOREIGN KEY ("barbershopId") REFERENCES "Barbershop"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
