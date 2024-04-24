<!-- BEGIN: main -->
								<div class="title-wrapper border-8">
											<h2><span class="color-8"><a title style="color: #fff; ="{TITLE}" href="{LINK}">{TITLE}</a></span></h2>
										</div>
										<!-- BEGIN: loop -->	
										<div class="post-item small">
											<div class="row">
												<div class="col-sm-10 col-xs-8">
													<div class="img-thumb">
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
													</div>
												</div>
												<div class="col-sm-14 col-xs-16 no-padding-left">
													<div class="post-content">
														<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_cut}</h3></a>
														<div class="post-info clearfix">
															<span><em class="fa fa-eye">&nbsp;</em>{ROW.hitstotal}</span>
															<span>-</span>
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
<!-- END: main -->