<?php
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BookingController;

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Authentication routes
Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);

// Activity (Home) management routes
Route::middleware('auth:sanctum')->group(function () {
    Route::get('/home', [HomeController::class, 'getUserHomes']);
    Route::post('/home', [HomeController::class, 'store']);
    Route::put('/home/{id}', [HomeController::class, 'update']);
    Route::delete('/home/{id}', [HomeController::class, 'destroy']);
});

// Booking management routes
Route::middleware('auth:sanctum')->post('/booking', [BookingController::class, 'store']);
