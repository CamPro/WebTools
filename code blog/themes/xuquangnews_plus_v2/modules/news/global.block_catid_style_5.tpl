<!-- BEGIN: main -->
								<div class="fbt-vc-inner hor glr">
									<div class="title-wrapper border-6">
										<h2><span class="color-6"><a title style="color: #fff; ="{TITLE}" href="{LINK}">{TITLE}</a></span></h2>
									</div>
									<!-- BEGIN: content -->
									<div class="post-item big sec clearfix">
										<div class="row">
											<div class="col-md-12">
												<div class="img-thumb">
													<a href="{CONTENT.link}" title="{CONTENT.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{CONTENT.thumb}')"></div></a>
												</div>
											</div>
											<div class="col-md-12 padding-left-5">
												<div class="post-content">
													<a href="{CONTENT.link}" title="{CONTENT.title}" {ROW.target_blank}><h3>{CONTENT.title_cut}</h3></a>
													<div class="post-info clearfix">
														<span><em class="fa fa-eye">&nbsp;</em>{CONTENT.hitstotal}</span>
														<span>-</span>
														<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{CONTENT.publtime}</span>
													</div>
													<div class="text-content">
														<p>{CONTENT.hometext_cut}</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- END: content -->
									<div class="row">
										<div class="gallery-img" style="padding-left: 0px;padding-right: 0px;">
										<!-- BEGIN: loop -->
											<div class="col-md-6 col-xs-12 padding-5">
												<div class="post-item clearfix">
													<div class="img-thumb">
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
														<div class="img-credits">
															<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_cut}</h3></a>
															<div class="post-info clearfix">
																<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{ROW.publtime}</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- END: loop -->
										</div>
									</div>
								</div>
<!-- END: main -->