<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CorsMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        // Define allowed origins here. You can replace '*' with specific domains
        $allowedOrigins = ['*']; // Replace '*' with your front-end domain for security

        // Handle OPTIONS request (preflight)
        if ($request->isMethod('OPTIONS')) {
            return response('', 200)
                ->header('Access-Control-Allow-Origin', implode(',', $allowedOrigins))
                ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
                ->header('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, X-CSRF-Token, Authorization')
                ->header('Access-Control-Allow-Credentials', 'true');
                $allowedOrigins = explode(',', env('CORS_ALLOWED_ORIGINS'));

        }

        // Add CORS headers for all other requests
        return $next($request)
            ->header('Access-Control-Allow-Origin', implode(',', $allowedOrigins)) // Allows all origins, replace * with specific domains if needed
            ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
            ->header('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, X-CSRF-Token, Authorization')
            ->header('Access-Control-Allow-Credentials', 'true');
            $allowedOrigins = explode(',', env('CORS_ALLOWED_ORIGINS'));

    }
}
