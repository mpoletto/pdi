<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\TipoProduto;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Produto>
 */
class ProdutoFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $codigoTipoProduto = (new TipoProduto)->getForFactory();
        $obj = \json_decode($codigoTipoProduto);
        return [
            'codigo_produto' => fake()->uuid(),
            'codigo_tipo_produto' => $obj[0]->{'codigo_tipo_produto'},
            'nome' => fake()->word(),
            'preco' => fake()->randomFloat(2, 5, 120),
            'foto' => fake()->image(null, 50, 50, 'animals', true),
        ];
    }
}
