<?php

namespace App\Http\Controllers;

use App\Models\Pedido;
use Illuminate\Http\Request;
use App\Http\Requests\StorePedidoRequest;
use App\Http\Resources\PedidoResource;
use App\Models\Cliente;
use Illuminate\Mail\Mailables\Address;
use Illuminate\Mail\Mailables\Envelope;
use App\Mail\SendPedido;
use Illuminate\Support\Facades\Mail;

class PedidoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $result = (new Pedido)->getPedido($request);
        return $result;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorePedidoRequest $request)
    {
        $data = $request->all();
        $pedido = Pedido::create($data);
        $cliente = (new Cliente)->getEmail($request->id_cliente);
        $this->send($cliente);
        return new PedidoResource($pedido);
    }

    public function send($request): void
    {
        $data = (array) $request;
        $data['message'] = 'Pedido criado com sucesso.';
        Mail::to($request->email)->send(new SendPedido($data));
    }

    /**
     * Display the specified resource.
     */
    public function show(Pedido $pedido)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StorePedidoRequest $request)
    {
        $affected = (new Pedido)->updatePedido($request);
        if ($affected > 0) {
            return \response()->json([
                'status' => 200,
                'message' => $affected . ' rows udpated successfully',
            ]);
        } else {
            return \response()->json([
                'status' => 304,
                'message' => 'nothing updated',
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(StorePedidoRequest $request)
    {
        $affected = (new Pedido)->deletePedido($request);
        if ($affected > 0) {
            return \response()->json([
                'status' => 200,
                'message' => $affected . ' rows deleted successfully with soft delete',
            ]);
        } else {
            return \response()->json([
                'status' => 204,
                'message' => 'nothing deleted',
            ]);
        }
    }
}
