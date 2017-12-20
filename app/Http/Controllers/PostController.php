<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Post;

class PostController extends Controller
{
    
	public function read(){
        return Post::all();
    }

    public function create(Request $request){
        $Post = Post::create($request->all());
        return response()->json([
            'message' => 'inserted'                        
        ]);
    }

    
    public function delete($id){
        $Post = Post::findOrFail($id);
        $Post->delete();

        return response()->json([
            'message' => 'deleted'            
        ]);
    }

    public function update($id,Request $request){
        $this->validate($request, [
            'order_id' => 'required',
            'product_id' => 'required',
            'user_id' => 'required',
            'rating' => 'required',
            'review' => 'required'
        ]);
        $Post = Post::find($id);
        if($Post){
            $Post->update($request->all());
            return response()->json(['status' => 'success', 'message' => 'Data has been updated']);
        }

        return response()->json(['status' => 'error', 'message' => 'cannot update data'],400);
    }

}
