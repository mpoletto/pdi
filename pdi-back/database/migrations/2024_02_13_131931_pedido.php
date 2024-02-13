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
        Schema::create('pedido', function (Blueprint $table) {
            $table->string('codigo_cliente', 64)->primary()
            ->foreignId()
            ->constrained('cliente', 'codigo_cliente')
            ->onUpdate('cascade')
            ->onDelete('restrict');
            $table->string('codigo_produto', 64)->primary()
            ->foreignId()
            ->constrained('produto', 'codigo_produto')
            ->onUpdate('cascade')
            ->onDelete('restrict');
            $table->string('codigo_tipo_produto', 32)->primary()
            ->foreignId()
            ->constrained('tipo_produto', 'codigo_tipo_produto')
            ->onUpdate('cascade')
            ->onDelete('restrict');
            $table->string('user_session_id', 255)->primary();
            $table->integer('quantidade', false, true);
            $table->datetime('data_registro')->useCurrent();
            $table->softDeletesTz('deleted_at');
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
