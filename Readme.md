# Readme   

O *pdi-front* e o *pdi-back*, como indicados pelos respectivos nomes, referem-se ao VueJS e ao Laravel, nesta ordem. A documentação adicional pode ser lida no *Readme* respectivo de cada um.

## Frontend  

VueJS: o ideal é usar yarn, pois podem ocorrer conflitos entre o Vueform com outra biblioteca.
De acordo com a atual documentação do VueJS, foram usados componentes SFC, que já implementam o `<script setup>`, elimando a necessidade de usar `setup()`, `data()` e `return` para que o componente seja lido adequadamente pela aplicação.  

## Backend

Foi usado o migrations para a criação das tabelas do banco de dados. A classe DatabaseSeeder foi estruturada. Não optei por criar ids numéricos incrementais nas tabelas - procurei definir chaves candidatas que garantam uma integridade ao banco.  

### Bootstrap  

Os comandos abaixo servem para criar a estrutura do banco de dados MySQL e criar registros nas tabelas.

- php artisan migrate:install
- php artisan db:seed

### Endpoints  

Os três primeiros endpoints abaixo são necessários para obter o token que permitirá o uso dos outros relacionados a pedido. Apenas os endpoints de pedido tem restrição de acesso.

 - http://127.0.0.1:8000/api/cliente (POST. Cria um cliente com o seu e-mail. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/register (POST. Cria um usuário para fazer o pedido que é restrito por auth:sanctum. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/login (POST. Cria um token para fazer pedido. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/pedido (POST. Cria um pedido e envia o e-mail. Necessário pegar o id_cliente, codigo_produto e codigo_tipo_produto no BD. POST, ver mockup.md.)
 - http://127.0.0.1:8000/api/pedido (DELETE. Exclui um pedido usando sofdelete.)
 - http://127.0.0.1:8000/api/pedido (PATCH. Atualiza a quantidade em um pedido.)
 - http://127.0.0.1:8000/api/pedido (GET. Traz um ou mais pedidos.)

Outros endpoints.  

 - http://127.0.0.1:8000/api/cliente (POST. Cria um cliente.)
 - http://127.0.0.1:8000/api/tipo-produto (POST. Cria um tipo de produto.)
 - http://127.0.0.1:8000/api/tipo-produto (GET. Lista os tipos de produto.)
 - http://127.0.0.1:8000/api/produto (POST. Cria um produto.)


### E-mail  

O e-mail é enviado com base no registro do campo email da tabela cliente. Ao criar um pedido, um e-mail é enviado.
