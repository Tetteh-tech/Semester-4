<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Home>
 */
class HomeFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id'=>fake()->numberBetween(1,7),
            'Activity' => fake()->word() . ' ' . fake()->randomElement(['Running', 'Swimming', 'Reading', 'Writing']),
            'Time' => fake()->time('h:i A'),
            'Date' => fake()->date('l, F j, Y'),
            'status'=>fake()->randomElement(['High', 'medium','low']),
        ];
    }
}
