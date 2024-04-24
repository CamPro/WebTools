<!-- BEGIN: main -->
							<div class="widget popular_posts clearfix">
								<div class="title-wrapper border-3">
									<h2><span class="color-3">{BLOCK_TITLE}</span></h2>
								</div>
								<div class="fbt-vc-inner">
									<div class="row">
									<!-- BEGIN: loop -->
										<div class="col-xs-12 grid-margin padding-5">
											<div class="post-item small">
												<div class="img-thumb">
												<!-- BEGIN: img -->
													<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>
														<div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div>
													</a>
												<!-- END: img -->
												</div>
												<div class="post-content">
													<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>
														<h3>{ROW.title_clean}</h3>
													</a>
													<div class="post-info clearfix">
														<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{ROW.publtime}</span>
													</div>
												</div>
											</div>
										</div>
                                   <!-- END: loop -->
									</div>
								</div>
							</div>
<!-- END: main -->