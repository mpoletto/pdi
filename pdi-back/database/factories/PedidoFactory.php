<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Produto;
use App\Models\Cliente;
use App\Models\TipoProduto;
use DateTime;
use DateTimeZone;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pedido>
 */
class PedidoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $codigoCliente = (new Cliente)->getForFactory();
        $objC = \json_decode($codigoCliente);
        $codigoProduto = (new Produto)->getForFactory();
        $objP = \json_decode($codigoProduto);
        $codigoTipoProduto = (new TipoProduto)->getForFactory();
        $objTp = \json_decode($codigoTipoProduto);
        return [
            'codigo_cliente' => $objC[0]->{'codigo_cliente'},
            'codigo_produto' => $objP[0]->{'codigo_produto'},
            'codigo_tipo_produto' => $objTp[0]->{'codigo_tipo_produto'},
            'user_session_id' => fake()->uuid(),
            'quantidade' => fake()->numberBetween(1, 20),
            'data_registro' => \date('Y-m-d H:i:s', \time()),
        ];
    }
}
