@extends('member.truyen.index')
@section('title', 'Thành Viên')
@section('truyen_content')
<div class="page-inner">
    <div class="page-section">
        <div class="card">
            <div class="frame-content-2 p-3" style="width: 100%;">
                <div style="width: 96%; float: left;">
                    <select id="select-members" class="form-control" data-toggle="select2" name="type_story">
                        <option value="">-- Chọn Thành Viên --</option>
                        @foreach($thanhvien as $val)
                        <option value="{{ $val->id }}">{{ $val->display_name }}</option>
                        @endforeach
                    </select>
                </div>
                <div style="width: 4%; float: left; padding-left: 10px;">
                    <button id="btn-select-members" class="btn btn-sm btn-primary">
                        <i class="fas fa-user-plus"></i>
                    </button>
                </div>
            </div>
            <div style="clear: both;"></div>
            <div id="id-members-users-2" class="row overflow-auto" style="max-height: 500px;"></div>
        </div>

    </div>
</div>
@endsection
@section('script')
<script>
    var ID_TRUYEN = $('#myIdTruyen').val();

    toastr.options = {
        "closeButton": false,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-bottom-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    $('#id-members').click(function() {
        refreshListMember();
    });

    function refreshListMember() {
        $.ajax({
            url: "{{ route('member.get_members_story') }}",
            data: {
                truyen_id: ID_TRUYEN
            },
            type: 'get',
            success: function(data) {
                $('#id-members-users-2').html(data);
            }
        });
    }

    $('#btn-select-members').click(function() {
        let get_id_user = $('#select-members').val();
        $.ajax({
            url: "{{ route('member.add_members_story') }}",
            data: {
                user_id: get_id_user,
                truyen_id: ID_TRUYEN
            },
            type: 'get',
            success: function() {
                refreshListMember();
                toastr.success('Thêm thành viên thành công!', '');
            }
        });
    });

    function deleteMember(id) {
        if (confirm('Bạn có muốn xóa thành viên ra khỏi danh sách?')) {
            $.ajax({
                url: "{{ route('member.delete_members_story') }}",
                data: {
                    id: id
                },
                type: 'get',
                success: function() {
                    refreshListMember();
                    toastr.success('Xóa thành viên thành công!', '');
                }
            });
        }
    }

    $(document).ready(function() {
        setTimeout(refreshListMember, 1000);
    });
</script>
@endsection