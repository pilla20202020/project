<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user=User::create([
            'name'=>'Admin',
            'email'=>'admin@project.com',
            'password'=>Hash::make('admin@project'),
            'role'=>'admin'
        ]);

        $user=User::create([
            'name'=>'Customer',
            'email'=>'customer@project.com',
            'password'=>Hash::make('customer@project'),
        ]);
    }
}
