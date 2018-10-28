@extends('layouts.app')

@section('content')
<div class="panel panel-default">
<div class="panel-heading">
        Published Post
    </div>
    <div class="panel-body">
        
        <table class="table table-hover">
            <thead>
                <th>Image</th>
                <th>Title</th>
                <th>Edit</th>
                <th>Trash</th>
            </thead>
            <tbody>
            @if($posts->count()>0)
                
           @foreach($posts as $post)
           @if (Auth::id() == $post->user->id || Auth::user()->admin)
                <tr
                @if (Auth::id() == $post->user->id )
                 style="background:#F2F2F2;" 
                @endif
                >
                    <td><img src="{{ $post->featured }}" alt="{{ $post->title }}" width="90px" height="50px"></td>
                    <td>{{ $post->title }}</td>
                    <td><a href="{{ route('post.edit', ['id'=> $post->id]) }}" class="btn btn-xs btn-info">Edit</a></td>              
                    <td><a href="{{ route('post.delete', ['id'=> $post->id]) }}" class="btn btn-xs btn-danger">Trash</a></td> 
                </tr> 
                @endif
           @endforeach
           @else
                <tr>
                    <th colspan="5" class="text-center">No published post</th>
                </tr>
           @endif
            </tbody> 
        </table>
    </div>
</div>
@stop