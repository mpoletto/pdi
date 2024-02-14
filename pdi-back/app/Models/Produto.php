<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produto extends Model
{
    use HasFactory;

        /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'produto';

    /**
     * The attributes that are mass assignable.
     * 
     * @var array<int, string>
     */
    protected $fillable = [
        'codigo_produto',
        'codigo_tipo_produto',
        'nome',
        'preco',
        'foto',
        'deleted_at',
    ];

    // public function create(String $codigo_tipo_produto) 
    // {
    //     return 
    // }
}
