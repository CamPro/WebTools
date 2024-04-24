@extends('layouts.member')
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

            <div class="d-md-flex align-items-md-start">
                <h1 class="page-title mr-sm-auto">NẠP LINH THẠCH</h1>
                <div class="btn-toolbar">
                    <button id="btnDeleteNotifi" class="btn btn-warning" data-toggle="modal" data-target="#exampleModal">
                        <i class="fas fa-dollar-sign"></i>
                        <span class="ml-1">Nạp Tiền</span>
                    </button>
                </div>
            </div>
        </header>
        <div class="page-section">
            <div class="card">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">NGÂN HÀNG</th>
                            <th scope="col">TIỀN NẠP</th>
                            <th scope="col">LINH THẠCH</th>
                            <th scope="col">TRẠNG THÁI</th>
                            <th scope="col">NGÀY NẠP</th>
                            <th scope="col">CẬP NHẬT</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($hoadon as $val)
                        <tr>
                            <th scope="row">#{{ $val->id }}</th>
                            <td><span class="badge badge-info">{{ $val->nganhang }}</span></td>
                            <td><span class="badge badge-warning">{{ number_format($val->tien) }}đ</span></td>
                            <td><span class="badge badge-warning">{{ number_format($val->linhthach) }} LT</span></td>
                            <td>
                                @if($val->trangthai == "Đang chờ")
                                <span class="badge badge-success"><i class="fas fa-spinner"></i> Đang chờ</span>
                                @elseif($val->trangthai == 'Thành công')
                                <span class="badge badge-warning"><i class="fas fa-check"></i> Thành công</span>
                                @else
                                <span class="badge badge-danger"><i class="fas fa-exclamation-triangle"></i> Thất bại</span>
                                @endif
                            </td>
                            <td>{{ $val->created_at }}</td>
                            <td>{{ $val->updated_at->diffForHumans() }}</td>
                        </tr>
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">NẠP LINH THẠCH</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="{{ route('member.naplinhthach.add') }}">
                    @csrf
                    <div class="form-group">
                        <span id="btn-momo-bank" class="btn rounded" style="height: 100%;margin-left: 120px;">
                            <img src="https://upload.wikimedia.org/wikipedia/vi/f/fe/MoMo_Logo.png" width="75">
                        </span>
                        <span id="btn-tp-bank" class="btn rounded" style="height: 100%;">
                            <img src="https://nhanuudai.com/wp-content/uploads/2022/11/logo-tpbank.png" width="75">
                        </span>
                    </div>
                    <div class="form-group" hidden>
                        <label for="ngan-hang">Ngân hàng</label>
                        <select class="form-control" name="nganhang" id="ngan-hang" required>
                            <option value="Momo">Momo</option>
                            <option value="Tp Bank">Tp Bank</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;" onclick="money(10000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            10.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">10K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;height: 100%;" onclick="money(20000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            20.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">20K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;height: 100%;" onclick="money(50000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            50.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">50K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;height: 100%;" onclick="money(100000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            100.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">100K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;height: 100%;" onclick="money(200000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            200.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">200K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="frame-coin btn" style="width: 100%;height: 100%;" onclick="money(500000)">
                                    <div class="card">
                                        <div class="card-header text-center py-4" style="background-color: #f3dddd;">
                                            500.500 <i class="fas fa-coin"></i>
                                        </div>
                                        <div class="card-footer p-0 py-1 text-center bg-warning">
                                            <b style="width: 100%;">500K</b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group" hidden>
                        <label for="so-tien">Số tiền</label>
                        <input type="text" class="form-control" name="tien" id="so-tien" required>
                    </div>
                    <div id="info-momo-bank" class="form-group" style="display: none;">
                        <div class="text-center" style="font-weight: bold;">Momo Bank</div>
                        <p>
                            <b>Giá:</b> <span class="gia-trao-doi">0đ</span><br>
                            <b>STK:</b> 093 833 5974<br>
                            <b>Lưu ý: </b> nội dung chuyển khoản là TÊN ĐĂNG NHẬP của bạn, sau 30 phút chưa nhận được linh thạch, xin vui lòng gửi ảnh giao dịch qua Fanpage để được hỗ trợ.
                        </p>
                    </div>
                    <div id="info-tp-bank" class="form-group" style="display: none;">
                        <div class="text-center" style="font-weight: bold;">TP Bank</div>
                        <p>
                            <b>Giá:</b> <span class="gia-trao-doi">0đ</span><br>
                            <b>STK:</b> 9070 8625 423<br>
                            <b>TÊN:</b> Kim Hung Vu<br>
                            <b>Lưu ý: </b> nội dung chuyển khoản là TÊN ĐĂNG NHẬP của bạn, sau 30 phút chưa nhận được linh thạch, xin vui lòng gửi ảnh giao dịch qua Fanpage để được hỗ trợ.
                        </p>
                    </div>
                    <button id="btn-submit-form" type="submit" class="btn btn-primary" hidden>Submit</button>
                </form>
            </div>
            <div class="modal-footer">
                <div class="text-center" style="width:100%;">
                    <button id="btn-luu-hoa-don" type="button" class="btn btn-primary">Lưu hóa đơn</button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script>
    function money(money){
        $('#so-tien').val(money);
        $('.gia-trao-doi').text(money + 'đ');
    }

    $(document).ready(function() {
        $('#btn-momo-bank').click(function() {
            $("#ngan-hang").val("Momo").change();
            $('#info-tp-bank').hide();
            $('#info-momo-bank').show();
        });

        $('#btn-tp-bank').click(function() {
            $("#ngan-hang").val("Tp Bank").change();
            $('#info-momo-bank').hide();
            $('#info-tp-bank').show();
        });

        $('#btn-luu-hoa-don').click(function(){
            $('#btn-submit-form').click();
        });
    })
</script>
@endsection