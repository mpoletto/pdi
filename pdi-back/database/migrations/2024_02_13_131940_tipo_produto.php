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
            $table->string('codigo_tipo_produto', 32)->primary();
            $table->string('tipo', 32);
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
