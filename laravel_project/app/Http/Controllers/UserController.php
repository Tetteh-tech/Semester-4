<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    // Login method
    public function login(Request $request)
    {
        // Validate login input
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // Check if user exists
        $user = User::where('email', $credentials['email'])->first();

        if (!$user) {
            return response()->json(['message' => 'User does not exist. Please register first.'], 404);
        }

        // Check if password is correct
        if (!Hash::check($credentials['password'], $user->password)) {
            return response()->json(['message' => 'Invalid password.'], 401);
        }

        // Generate token
        $token = $user->createToken('AppToken')->plainTextToken;

        // Return success response with token and user details
        return response()->json([
            'message' => 'Login successful',
            'user' => [
                'name' => $user->name,
                'email' => $user->email,
                'id' => $user->id,
            ],
            'token' => $token, // Include the token in the response
        ]);
    }

    // Register method
    public function register(Request $request)
    {
        // Validate registration input
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|confirmed', // 'confirmed' checks password_confirmation
        ], [
            'password.confirmed' => 'The password confirmation does not match.',
        ]);

        // Create the user
        $user = User::create([
            'name' => $validatedData['name'],
            'email' => $validatedData['email'],
            'password' => bcrypt($validatedData['password']),
        ]);

        // Generate token for the newly registered user
        $token = $user->createToken('AppToken')->plainTextToken;

        // Return success response with token
        return response()->json([
            'message' => 'Registration successful',
            'user' => [
                'name' => $user->name,
                'email' => $user->email,
                'id' => $user->id,
            ],
            'token' => $token, // Include the token for immediate login
        ]);
    }
}
