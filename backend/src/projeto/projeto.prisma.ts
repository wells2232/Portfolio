import type { Nivel, Projeto, Tipo } from '@core';
import { Injectable } from '@nestjs/common';
// biome-ignore lint/style/useImportType: <explanation>
import { PrismaProvider } from 'src/db/prisma.provider';

@Injectable()
export class ProjetoPrisma {
  constructor(private readonly prisma: PrismaProvider) {}

  async obterTodos(): Promise<Projeto[]> {
    const projetos = await this.prisma.projeto.findMany().then((projetos) =>
      projetos.map((projeto) => ({
        ...projeto,
        tipo: projeto.tipo as Tipo,
        nivel: projeto.nivel as Nivel,
      })),
    );
    return projetos;
  }

  async obterPorId(id: number): Promise<Projeto> {
    const projeto = await this.prisma.projeto.findUnique({
      where: { id },
      include: {
        tecnologias: true,
      },
    });
    if (!projeto) {
      throw new Error('Projeto não encontrado');
    }
    return {
      ...projeto,
      tipo: projeto.tipo as Tipo,
      nivel: projeto.nivel as Nivel,
    };
  }
}
