@extends('layouts.sideNav')

@section('content')
    @include('components.product.product_list')
    @include('components.product.product_create')
    @include('components.product.product_update')
@endsection

@section('footer_script')
    @include('components.product.product_js')
@endsection