@extends('layouts.admin')
@section('title', 'Nạp linh thạch')
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
        </header>
        <div class="page-section">
            <div class="card">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">THÀNH VIÊN</th>
                            <th scope="col">NGÂN HÀNG</th>
                            <th scope="col">TIỀN NẠP</th>
                            <th scope="col">LINH THẠCH</th>
                            <th scope="col">TRẠNG THÁI</th>
                            <th scope="col">NGÀY NẠP</th>
                            <th scope="col">CẬP NHẬT</th>
                            <th scope="col" width="75">DUYỆT</th>
                            <th scope="col" width="75">HỦY</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($hoadon as $val)
                        <tr>
                            <th scope="row">#{{ $val->id }}</th>
                            <td>{{ $val->User->name }}</td>
                            <td><span class="badge badge-info">{{ $val->nganhang }}</span></td>
                            <td><span class="badge badge-warning">{{ number_format($val->tien) }}đ</span></td>
                            <td><span class="badge badge-warning">{{ number_format($val->linhthach) }} LT</span></td>
                            <td>
                                <span class="badge badge-warning">{{ $val->trangthai }}</span>
                            </td>
                            <td>{{ $val->created_at }}</td>
                            <td>{{ $val->updated_at->diffForHumans() }}</td>
                            <td class="text-center">
                                <a class="btn btn-sm btn-icon btn-secondary mr-2" href="{{ route('admin.naptien.check_bill', ['id'=>$val->id]) }}">
                                    <i class="fas fa-check-circle"></i>
                                    <span class="sr-only">Edit</span>
                                </a>
                            </td>
                            <td>
                                <a class="btn btn-sm btn-icon btn-secondary mr-2" href="{{ route('admin.naptien.cancel', ['id'=>$val->id]) }}">
                                    <i class="fas fa-exclamation-triangle"></i>
                                    <span class="sr-only">Edit</span>
                                </a>
                            </td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script>
    $(document).ready(function() {
        
    })
</script>
@endsection