<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public $incrementing = false;

    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('produto', function (Blueprint $table) {
            $table->string('codigo_produto', 64)->primary();
            $table->string('codigo_tipo_produto', 32)->primary();
            $table->string('nome', 32);
            $table->decimal('preco', 6, 2, true);
            $table->blob('foto')->nullable();
            $table->softDeletesTz('deleted_at');
            $table->foreignId('codigo_tipo_produto')
            ->constrained('tipo_produto', 'codigo_tipo_produto')
            ->onUpdate('cascade')
            ->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
