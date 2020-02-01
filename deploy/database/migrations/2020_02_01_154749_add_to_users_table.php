<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('login_with', 255);
            $table->string('usertype', 20)->nullable();
            $table->string('first_name', 255);
            $table->string('last_name', 255);
            $table->string('gender', 20);
            $table->string('image_icon', 255)->nullable();
            $table->string('mobile', 255);
            $table->string('contact_email', 255);
            $table->string('website', 255);
            $table->text('address');
            $table->string('facebook_url', 255);
            $table->string('twitter_url', 255);
            $table->string('linkedin_url', 255);
            $table->string('dribbble_url', 255);
            $table->string('instagram_url', 255);
            $table->string('facebook_id', 255);
            $table->string('google_id', 255);
           
            
            $table->text('membership')->nullable();
            $table->text('service_1');
            $table->bigInteger('consultation_fee');
            $table->integer('referral');
            $table->integer('refers');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}
