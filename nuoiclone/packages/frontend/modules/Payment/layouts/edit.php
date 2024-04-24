<section class="content">
    <div class="container-fluid">
         <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            <i class="fa fa-edit" aria-hidden="true"></i> Thanh toán cho thành viên
                        </h2>
                    </div>
                    <div class="body">
                        <div class="row">
                            <div class="col-sm-12 mb0">
                                <form method="post">
                                    <b>Người dùng</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input name="user_id" type="text" id="user_id" class="form-control" readonly="readonly">
                                        </div>
                                    </div>
                                    <b>Thông tin nhận tiền</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <textarea name="bank" id="bank" class="form-control" rows="6" readonly="readonly"></textarea>
                                        </div>
                                    </div>
                                    <b>Tình trạng xử lý</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <select name="status" id="status" class="form-contron"></select>
                                        </div>
                                    </div>
                                    <b>Ghi chú</b>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <textarea name="note" id="note" class="form-control" rows="6"></textarea>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn bg-red waves-effect">Ghi lại</button>
                                </form>
                            </div>
                        </div>
                    </div>
				</div>                    
            </div>
        </div>        
   </div>
</section>
