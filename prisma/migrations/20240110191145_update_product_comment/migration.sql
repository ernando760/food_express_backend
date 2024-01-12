/*
  Warnings:

  - Added the required column `ratings` to the `product_comment` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "product_comment" ADD COLUMN     "ratings" DOUBLE PRECISION NOT NULL;
