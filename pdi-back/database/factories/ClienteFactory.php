<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Cliente>
 */
class ClienteFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'codigo_cliente' => fake()->uuid(),
            'nome' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'data_nascimento' => \date('Y-m-d', \time()),
        ];
    }
}
