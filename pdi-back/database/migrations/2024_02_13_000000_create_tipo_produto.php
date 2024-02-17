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
        Schema::create('tipo_produto', function (Blueprint $table) {
            $table->string('codigo_tipo_produto', 64)->primary();
            $table->string('tipo', 64);
            $table->softDeletesTz('deleted_at');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tipo_produto');
    }
};
