<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //nama tabel db
	protected $table = 'user_review';
	// kolom yg boleh diisi
	protected $fillable = ['order_id','product_id','user_id','rating','review'];
}
