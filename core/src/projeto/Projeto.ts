import type Tecnologia from "../tecnologia/Tecnologia";
import type { Nivel } from "./Nivel";
import type { Tipo } from "./Tipo";

export default interface Projeto {
  id: number;
  nome: string;
  descricao: string;
  imagens: string[];
  nivel: Nivel;
  tipo: Tipo;
  destaque: boolean;
  repositorio: string;
  tecnologias?: Tecnologia[];
}
