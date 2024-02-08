            #language: pt

            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu coloque o tamanho do produto do meu gosto e escolha a quantidade desejada para inserir no carrinho

            Cenário: Autenticação Válida
            Quando eu colocar a cor, tamanho e a quantidade desejada
            E colocar 5 produtos
            Então os produtos deve estar no carrinho

            Cenário: Selecionado errado
            Quando eu colocar uma cor, tamanho ou uma quantidade indesejada
            E clicar no botão "limpar"
            Então deve voltar ao estado original



            Esquema do Cenário: Selecionar vários produtos (no máximo 10)
            Quando eu digitar <cor>, <tamanho> e <quantidade>
            E depois inserir o produto no <carrinho>
            Então deve exibir uma <mensagem> de sucesso

            | cor    | tamanho | quantidade | mensagem                    |
            | blue   | S       | 2          | "Adicionado no carrinho!!!" |
            | Orange | M       | 5          | "Adicionado no carrinho!!!" |
            | Red    | XL      | 4          | "Adicionado no carrinho!!!" |



