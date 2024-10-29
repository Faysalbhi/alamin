<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Create or retrieve the user
        $user = User::firstOrCreate(
            ['email' => 'naoshad@admin.com'],
            [
                'name' => 'Alamin',
                'email' => 'alamin@developer.com',
                'password' => Hash::make('password'),
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );

    }
}
