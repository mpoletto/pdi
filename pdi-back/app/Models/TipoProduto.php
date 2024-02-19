<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class TipoProduto extends Model
{
    use HasFactory;
    
    protected $table = 'tipo_produto';

    /**
     * The attributes that are mass assignable.
     * 
     * @var array<int, string>
     */
    protected $fillable = [
        'codigo_tipo_produto',
        'tipo',
        'deleted_at',
    ];

    public function getAll()
    {
        return DB::table($this->table)->get();
    }

    public function getForFactory()
    {
        return DB::table($this->table)->select('codigo_tipo_produto')->offset(1)->limit(1)->get();
    }
}
