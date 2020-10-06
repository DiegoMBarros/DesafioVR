#language: pt

@consultar_cep
Funcionalidade: Consultar CEP
    Para que eu possa obter os dados de um endereço
    Sendo um usuário que deseja pesquisar o CEP
    Posso acessar a lista de dados do CEP fornecido

    @cep_valido
    Cenário: CEP válido
        Dado que realizo a pesquisa usando CEP "01001000"
        E o status retorna "200"
        Então vejo o código IBGE do endereço

    @cep_invalido    
    Esquema do Cenário: CEP inválido
        Dado que realizo a pesquisa usando CEP <CEP>
        Então o status retorna "400"
            Exemplos:
            | CEP         |
            | "999999999" |