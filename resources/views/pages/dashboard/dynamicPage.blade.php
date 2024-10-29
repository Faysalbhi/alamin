@extends('layouts.sideNav')

@section('content')
    @include('components.dynamicPage.page_create')
    @include('components.dynamicPage.page_list')
    @include('components.dynamicPage.page_update')
@endsection

@section('footer_script')
@include('components.dynamicPage.page_js')
@endsection