<?php

namespace App\Models;

use App\Http\Requests\StorePedidoRequest;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class Pedido extends Model
{
    use SoftDeletes;

    /**
     * The attributes that should be mutated to dates.
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    use HasFactory;

        /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'pedido';

    /**
     * The attributes that are mass assignable.
     * 
     * @var array<int, string>
     */
    protected $fillable = [
        'id_cliente',
        'codigo_produto',
        'codigo_tipo_produto',
        'user_session_id',
        'quantidade',
        'data_registro',
        'deleted_at',
    ];

    public function getPedido(Request $request)
    {
        $where = empty($request->id_cliente)? '': "id_cliente = $request->id_cliente";
        $where.= empty($request->codigo_produto)? '': " AND codigo_produto = '$request->codigo_produto'";
        $where.= empty($request->codigo_tipo_produto)? '': " AND codigo_tipo_produto = '$request->codigo_tipo_produto'";
        $where.= empty($request->user_session_id)? '': " AND user_session_id = '$request->user_session_id'";
        $result = empty($where)? DB::table($this->table)->get(): DB::table($this->table)->whereRaw($where)->get();
        return $result;
    }

    public function listPedido(Request $request)
    {
        return DB::table($this->table);
    }

    public function updatePedido(StorePedidoRequest $pedido)
    {
        $affected = DB::update(
            "UPDATE $this->table SET quantidade = $pedido->quantidade 
            WHERE id_cliente = ? AND codigo_produto = ? AND codigo_tipo_produto = ? AND user_session_id = ?",
            [ $pedido->id_cliente, $pedido->codigo_produto, $pedido->codigo_tipo_produto, $pedido->user_session_id ]
        );
        return $affected;
    }

    public function deletePedido(StorePedidoRequest $pedido) 
    {
        $affected = $this::where([
            'id_cliente' => $pedido->id_cliente, 
            'codigo_produto' => $pedido->codigo_produto, 
            'codigo_tipo_produto' => $pedido->codigo_tipo_produto, 
            'user_session_id' => $pedido->user_session_id,
        ])->delete();
        return $affected;
    }

}
