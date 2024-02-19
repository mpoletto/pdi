<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\ProdutoController;
use App\Http\Controllers\TipoProdutoController;
use App\Http\Controllers\PedidoController;
use App\Http\Controllers\ApiController;
use App\Http\Resources\UserCollection;
use App\Http\Resources\ClienteCollection;
use App\Models\User;
use App\Models\Cliente;
use App\Models\Pedido;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::post('/register', [ApiController::class, 'register']);
Route::post('/login', [ApiController::class, 'login']);
 
Route::get('/cliente', function () {
    return new ClienteCollection(Cliente::all());
});

Route::post('/cliente', [ClienteController::class, 'store']);
Route::post('/produto', [ProdutoController::class, 'store']);
Route::post('/tipo-produto', [TipoProdutoController::class, 'store']);
Route::get('/tipo-produto', [TipoProdutoController::class, 'index']);
Route::post('/pedido', [PedidoController::class, 'store']);
Route::get('/pedido')
