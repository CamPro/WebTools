<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
	<section id="fp-container" class="clearfix">
				<div class="feuture-posts">
					<div class="col-sm-12 col-md-12 big-section">
						[HOME1]
					</div>
					<div class="col-sm-12 col-md-12 small-section">
						[HOME2]
					</div>
				</div>
	</section>
	<section id="main-content" class="clearfix">
		<div class="container2">
			<div class="row">
				<div class="outer-wrapper clearfix">
					<div class="fbt-col-lg-9 col-md-16 col-sm-12 main-wrapper clearfix">
						<div class="">
						[TOP]
                     {MODULE_CONTENT}
							<div class="fbt-col-lg-9">
								 [BOTTOM]
								<div class="row">
									<div class="col-md-10">
										[BOTLEFT]
									</div>
									<div class="col-md-14 fbt-vc-inner nude clearfix">
										[BOTRIGHT]
									</div>
								</div>
						  </div>
						</div>
					</div>
					
					<!-- Sidebar Start -->
					<div class="fbt-col-lg-3 col-md-8 col-sm-12 sidebar">
						
							[RIGHT]
						</div>
					</div>
				</div>

				
				[FOOTER]
			</div>
		</div>		
	</section>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->