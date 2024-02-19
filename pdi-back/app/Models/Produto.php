<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\DB;

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

    public function getForFactory()
    {
        return DB::table($this->table)->select('codigo_produto')->offset(1)->limit(1)->get();
    }
}
