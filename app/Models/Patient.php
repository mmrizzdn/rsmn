<?php

namespace App\Models;
use App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    use HasFactory;

    protected $fillable = ['type', 'date', 'time', 'polyclinic', 'queue', 'name', 'complain'];

    public function polyclinics()
    {
        return $this->hasOne(Polyclinic::class);
    }
}
