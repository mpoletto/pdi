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
            $table->unsignedBigInteger('id_cliente');
            $table->string('codigo_produto', 64);
            $table->string('codigo_tipo_produto', 64);
            $table->string('user_session_id', 255);
            $table->integer('quantidade', false, true);
            $table->datetime('data_registro')->useCurrent();
            $table->softDeletesTz('deleted_at');
            $table->timestamps();

            $table->primary(['id_cliente', 'codigo_produto', 'codigo_tipo_produto', 'user_session_id']);

            $table->foreign('id_cliente')
            ->references('id')->on('cliente')
            ->onUpdate('cascade')
            ->onDelete('restrict');
            $table->foreign('codigo_produto')
            ->references('codigo_produto')->on('produto')
            ->onUpdate('cascade')
            ->onDelete('restrict');
            $table->foreign('codigo_tipo_produto')
            ->references('codigo_tipo_produto')->on('tipo_produto')
            ->onUpdate('cascade')
            ->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pedido');
    }
};
