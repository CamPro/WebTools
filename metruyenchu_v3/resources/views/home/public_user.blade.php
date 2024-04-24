@extends('layouts.home')
@section('title', 'Thành viên')
@section('content')
<div class="my-card card shadow-sm mb-3">
	<div class="card-body my-pad">
        <div class="thumb-username text-center">
            <img src="{{ getAvatarById($user->id) }}" class="rounded-circle mx-auto d-block" alt="{{ $user->display_name }}" width="75">
            <h5 class="pt-1 text-primary">{{ $user->display_name }}</h5>
            <small>{{ $user->status }}</small>
        </div>
        <div class="body-username mt-3">
            <div class="row">
                <div class="col-4">
                    <div class="header-username-row text-center">
                        <img src="{{ getAvatarById($user->id) }}" class="rounded-circle mx-auto d-block" width="55">
                        <span>TRẠNG THÁI</span><br>
                        <span class="text-success font-weight-bold">@if($user->lock == 'N') Đang hoạt động @else Bị Khóa @endif</span>
                    </div>
                </div>
                <div class="col-4">
                    <div class="header-username-row text-center">
                        <img src="{{ getAvatarById($user->id) }}" class="rounded-circle mx-auto d-block" width="55">
                        <span>ĐĂNG TRUYỆN</span><br>
                        <span class="text-success font-weight-bold">{{ $user->truyen_da_dang }}</span>
                    </div>
                </div>
                <div class="col-4">
                    <div class="header-username-row text-center">
                        <img src="{{ getAvatarById($user->id) }}" class="rounded-circle mx-auto d-block" width="55">
                        <span>THÀNH TÍCH</span><br>
                        <span class="text-success font-weight-bold">{{ $user->exp_level }}</span>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
@endsection