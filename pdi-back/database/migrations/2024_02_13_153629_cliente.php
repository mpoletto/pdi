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
        Schema::create('cliente', function (Blueprint $table) {
            $table->string('codigo_cliente', 64)->primary();
            $table->string('nome', 96);
            $table->string('email')->unique();
            $table->string('telefone', 32)->nullable();
            $table->date('data_nascimento')->nullable();
            $table->string('endereco', 128)->nullable();
            $table->string('complemento', 128)->nullable();
            $table->string('bairro', 64)->nullable();
            $table->char('cep', 9)->nullable();
            $table->datetime('data_cadastro')->useCurrent();
            $table->softDeletesTz('deleted_at');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
