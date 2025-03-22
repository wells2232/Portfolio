-- CreateTable
CREATE TABLE "tecnologias" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "imagem" TEXT NOT NULL,
    "destaque" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "tecnologias_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projetos" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "descricao" TEXT NOT NULL,
    "imagens" TEXT[],
    "nivel" INTEGER NOT NULL,
    "tipo" TEXT NOT NULL,
    "destaque" BOOLEAN NOT NULL DEFAULT false,
    "repositorio" TEXT NOT NULL,

    CONSTRAINT "projetos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "projetos_tecnologias" (
    "projetoId" INTEGER NOT NULL,
    "tecnologiaId" INTEGER NOT NULL,

    CONSTRAINT "projetos_tecnologias_pkey" PRIMARY KEY ("projetoId","tecnologiaId")
);

-- AddForeignKey
ALTER TABLE "projetos_tecnologias" ADD CONSTRAINT "projetos_tecnologias_projetoId_fkey" FOREIGN KEY ("projetoId") REFERENCES "projetos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "projetos_tecnologias" ADD CONSTRAINT "projetos_tecnologias_tecnologiaId_fkey" FOREIGN KEY ("tecnologiaId") REFERENCES "tecnologias"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
