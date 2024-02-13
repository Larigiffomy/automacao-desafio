#language: pt

Funcionalidade: Listar usuários cadastrados
Listar usuários cadastrados

@cenario1
Cenario: Buscar usuários cadastrados
Dado que eu consulte a lista de usuarios cadastrados
Quando faço a pesquisa
Entao deve exibir a lista de todos os usuarios cadastrados

@cenario2
Cenario: Criar novo usuario
Dado que eu cadastre um novo usuario
Quando eu enviar as informacoes validas do usuario
Entao o usuario sera cadastrado

@cenario3
Cenario: Validar usuario ja cadastrado com aquele email
Dado que ja possuo um usuario cadastrado
Quando eu envio os dados do usuario ja cadastrado
Então e exibida a frase Este email ja esta sendo usado

@cenario4
Cenario: Alterar nome
Dado que usuario ja tenha cadastro
Quando altero o nome
Entao o nome deve ser alterado

@cenario5
Cenario:Alterar email
Dado que eu esteja com meu cadastro aberto
Quando altero o email
Entao o email deve ser alterado

@cenario6
Cenario:Deletar usuario
Dado que eu ja possuo um usuario cadastrado
Quando quero excluir o usuario
Entao o usuario e excluido com sucesso

@cenario7
Cenario:Deletar usuario que nao existe
Dado que eu tenho um usuario nao cadastrado
Quando quero excluir o usuario que nao possui cadastro
Entao o usuario nao pode ser excluido

