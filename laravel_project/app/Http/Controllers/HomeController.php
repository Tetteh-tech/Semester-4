<?php

namespace App\Http\Controllers;

use Exception;
use App\Models\Home;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    public function getUserHomes(Request $request)
    {
       
        
        try {
            $user = Auth::user();
    
            if (!$user) {
                return response()->json(['error' => 'Unauthenticated'], 401);
            }
    
            $homes = Home::where('user_id', $user->id)->get();
    
            if ($homes->isEmpty()) {
                return response()->json(['homes' => [], 'message' => 'No records found'], 200);
            }
    
            return response()->json(['homes' => $homes]);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

    public function update(Request $request, $id)
    {
        $home = Home::find($id);
        if (!$home || $home->user_id !== Auth::id()) {
            return response()->json(['message' => 'Activity not found or unauthorized'], 404);
         }

        $request->validate([
            'activity' => 'required|string',
            'date' => 'required|date',
            'time' => 'required',
            'status' => 'required|string',
        ]);

        $home->update([
            'activity' => $request->activity,
            'date' => $request->date,
            'time' => $request->time,
            'status' => $request->status,
        ]);

        return response()->json(['message' => 'Activity updated successfully', 'home' => $home]);
    }    
    
 public function destroy($id)
 {
    $home=Home::find($id);
    if(!$home){
        return response()->json(['message'=>'Activity not found '],404);
    }
    $home->delete();
    return response()->json(['message'=>'Activity delete successfully'],200);
 }
    
}
