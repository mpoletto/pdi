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
        \App\Models\User::factory(10)->create();

        \App\Models\User::factory()->create([
            'name' => 'Test User',
            'email' => 'test@example.com',
        ]);

        \App\Models\Cliente::factory(10)->create();

        \App\Models\TipoProduto::factory(10)->create();

        // \App\Models\Produto::factory(10)->create('\App\Models\TipoProduto');

        \App\Models\Produto::factory(10)->create()->each(function($u) {
            $u->codigo_tipo_produto()->save(\App\Models\TipoProduto::factory(10)->make());
        });



    }
}
