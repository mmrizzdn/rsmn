<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;



return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('patients', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('polyclinic_id');
            $table->foreign('polyclinic_id')->references('id')->on('polyclinics')->onDelete('cascade');

            $table->string('type');
            $table->date('date');
            $table->string('time');
            $table->string('polyclinic');
            $table->string('doctor');
            $table->string('queue')->unique();
            $table->string('name');
            $table->text('complain');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('patients');
    }
};
