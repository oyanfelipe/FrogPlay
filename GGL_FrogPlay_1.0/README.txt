Esse foi um projeto feito na faculdade para a matéria de orientação a objeto 2 de aplicação deregistro de compra/venda.

Para fazer a aplicação funcionar corretamente, no netbeans é preciso ir na aba "Services", "Databases", apertar com lado esquerdo do mouse em "MySQL Server" e "connect", depois em "jdbc" com botão esquerdo e "connect". Pronto agora na aba "Projects" aperte com botao esquerdo em "GGL FrogPlay 1.0" e "run" para fazer a aplicação rodar.


AO ABRIR O PROJETO NO NETBEANS SERÁ EXIBIDO UM ERRO...

O PROPRIO NETBEANS IRA EXIBIR COMO SOLUCIONAR O PROBLEMA

CLIQUE EM RESOLVE PROBLEMS> VAI FALTAR O MYSQL CONNECT> ESTÁ NA PASTA DO PROJETO... 

PRECISA SER O DESTA  VERSÃO, SE NÃO DÁ ERRO.

SOBRE O BANCO DE DADOS:
nome do banco: dbfrogplay

No atual momento:
tem uma tabela: tb_funcionario

com os campos:(`id_funcionario`, `usuario`, `senha`, `salario`, `cargo`, `nome_completo`, `email`, `telefone`)


id_funcionario auto increment primary key

todos são do tipo VARCHAR 45
em exceção do nome_completo que tem espaço de 100 caracteres


Precisa necessáriamente de ser este driver!

E no momento de criar o banco, insira um registro previo, no banco mesmo. O sistema não permite a entrada ou cadastro sem um login previo. (pelo menos nao deveria).