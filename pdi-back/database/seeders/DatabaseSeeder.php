<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\User::factory(3)->create();
        \App\Models\Cliente::factory(3)->create();
        \App\Models\TipoProduto::factory(3)->create();
        \App\Models\Produto::factory(3)->create();
        \App\Models\Pedido::factory(3)->create();
    }
}
