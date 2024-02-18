<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class TipoProduto extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
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

    /**
     * Get the produto that owns the tipo_produto
     */
    public function produto(): BelongsTo
    {
        return $this->belongsTo(Produto::class, 'foreign_key');
    }
}
