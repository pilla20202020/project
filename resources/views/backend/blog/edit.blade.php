@extends('backend.layouts.admin.admin')

@section('title', 'blog')

@section('content')
<section>
        <div class="section-body">
            <form class="form form-validate floating-label" action="{{route('blog.update',$blog->slug)}}"
                  method="POST" enctype="multipart/form-data" novalidate>
            @method('PUT')
            @include('backend.blog.partials.form', ['header' => 'Edit blog <span class="text-primary">('.($blog->title).')</span>'])
            </form>
        </div>
</section>
@stop

