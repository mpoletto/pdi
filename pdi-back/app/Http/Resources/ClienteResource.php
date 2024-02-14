<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ClienteResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'codigo_cliente' => $this->codigo_cliente,
            'nome' => $this->nome, 
            'email' => $this->email, 
            'telefone' => $this->telefone, 
            'data_nascimento' => $this->data_nascimento, 
            'endereco' => $this->endereco, 
            'complemento' => $this->complemento, 
            'bairro' => $this->bairro, 
            'cep' => $this->cep, 
            'deleted_at' => $this->deleted_at,
        ];
    }
}
