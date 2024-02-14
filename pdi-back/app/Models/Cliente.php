<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'cliente';

    /**
     * The attributes that are mass assignable.
     * 
     * @var array<int, string>
     */
    protected $fillable = [
        'codigo_cliente',
        'nome', 
        'email', 
        'telefone', 
        'data_nascimento', 
        'endereco', 
        'complemento', 
        'bairro', 
        'cep', 
        'deleted_at',
    ];
}
