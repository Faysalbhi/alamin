@extends('layouts.sideNav')

@section('content')
    @include('components.blog.blog_create')
    @include('components.blog.blog_list')
    @include('components.blog.blog_update')
@endsection

@section('footer_script')
    @include('components.blog.blog_js')
@endsection