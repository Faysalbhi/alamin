@extends('layouts.sideNav')

@section('content')
    @include('components.webContent.update_web_content')
@endsection

@section('footer_script')
    @include('components.webContent.web_content_js')
@endsection