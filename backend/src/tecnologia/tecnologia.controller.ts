import { Controller, Get } from '@nestjs/common';
import type { Tecnologia } from '@core';
// biome-ignore lint/style/useImportType: <explanation>
import { TecnologiaPrisma } from './tecnologia.prisma';

@Controller('tecnologias')
export class TecnologiaController {
  constructor(private readonly repo: TecnologiaPrisma) {}

  @Get()
  async obterTodas(): Promise<Tecnologia[]> {
    return this.repo.obterTodas();
  }

  @Get('destaques')
  async obterDestaque(): Promise<Tecnologia[]> {
    return this.repo.obterDestaques();
  }
}
