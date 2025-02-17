*** Settings ***
Resource    ../resources/serve-rest-front.resource
Suite Setup    Cadastrar Usuário e Logar


*** Test Cases *** 
Login com sucesso Serve Rest Front
    Abrir o navegador
    Ir para o site Serve Rest Front
    Preencher os dados do novo usuário e cadastrar
    Conferir usuário cadastrado com sucesso

Desafio: Conferir se o novo usuário é mostrado na listagem de usuários
    Abrir o Site Serve Rest Front Logado  
    Acessar a Lista de usuários 
    Conferir que o usuário aparece na listagem 

Desafio: Cadastrar e consultar um produto
    Abrir o Site Serve Rest Front Logado   
    Cadastrar um novo produto
    Conferir que o produto aparece na listagem 

Exemplo utilizando Requisições HTTP 
    Abrir o navegador
    Ir para o site Serve Rest Front
    Criar usuário via API
    Logar com o usuário cadastrado via API   

Exemplo utilizando o Storage Armazenado no Contexto
    Abrir o Site Serve Rest Front Logado
    Acessar a Lista de usuários