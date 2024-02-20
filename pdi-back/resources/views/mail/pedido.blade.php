<x-mail::message>
# Olá  

<h3>Nome: {{ $data['nome'] }}</h3>
<h3>E-mail: {{ $data['email'] }}</h3>
<h3>Mensagem: {{ $data['message'] }}</h3>


<x-mail::button :url="''">
Button Text
</x-mail::button>

Obrigado,<br>
{{ config('app.name') }}
</x-mail::message>
