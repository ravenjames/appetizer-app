<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;


class CreateDatesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dates', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer("calendar_date");

            //Setting foreign key column
            $table->unsignedBigInteger("day_id");
            //declaring a foreign key
            $table->foreign("day_id")
               ->references("id")
               ->on("days")
               ->onDelete("restrict")
               ->onUpdate("cascade");

            $table->string("calendar_event")->nullable();
            $table->integer("highlighted")->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dates');
    }
}

