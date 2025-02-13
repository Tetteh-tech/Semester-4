<?php

namespace App\Http\Controllers;

use App\Models\Home;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    public function store(Request $request)
    {
        // Automatically get the authenticated user's ID
        $userId = auth()->id();

        if (!$userId) {
            return response()->json(['message' => 'Unauthorized'], 401); // If no user is authenticated
        }

        // Validate the request data
        $validateData = $request->validate([
            'activity' => 'required|string',
            'date' => 'required|date',
            'time' => 'required|date_format:H:i',
            'status' => 'required|string',
        ]);

        // Create a new booking with the authenticated user's ID
        $booking = Home::create([
            'user_id' => $userId, // Automatically add the user_id
            'activity' => $validateData['activity'], // Corrected field name
            'date' => $validateData['date'],
            'time' => $validateData['time'],
            'status' => $validateData['status'],
        ]);

        return response()->json(['message' => 'Booking done', 'data' => $booking], 201);
    }
}
