<!-- BEGIN: main -->
							<div class="widget clearfix">
								<ul class="nav nav-tabs">
								    <!-- BEGIN: group_info -->
                                    <li class="{BLOCK_INFO.active}"><a data-toggle="tab" href="#block-news-groups-{BLOCK_INFO.bid}">{BLOCK_INFO.title}</a></li>
                                    <!-- END: group_info -->
									<li><a data-toggle="tab" href="#latest-news">Đọc nhiều</a></li>
								</ul>
								<div class="tab-content">
								<!-- BEGIN: group -->
									<div id="block-news-groups-{BLOCK_INFO.bid}" class="tab-pane fade in {BLOCK_INFO.active}">
										<div class="fbt-vc-inner">
										<!-- BEGIN: loop -->
											<div class="post-item small">
												<div class="row">
													<div class="col-sm-8 col-xs-6">
													    <!-- BEGIN: img -->
														<div class="img-thumb">
															<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>
																<div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div>
															</a>
														</div>
														<!-- END: img -->
													</div>
													<div class="col-sm-16 col-xs-18 no-padding-left">
														<div class="post-content">
															<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>
																<h3>{ROW.title}</h3>
															</a>
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
									<!-- END: group -->
									<!-- BEGIN: latest -->
									<div id="latest-news" class="tab-pane fade">
										<div class="fbt-vc-inner">
										<!-- BEGIN: loop -->
											<div class="post-item small">
												<div class="row">
													<div class="col-sm-8 col-xs-6">
													   <!-- BEGIN: img -->
														<div class="img-thumb">
															<a href="{NEWS.link}" title="{NEWS.title}" {NEWS.target_blank}>
																<div class="fbt-resize" style="background-image: url('{NEWS.thumb}')"></div>
															</a>
														</div>
														<!-- END: img -->
													</div>
													<div class="col-sm-16 col-xs-18 no-padding-left">
														<div class="post-content">
															<a href="{NEWS.link}" title="{NEWS.title}" {NEWS.target_blank}>
																<h3>{NEWS.title}</h3>
															</a>
															<div class="post-info clearfix">
																<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{NEWS.publtime}</span>
																<span>-</span>
																<span class="rating">
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star"></i>
																	<i class="fa fa-star-half-o"></i>
																	<i class="fa fa-star-o"></i>
																</span>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- END: loop -->
										</div>
									</div>
									<!-- END: latest -->
								</div>
							</div>
							

<!-- END: main -->