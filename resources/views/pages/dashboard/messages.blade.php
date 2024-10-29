@extends('layouts.sideNav')

@section('content')
    @include('components.message.message_list')
@endsection

@section('footer_script')
    @include('components.message.message_js')
@endsection