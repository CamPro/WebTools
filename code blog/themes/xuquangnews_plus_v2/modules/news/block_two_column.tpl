<!-- BEGIN: main -->
<div class="row">
                         <!-- BEGIN: cat -->
									<div class="col-md-12 fbt-vc-inner clearfix">
									<!-- BEGIN: cattitle -->
										<div class="title-wrapper border-9">
											<h2><span class="color-9"><a href="{BLOCK_LINK}" title style="
    color: #fff; ="{BLOCK_TITLE}">{BLOCK_TITLE}</a></span></h2>
										</div>
									<!-- END: cattitle -->
									
									    <!-- BEGIN: content -->
										<div class="post-item clearfix">
										   <!-- BEGIN: img -->
											<div class="img-thumb">
												<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
											</div>
											<!-- END: img -->
											<div class="post-content">
												<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_cut}</h3></a>
												<div class="post-info clearfix">
													<span><em class="fa fa-eye">&nbsp;</em>{ROW.hitstotal}</span>
													<span>-</span>
													<span><em class="fa fa-clock-o">&nbsp;</em>{ROW.publtime}</span>
												</div>
												<div class="text-content">
													<p>{ROW.hometext_cut}</p>
												</div>
											</div>
										</div>
										<!-- END: content -->
										<!-- BEGIN: loop -->
										<div class="post-item small">
											<div class="row">
												<div class="col-sm-8 col-xs-6">
												    <!-- BEGIN: img -->
													<div class="img-thumb">
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
													</div>
													<!-- END: img -->
												</div>
												<div class="col-sm-16 col-xs-18 no-padding-left">
													<div class="post-content">
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title}</h3></a>
														<div class="post-info clearfix">
															<span><em class="fa fa-clock-o">&nbsp;</em>{ROW.publtime}</span>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- END: loop -->
									</div>
									<!-- END: cat -->  
								</div>
<!-- END: main -->