@extends('layouts.sideNav')

@section('content')
    @include('components.seo.seo_create')
    @include('components.seo.seo_list')
    @include('components.seo.seo_update')
    @endsection
    
@section('footer_script')
    @include('components.seo.seo_js')
@endsection