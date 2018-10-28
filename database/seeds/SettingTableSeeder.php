<?php

use Illuminate\Database\Seeder;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Setting::create([
            'site_name' => 'Laravel\'s Blog',
            'address' => 'Bholdhoka, Lalitpur',
            'contact_number' => '9808546858',
            'contact_email' => 'info@laravelblog.com'
        ]);
    }
}
