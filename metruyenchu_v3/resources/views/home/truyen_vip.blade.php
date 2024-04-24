@extends('layouts.home')
@section('title', 'Truyện VIP | Mê Truyện Chữ')
@section('content')
<div class="my-card card shadow-sm">
    <h5 class="card-header font-roman py-2 font-weight-bolder my-t-shadow bg-xanh">
        <i class="fab fa-hotjar"></i> TRUYỆN VIP
    </h5>
    <div class="card-body py-0 pb-3 my-pad">
        <div class="row">
            <!-- nội dung truyện hot -->
            @foreach($truyen as $val)
            <div class="col-md-2 col-6 my-2 test">
                <div class="my-card card bg-dark">
                    <a href="{{ route('trangchu.truyen', ['name_slug'=>$val->name_slug]) }}">
                        <div class="card-body py-0 px-0 position-relative">
                            <img src="{{ getStoryCover($val->cover) }}" class="img-fluid my-thumb">
                            <span class="the-chuong position-absolute">{{ $val->num_chaps - $val->num_chaps_pending }} chương</span>
                            @if($val->vip == 'Y')
                            <span class="ribbon ribbon-1 the-vip">VIP</span>
                            @endif
                            @if($val->status == 'Hoàn thành')
                            <span class="the-full position-absolute">Full</span>
                            @endif
                        </div>
                        <div class="card-footer py-1 font-roman title-truyen-home">{{ $val->name }}</div>
                    </a>
                </div>
            </div>
            @endforeach
            <!-- end nội dung truyện hot -->
        </div>
    </div>
    <div class="card-footer">
        <div class="my-pagination text-center">
            <a id="btn-fist" href="{{ route('trangchu.truyen_hot') }}?page=1" class="btn {{ disibleButtonPrev($page) }}"><i class="fad fa-backward"></i></a>
            <a id="btn-truoc" href="{{ route('trangchu.truyen_hot') }}?page={{ ($page-1) }}" class="btn btn-outline-secondary btn-trang {{ disibleButtonPrev($page) }}"><i class="fas fa-caret-left"></i> Trước</a>

            <span id="page-of" class="btn btn-outline-secondary btn-page-of disabled ml-2"><span id="currPage">{{ $page }}</span>/{{ $numOfPage }}</span>

            <a id="btn-sau" href="{{ route('trangchu.truyen_hot') }}?page={{ ($page+1) }}" class="btn btn-outline-secondary btn-trang ml-2 {{ disibleButtonNext($page, $numOfPage) }}">Tiếp <i class="fas fa-caret-right"></i></a>
            <a id="btn-tail" href="{{ route('trangchu.truyen_hot') }}?page={{ $numOfPage }}" class="btn {{ disibleButtonNext($page, $numOfPage) }}"><i class="fad fa-forward"></i></a>
        </div>
    </div>
</div>
<div class="container-fluid px-0 mt-3 banner-benduoi an-banner">
    <a href="#">
        <img class="img-fluid" src="{{ asset('public/images/banner3.jpg') }}" style="height: 61px; width: 100%;">
    </a>
</div>
<div class="phan-cach"></div>

@endsection