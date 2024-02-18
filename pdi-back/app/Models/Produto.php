<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;

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
     * The attributes that are ($fillable) mass assignable.
     * https://laravel.com/docs/5.2/eloquent#mass-assignment
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

    /**
     * The attributes that aren't ($guard) mass assignable.
     * https://laravel.com/docs/5.2/eloquent#mass-assignment
     * @var array<int, string>
     */
    protected $guard = [];

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * Get the tipo_produto from produto
     */
    public function tipo_produto(): HasMany
    {
        return $this->hasMany(TipoProduto::class, 'foreign_key');
    }
}
