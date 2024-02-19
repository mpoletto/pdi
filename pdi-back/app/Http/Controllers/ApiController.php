<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
// use Illuminate\Support\Facades\Auth;

class ApiController extends Controller
{
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email', 
            'password' => 'required|confirmed',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email, 
            'password' => Hash::make($request->password),
        ]);

        return \response()->json([
            'status' => 201,
            'message' => 'user created successfully'
        ]);
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email', 
            'password' => 'required',
        ]);

        $user = User::where('email', $request->email)->first();

        if (!empty($user)) {

            if (Hash::check($request->password, $user->password)) {

                $token = $user->createToken('thePersonalToken')->plainTextToken;

                return \response()->json([
                    'status' => 200, 
                    'message' => 'login successfully', 
                    'token' => $token,
                ]);
            }
        }

        return \response()->json([
            'status' => 403, 
            'message' => 'invalid login', 
        ]);
    }
}
