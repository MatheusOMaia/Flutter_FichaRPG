# Ficha RPG OP

Aplicativo desenvolvido em Flutter para Android, com o objetivo de auxiliar jogadores de RPG na criação e gerenciamento de fichas de personagem.

---

## Tecnologias Utilizadas

- **Plataforma:** Android  
- **IDE:** Android Studio  
- **Framework:** Flutter  
- **Linguagem:** Dart  

---


##  Funcionalidades

- Tela inicial com navegação para criação de ficha ou rolagem de dados  
- Criação de ficha com:
  - Nome, origem e classe do personagem
  - Atributos principais (Força, Agilidade, Intelecto, Vigor, Presença)
  - Perícias associadas a atributos
  - Status: Vida, Determinação, Defesa, Esquiva, etc.
- Visualização final da ficha
- Ferramenta para rolagem de dados (ex: D20, D12, D10, etc.)
- Navegação entre telas com botão de retorno para a tela inicial

---



## Considerações Técnicas

- Estado gerenciado com `setState` (sem gerenciadores externos)
- Navegação com `Navigator.push` e `MaterialPageRoute`
- Aplicativo **100% offline**
- Foco na **legibilidade e usabilidade** para jogadores

---

## Melhorias Futuras (Sugestões)

- Armazenamento local de fichas (`shared_preferences`, `sqflite`)
- Exportação de ficha em PDF
- Rolagens automáticas baseadas nos atributos
- Sistema de salvamento e carregamento de personagens




