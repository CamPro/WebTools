@extends('layouts.member')
@section('title', 'Thêm Chương')
@section('mycss')
<link rel="stylesheet" href="{{ asset('public/assets/vendor/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/assets/vendor/tributejs/tribute.css') }}">
<link rel="stylesheet" href="{{ asset('public/assets/vendor/at.js/css/jquery.atwho.min.css') }}">
@endsection
@section('content')
<div class="page">
    <div class="page-inner">
        <header class="page-title-bar">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                        <a href="{{ route('member.dashboard.my_story.list_chapter', ['name_slug'=>$truyen->name_slug]) }}">
                            <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Danh Sách Chương
                        </a>
                    </li>
                </ol>
            </nav>
            <h1 class="page-title" style="text-transform: uppercase;">THÊM CHƯƠNG ({{ $truyen->name }})</h1>
        </header>
        <div class="page-section">
            <div class="card">
                <div class="card-body">
                    <form method="post" action="{{ route('member.dashboard.my_story.list_chapter.post_add_chap') }}">
                        @csrf
                        <input type="text" name="truyen_id" value="{{ $truyen->id }}" hidden>
                        <input type="text" name="truyen_name_slug" value="{{ $truyen->name_slug }}" hidden>
                        <fieldset>
                            <div class="form-group">
                                <label for="numchap">Số Chương <abbr title="Required">*</abbr></label>
                                <div class="custom-number">
                                    <input type="number" class="form-control" id="numchap" name="numchap" min="1" step="1" value="{{ $truyen->num_chaps + 1 }}" placeholder="Số chương..." required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="ten_chuong">Tên Chương</label>
                                <input type="text" class="form-control" maxlength="{{ tbl_fields['chuong']['name'] }}" id="ten_chuong" name="name" placeholder="VD: Ta Cười Người Nhìn Không Thấu" autocomplete="off" autofocus>
                                <small class="form-text text-muted">Tên chương không nên quá dài, tối đa {{ tbl_fields['chuong']['name'] }} ký tự.</small>
                            </div>
                            <div class="form-group">
                                <label for="tf6">Nội Dung</label>
                                <textarea class="form-control ckeditor" id="content" name="content"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Kiểu Đăng <abbr title="Required">*</abbr></label>
                                <select id="status-chapter" class="form-control" name="status" required>
                                    <option value="N">Đăng Thường</option>
                                    <option value="H">Hẹn Giờ</option>
                                    <option value="Y">Chương VIP</option>
                                </select>
                            </div>
                            <div id="form-price-chap" class="form-group" style="display: none;">
                                <label for="numchap">Giá Chương VIP <abbr title="Required">*</abbr></label>
                                <div class="custom-number">
                                    <input type="number" class="form-control" id="price-chap" name="coin" min="1" step="1" value="15" placeholder="Giá mở khóa chương" required>
                                </div>
                            </div>
                            <div id="form-pending" class="form-group" style="display: none;">
                                <label class="control-label" for="flatpickr02">Thời Gian <abbr title="Required">*</abbr></label>
                                <input id="flatpickr02" type="text" name="pending" class="form-control" data-toggle="flatpickr" data-enable-time="true" data-date-format="Y-m-d H:i" required>
                            </div>
                            <div class="form-group text-center">
                                <button type="submit" name="submit" value="save_and_exit" class="btn btn-warning"><i class="fas fa-save"></i> Lưu Chương</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script src="{{ asset('public/assets/vendor/handlebars/handlebars.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/typeahead.js/typeahead.bundle.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/select2/js/select2.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/tributejs/tribute.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/jquery.caret/jquery.caret.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/at.js/js/jquery.atwho.min.js') }}"></script>
<script src="{{ asset('public/assets/vendor/zxcvbn/zxcvbn.js') }}"></script>
<script src="{{ asset('public/assets/vendor/vanilla-text-mask/vanillaTextMask.js') }}"></script>
<script src="{{ asset('public/assets/vendor/text-mask-addons/textMaskAddons.js') }}"></script>
<script src="{{ asset('public/assets/javascript/theme.min.js') }}"></script>
<script src="{{ asset('public/assets/javascript/pages/select2-demo.js') }}"></script>
<script src="{{ asset('public/assets/javascript/pages/typeahead-demo.js') }}"></script>
<script src="{{ asset('public/assets/javascript/pages/atwho-demo.js') }}"></script>
<script src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>
<script>
    $(document).ready(function() {
        $('#status-chapter').change(function() {
            var value_chap = $(this).val();

            if (value_chap === "N") {
                $('#form-price-chap').hide();
                $('#form-pending').hide();
            } else if (value_chap === "H") {
                $('#form-pending').show();
                $('#form-price-chap').hide();
            } else {
                $('#form-price-chap').show();
                $('#form-pending').hide();
            }
        })
    });
</script>
@endsection