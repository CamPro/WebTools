<!-- BEGIN: main -->
								<div class="biography-carousel clearfix">
											<div class="title-wrapper border-7">
												<h2><span class="color-7"><a title style="color: #fff; ="{TITLE}" href="{LINK}">{TITLE}</a></span></h2>
											</div>
											<div class="carousel-content-box owl-wrapper clearfix">
												<div class="owl-carousel" data-num="1">
												<!-- BEGIN: loop -->	
													<div class="item fbt-hr-crs">
														<div class="post-item clearfix">
															<div class="img-thumb">
																<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
																<div class="img-credits">
																	<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_cut}</h3></a>
																	<div class="post-info clearfix">
																		<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{ROW.publtime}</span>
																	</div>
																	<div class="text-content">
																		<p>{ROW.hometext_cut}</p>
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