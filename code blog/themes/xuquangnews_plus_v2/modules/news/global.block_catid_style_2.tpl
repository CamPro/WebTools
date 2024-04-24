<!-- BEGIN: main -->
<div class="gallery">
									<div class="title-wrapper border-2">
										<h2><span class="color-2"><a title style="color: #fff; ="{TITLE}" href="{LINK}">{TITLE}</a></span></h2>
									</div>
									<div class="row">
										<div class="gallery-img">
										<!-- BEGIN: loop -->
											<div class="col-md-8 col-xs-12 padding-1">
												<div class="post-item clearfix">
													<div class="img-thumb">
													   <!-- BEGIN: img -->
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
														<!-- END: img -->
														<div class="img-credits">
															<h3>{ROW.title_cut}</h3>
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