@extends('layouts.member')
@section('title', 'Chương Đã Mua')
@section('content')
<div class="page">
    <div class="page-inner">
        <header class="page-title-bar">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                        <a href="{{ route('member.dashboard') }}">
                            <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>BẢNG ĐIỀU KHIỂN
                        </a>
                    </li>
                </ol>
            </nav>

            <div class="d-md-flex align-items-md-start">
                <h1 class="page-title mr-sm-auto">CHƯƠNG ĐÃ MUA</h1>
            </div>
        </header>
        <div class="page-section">
            <div class="card">
                <div class="card-body">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">TRUYỆN</th>
                                <th scope="col">CHƯƠNG</th>
                                <th scope="col">LINH THẠCH</th>
                                <th scope="col">HẾT HẠN</th>
                                <th scope="col">NGÀY MUA</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($payments as $val)
                            <tr>
                                <th scope="row">#{{ $val->id }}</th>
                                <td>{{ getStoryNameByChapterId($val->chapter_id) }}</td>
                                <td>{{ $val->Chuong->name }}</td>
                                <td><span class="badge badge-warning">{{ number_format($val->coin) }} LT</span></td>
                                <td>{{ date('d/m/Y', strtotime($val->end_date)) }}</td>
                                <td>{{ date('d/m/Y', strtotime($val->created_at)) }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="card-footer">
                    <div class="text-center mx-auto d-block">
                        {!! $payments->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection