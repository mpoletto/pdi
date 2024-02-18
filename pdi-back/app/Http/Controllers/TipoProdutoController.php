<?php

namespace App\Http\Controllers;

use App\Models\TipoProduto;
use App\Http\Resources\TipoProdutoResource;
use App\Http\Requests\StoreTipoProdutoRequest;

class TipoProdutoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTipoProdutoRequest $request)
    {
        $data = $request->all();
        $cliente = TipoProduto::create($data);
        return new TipoProdutoResource($cliente);
    }

    /**
     * Display the specified resource.
     */
    public function show(TipoProduto $tipoProduto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(TipoProduto $tipoProduto)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, TipoProduto $tipoProduto)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(TipoProduto $tipoProduto)
    {
        //
    }
}
