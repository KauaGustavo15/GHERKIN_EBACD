#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que eu coloque as minhas informações de login


Cenário: Login Válido 
Quando eu digitar o usuário "kauã@ebac.com.br"
E a senha "EbacAluno2"
Então deve direcionar para a tela de Checkout

Cenário: Login Inválido 
Quando eu digirar o usuário "kaua@gustavo.com.br"
E a senha "EbacAluno2"
Então deve uma mensagem de alerta "Usuário ou senha inválidos"