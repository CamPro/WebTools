<!-- BEGIN: main -->
								<div class="fbt-vc-inner hor">
									<div class="title-wrapper border-4">
										<h2><span class="color-4"><a title style="color: #fff; ="{TITLE}" href="{LINK}"><span>{TITLE}</span></a></span></h2>
									</div>
									<div class="row">
										<div class="col-md-12">
										     <!-- BEGIN: content -->
											<div class="post-item big clearfix">
												<div class="img-thumb">
													<a href="{CONTENT.link}" title="{CONTENT.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{CONTENT.thumb}')"></div></a>
												</div>
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
											<!-- END: content -->
										</div>
										<div class="col-md-12">
										    <!-- BEGIN: loop -->
											<div class="post-item small">
												<div class="row">
													<div class="col-sm-8 col-xs-6">
														<div class="img-thumb">
															<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
														</div>
													</div>
													<div class="col-sm-16 col-xs-18 no-padding-left">
														<div class="post-content">
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