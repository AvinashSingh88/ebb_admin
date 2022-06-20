<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category_wise_brand extends Model
{
    protected $fillable = ['category_id','brand_id','title','url','','image'];
    use HasFactory;
}
