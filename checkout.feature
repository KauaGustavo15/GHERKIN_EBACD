            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que eu coloque as minhas informações no cadastro


            Cenário: Autenticação Válida
            Quando eu digitar por exemplo: nome "Kauã", sobrenome "Gustavo", País "BR", Endereço "Flores", etc
            E clicar em "FINALIZAR COMPRA"
            Então a compra deve ser finalizada

            Cenário: Formato Inválido
            Quando eu digitar por exemplo: nome "Kauã", sobrenome "Gustavo", País "BR", Endereço "Flores", etc
            E clicar em "FINALIZAR COMPRA"
            Então deve exibir uma mensagem de erro "o Email preenchido está incorreto"

            Cenário: Campos Vazios
            Quando eu não preencher os campos obrigatórios
            E deixar Vazio
            Então deve exibir uma mensagem de alerta "É obrigatório preencher os campos para finalizar a sua compra"


            Esquema do Cenário: Checkout
            Quando eu digitar <nome>,<sobrenome>,<pais>,<endereco>,<cidade>,<cep>,<telefone> e o <email>
            E clicar no botão <finalizar>
            Então deve exibir uma <mensagem> de sucesso

            | nome | sobrenome | pais | endereco | cidade    | cep | telefone | email                   | mensagem                       |
            | Kauã | Gustavo   | BR   | Flores   | Cerquilho | 444 | 898      | kaua@gustavoEBAC.com.br | finalizado com sucesso         |
            | Kauã | Gustavo   | BR   | Flore    | Cerquilho | 444 | 898      | kaua@gustavo.com.br     | email incorreto                |
