<!-- BEGIN: main -->
				<div class="gallery bgallery clearfix">
					<div class="gallery-img clearfix">
					<div class="title-wrapper border-3">
											<h2><span class="color-3">{BLOCK_TITLE}</span></h2>
										</div>
					<!-- BEGIN: loop -->
						<div class="col-md-6 col-xs-12 padding-1">
							<div class="post-item clearfix">
								<div class="img-thumb">
								<!-- BEGIN: img -->
									<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
									<!-- END: img -->
									<div class="img-credits">
										<a class="post-category" href="{ROW.linkcat}">{ROW.titlecat}</a>
										<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_clean}</h3></a>
										<div class="post-info clearfix">
											<span><em class="fa fa-eye">&nbsp;</em>{ROW.hitstotal}</span>
											<span>-</span>
											<span><em class="fa fa-calendar" aria-hidden="true">&nbsp;</em>{ROW.publtime}</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- END: loop -->
					</div>
				</div>
<!-- END: main -->