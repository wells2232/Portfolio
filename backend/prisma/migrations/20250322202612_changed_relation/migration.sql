/*
  Warnings:

  - You are about to drop the `_ProjetoToTecnologia` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_ProjetoToTecnologia" DROP CONSTRAINT "_ProjetoToTecnologia_A_fkey";

-- DropForeignKey
ALTER TABLE "_ProjetoToTecnologia" DROP CONSTRAINT "_ProjetoToTecnologia_B_fkey";

-- DropTable
DROP TABLE "_ProjetoToTecnologia";

-- CreateTable
CREATE TABLE "projeto_tecnologia" (
    "projetoId" INTEGER NOT NULL,
    "tecnologiaId" INTEGER NOT NULL,

    CONSTRAINT "projeto_tecnologia_pkey" PRIMARY KEY ("projetoId","tecnologiaId")
);

-- AddForeignKey
ALTER TABLE "projeto_tecnologia" ADD CONSTRAINT "projeto_tecnologia_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "projetos"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "projeto_tecnologia" ADD CONSTRAINT "projeto_tecnologia_tecnologiaId_fkey" FOREIGN KEY ("tecnologiaId") REFERENCES "tecnologias"("id") ON DELETE CASCADE ON UPDATE CASCADE;
