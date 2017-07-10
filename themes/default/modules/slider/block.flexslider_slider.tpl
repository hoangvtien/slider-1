<!-- BEGIN: main -->
<div class="flexslider gdl-slider">
	<ul class="slides">
		<!-- BEGIN: loop -->
		<li>
			<img src="{ROW.image}" alt="{ROW.image_alt}" />
			<!-- BEGIN: caption -->
			<div class="flex-caption">
				<!-- BEGIN: title -->
				<h2 class="gdl-slider-title"><span>{ROW.title}</span></h2>
				<div class="clear"></div>
				<!-- END: title -->
				<!-- BEGIN: description -->
				<div class="gdl-slider-caption">
					<div class="gdl-slider-inner-caption">{ROW.description}</div>
				</div>
				<div class="clear"></div>
				<!-- END: description -->
			</div>
			<!-- END: caption -->
		</li>
		<!-- END: loop -->
	</ul>
</div>
<!-- END: main -->