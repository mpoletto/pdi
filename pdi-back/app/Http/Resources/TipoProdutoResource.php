<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TipoProdutoResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<int|string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'codigo_tipo_produto' => $this->codigo_tipo_produto,
            'tipo' => $this->tipo,
            'deleted_at' => $this->deleted_at,
        ];
    }
}
