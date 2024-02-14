# Readme  

É importante destacar que os requisitos não foram todos atendidos. Pode-se dizer que o teste atende a 60% do que foi pedido. Para a VueJS, foram usadas as últimas técnicas descritas na documentação. Mas, ainda falta terminar:  

 - CSS rounded para a div externa, com background amarelo na metade da primeira linha; 
 - CSS z-index para os dois pastéis colocados flutuando nas laterais;
 - Imprimir o submit do form com o pedido registrado logo abaixo dele, assim como o CSS para essa impressão.  

Para o Laravel:  

 - Factories;
 - Seeder;
 - Models;
 - Resources;
 - API Endpoint produto e pedido;

O que posso deixar como observação é que nunca trabalhei com Laravel nem VueJS, tampouco estudei sobre. Trabalhei com CodeIgniter, Kohana especialmente Zend. Para mim, o Laravel foi bem interessante. Para quem trabalhou com Zend ele se torna fácil. Alguns conceitos são comuns. Assim, usei o tempo livre da última semana para aprender essas duas tecnologias e acredito que por mais dois dias cheios seria possível atender aos requisitos do teste. Se houver interesse, posso finalizar o teste e conversarmos a respeito. 

## Frontend  

VueJS: o ideal é usar yarn, pois podem ocorrer conflitos entre o Vueform com outra biblioteca.
De acordo com a atual documentação do VueJS, foram usados componentes SFC, que já implementam o `<script setup>`, elimando a necessidade de usar `setup()`, `data()` e `return` para que o componente seja lido adequadamente pela aplicação.  

## Backend  

Foi usado o migrations para a criação das tabelas do banco de dados. A classe DatabaseSeeder foi estruturados parcialmente. Não optei por criar ids numéricos incrementais nas tabelas - procurei definir chaves candidatas que garantissem uma integridade ao banco. Assim, a DatabaseSeeder contém, através de Factories (como indicado no doc do Laravel sendo o mais apropriado), dados de duas tabelas, cliente e codigo_produto, mas falta terminar a criação com relationamento entre as tabelas que contêm FK. Os controllers, resources, models foram criados pelo Artisan, mas não estão completos. Dois endpoints da api foram testados e retornarm os valores inseridos via seed:  

 - curl http://127.0.0.1:8000/api/cliente
 - curl http://127.0.0.1:8000/api/users

## Estrutura  

O *pdi-front* e o *pdi-back*, como indicados pelos respectivos nomes, referem-se ao VueJS e ao Laravel, nesta ordem. A documentação adicional pode ser lida no *Readme* respectivo de cada um.

