# 📱 Ficha RPG OP

Aplicativo desenvolvido em Flutter para Android, com o objetivo de auxiliar jogadores de RPG na criação e gerenciamento de fichas de personagem.

---

## 🛠️ Tecnologias Utilizadas

- **Plataforma:** Android  
- **IDE:** Android Studio  
- **Framework:** Flutter  
- **Linguagem:** Dart  
- **Compatibilidade:** Apenas dispositivos Android

---

## 🎯 Objetivo

O **Ficha RPG OP** permite que jogadores de RPG criem fichas completas de personagens, incluindo nome, atributos, perícias e status. Também conta com uma ferramenta de rolagem de dados, útil durante sessões de jogo.

---

## 🧩 Funcionalidades

- ✅ Tela inicial com navegação para criação de ficha ou rolagem de dados  
- ✅ Criação de ficha com:
  - Nome, origem e classe do personagem
  - Atributos principais (Força, Agilidade, Intelecto, Vigor, Presença)
  - Perícias associadas a atributos
  - Status: Vida, Determinação, Defesa, Esquiva, etc.
- ✅ Visualização final da ficha
- ✅ Ferramenta para rolagem de dados (ex: D20, D12, D10, etc.)
- ✅ Navegação entre telas com botão de retorno para a tela inicial

---

## 🎨 Estilo Visual

- Fundo **vermelho escuro** (`Colors.red.shade900`) em todas as telas  
- Textos, campos de entrada e dropdowns com **cores brancas**  
- Tema global customizado no `main.dart` via `ThemeData`

---

## 📸 Capturas de Tela (opcional)

> Adicione aqui imagens do app rodando em um dispositivo Android.

---

## 📝 Considerações Técnicas

- Estado gerenciado com `setState` (sem gerenciadores externos)
- Navegação com `Navigator.push` e `MaterialPageRoute`
- Aplicativo **100% offline**
- Foco na **legibilidade e usabilidade** para jogadores

---

## 🚀 Melhorias Futuras (Sugestões)

- Armazenamento local de fichas (`shared_preferences`, `sqflite`)
- Exportação de ficha em PDF
- Rolagens automáticas baseadas nos atributos
- Suporte a multiplataforma (iOS e Web)
- Sistema de salvamento e carregamento de personagens

---

## 🧑‍💻 Autor

Desenvolvido por [Seu Nome Aqui] como projeto pessoal ou acadêmico.

---

## 📄 Licença

Este projeto é de código aberto. Você pode modificá-lo, distribui-lo ou utilizá-lo como base, de acordo com sua necessidade.

---

