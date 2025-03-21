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
CREATE TABLE "projetos_tecnologias" (
    "projeto_id" INTEGER NOT NULL,
    "tecnologia_id" INTEGER NOT NULL,

    CONSTRAINT "projetos_tecnologias_pkey" PRIMARY KEY ("projeto_id","tecnologia_id")
);

-- AddForeignKey
ALTER TABLE "projetos_tecnologias" ADD CONSTRAINT "projetos_tecnologias_projeto_id_fkey" FOREIGN KEY ("projeto_id") REFERENCES "projetos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "projetos_tecnologias" ADD CONSTRAINT "projetos_tecnologias_tecnologia_id_fkey" FOREIGN KEY ("tecnologia_id") REFERENCES "tecnologias"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
