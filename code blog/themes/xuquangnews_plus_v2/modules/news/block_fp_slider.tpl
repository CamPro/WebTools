<!-- BEGIN: main -->
<div class='fbt-slide-nav'>
							<span class='fbt-slide-pager'></span>
						</div>
						<div class="fp-slides"  style="z-index:0">
						<!-- BEGIN: loop -->
							<div class="img-thumb">
							    <!-- BEGIN: img -->
								<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><div class="fbt-resize" style="background-image: url('{ROW.thumb}')"></div></a>
								<!-- END: img -->
								<div class="img-credits">
									<a class="post-category" href="{ROW.linkcat}">{ROW.titlecat}</a>
									<a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}><h3>{ROW.title_clean}</h3></a>
									<div class="post-info">
										<span>{ROW.publtime}</span>
										<span>{ROW.hometext_clean}</span>
									</div>
								</div>
							</div>
							<!-- END: loop -->
						</div>
						<nav class="nav-growpop">
							<div>
								<a class="fp-prev" href="#fp-prev"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i></a>
								<a class="fp-next" href="#fp-next"><i class="fa fa-chevron-circle-right" aria-hidden="true"></i></a>
							</div>
						</nav>
<!-- END: main -->