/*
  Warnings:

  - Added the required column `city` to the `address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `district` to the `address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `number` to the `address` table without a default value. This is not possible if the table is not empty.
  - Added the required column `street` to the `address` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "address" ADD COLUMN     "city" TEXT NOT NULL,
ADD COLUMN     "district" TEXT NOT NULL,
ADD COLUMN     "number" INTEGER NOT NULL,
ADD COLUMN     "street" TEXT NOT NULL;
