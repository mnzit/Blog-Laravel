<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Setting;
use App\Category;
use App\Post;
use App\Tag;
class FrontEndController extends Controller
{
    public function index(){
        return view('index') 
                    ->with('setting', Setting::first())  
                    ->with('categories', Category::take(5)->get())
                    ->with('first_post', Post::orderBy('created_at', 'desc')->first())
                    ->with('second_posts', Post::orderBy('created_at', 'desc')->skip(1)->take(2)->get())
                    ->with('wordpress', Category::find(1)->posts()->orderBy('created_at', 'desc')->take(3)->get())
                    ->with('java', Category::find(2)->posts()->orderBy('created_at', 'desc')->take(3)->get());
    }

    public function singlePost($slug){
        $post = Post::where('slug', $slug)->first();

        $next_id = Post::where('id', '>', $post->id)->min('id');
        $prev_id = Post::where('id', '<', $post->id)->max('id');

        return view('single')->with('post', $post)
                             ->with('title', $post->title)
                             ->with('categories', Category::take(5)->get())
                             ->with('setting', Setting::first())
                             ->with('next', Post::find($next_id))
                             ->with('prev', Post::find($prev_id))
                             ->with('tags', Tag::all());
    }

    public function category($id){
        $category = Category::find($id);
        return view('category')->with('category', $category)
                               ->with('title', $category->name)
                               ->with('setting', Setting::first())
                               ->with('categories', Category::take(5)->get());

    }

    public function tag($id){
        $tag = Tag::find($id);
        return view('tag')->with('tag', $tag)
                          ->with('title', $tag->tag)
                          ->with('setting', Setting::first())
                          ->with('categories', Category::take(5)->get());
    }
}
 