<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Produto extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'codigo_produto' => $this->codigo_produto,
            'codigo_tipo_produto' => $this->codigo_tipo_produto,
            'nome' => $this->nome,
            'preco' => $this->preco,
            'foto' => $this->foto,
            'deleted_at' => $this->deleted_at,
        ];
    }
}
