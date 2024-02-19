<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

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

    public function getForFactory()
    {
        return DB::table($this->table)->select('codigo_cliente')->offset(1)->limit(1)->get();
    }
}
