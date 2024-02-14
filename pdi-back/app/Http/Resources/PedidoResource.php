<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class Pedido extends JsonResource
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
            'codigo_produto' => $this->codigo_produto,
            'codigo_tipo_produto' => $this->codigo_tipo_produto,
            'user_session_id' => $this->user_session_id,
            'quantidade' => $this->quantidade,
            'data_registro' => $this->data_registro,
            'deleted_at' => $this->deleted_at,
        ];
    }
}
