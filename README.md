# Controle de Leitura - Avaliação Prática Flutter
 
**Aluno:** Gabriel Godoy Motta  
 
## Descrição do Aplicativo
O aplicativo é um sistema simples de controle de leitura desenvolvido em Flutter. O objetivo principal é permitir que o usuário realize um cadastro, efetue o login em seguida e tenha acesso à tela principal, onde visualiza uma mensagem de boas-vindas personalizada e o histórico estático dos seus últimos 5 livros lidos.
 
## Funcionalidades Implementadas
- Gerenciamento de estado de usuário em memória (mock).
- Validação de campos vazios e de credenciais.
- Bloqueio de retorno para a tela de login após autenticação bem-sucedida.
 
## Descrição das Telas
1. **Tela de Cadastro (`cadastro_screen.dart`):** Contém os campos de Nome, Email e Senha. Possui um botão para cadastrar que valida se os campos estão preenchidos e navega para o Login.
2. **Tela de Login (`login_screen.dart`):** Contém campos de Email e Senha. Verifica os dados inseridos contra o modelo em memória e navega para a Home em caso de sucesso.
3. **Tela Home (`home_screen.dart`):** Exibe uma mensagem de boas-vindas utilizando o nome cadastrado e uma `ListView` contendo os últimos 5 livros lidos (título e autor). Não possui rota de retorno para o Login.
 
## Conceitos Utilizados
- **Flutter & Dart:** Base para a construção da interface e lógica do aplicativo.
- **StatefulWidget & setState:** Utilizados para capturar o input de texto e processar as validações nas telas de Cadastro e Login.
- **Navigator:** Utilizado para transição entre telas. Foi aplicado especificamente o `Navigator.pushReplacement()` na transição para a tela Home, garantindo que a tela de login seja removida da pilha de navegação.
- **ListView.builder:** Aplicado na tela Home para renderizar a lista de livros de forma otimizada.
 
## Instruções para Executar o Projeto Localmente
1. Certifique-se de ter o Flutter SDK instalado.
2. Clone o repositório em sua máquina:
   `git clone `
3. Acesse a pasta do projeto no terminal.
4. Rode o comando para baixar as dependências:
   `flutter pub get`
5. Execute o projeto usando um emulador ou navegador:
   `flutter run`