# Readme   

 - CSS rounded para a div externa, com background amarelo na metade da primeira linha; 
 - CSS z-index para os dois pastéis colocados flutuando nas laterais;
 - Imprimir o submit do form com o pedido registrado logo abaixo dele, assim como o CSS para essa impressão.  

Para o Laravel:  

 - Factories (ok);
 - Seeder (ok);
 - Models (ok);
 - Resources (ok);
 - API Endpoint produto e pedido (ok);

## Frontend  

VueJS: o ideal é usar yarn, pois podem ocorrer conflitos entre o Vueform com outra biblioteca.
De acordo com a atual documentação do VueJS, foram usados componentes SFC, que já implementam o `<script setup>`, elimando a necessidade de usar `setup()`, `data()` e `return` para que o componente seja lido adequadamente pela aplicação.  

## Backend

Foi usado o migrations para a criação das tabelas do banco de dados. A classe DatabaseSeeder foi estruturada. Não optei por criar ids numéricos incrementais nas tabelas - procurei definir chaves candidatas que garantam uma integridade ao banco.  

### Bootstrap, Migrations, Seed etc.  

 - php artisan migrate:install
 - php artisan db:seed
 - http://127.0.0.1:8000/api/cliente (Cria um cliente com o seu e-mail. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/register (Cria um usuário para fazer o pedido que é restrito por auth:sanctum. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/login (Cria um token para fazer pedido. POST, ver Mockup.md.)
 - http://127.0.0.1:8000/api/pedido (Cria um pedido. Necessário pegar o id_cliente, codigo_produto e codigo_tipo_produto no BD. POST, ver mockup.md.)

 - curl http://127.0.0.1:8000/api/cliente
 - curl http://127.0.0.1:8000/api/users
 - curl -H "Accept: application/json" -H "Content-Type: application/json" -d '{"codigo_tipo_produto":"08eabbef-4830-3324-b7c3-bfce2355ZZYY", "tipo":"Tipo de teste 3"}' http://127.0.0.1:8000/api/tipo-produto
 - curl -H "Accept: application/json" -H "Content-Type: application/json" -d '{"codigo_cliente":"08eabbef-4830-3324-b7c3-bfce9f24acYY","nome":"Ingrid Example","email":"ingrid@example.net","telefone":null,"data_nascimento":"2024-02-16","endereco":null,"complemento":null,"bairro":null,"cep":null,"deleted_at":null}' http://127.0.0.1:8000/api/cliente

## Estrutura  

O *pdi-front* e o *pdi-back*, como indicados pelos respectivos nomes, referem-se ao VueJS e ao Laravel, nesta ordem. A documentação adicional pode ser lida no *Readme* respectivo de cada um.

