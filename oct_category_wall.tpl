<!-- Отключено до лучших времен
<div class="block_newrec container-fluid">
	<div class="col-md-6 col-sm-12 novinki">
		<div id="text_block">
			<h2><? echo $text_novinki; ?></h2>
			<h3><? echo $text_company; ?></h3>
				<button class="button-more" type="button" data-effect="mfp-zoom-out" onclick="window.location='https://www.takel.ua';">
					<span><?php echo $text_more; ?></span>
				</button>
		</div>
	</div>
	<div class="col-md-6 col-sm-12 recommend">
		<div id="text_block">
			<h2><? echo $text_recommend; ?></h2>
			<h3><? echo $text_company; ?></h3>
				<button class="button-more" type="button" data-effect="mfp-zoom-out" onclick="window.location='https://www.takel.ua';">
					<span><?php echo $text_more; ?></span>
				</button>	
		</div>
	</div>
</div>-->
<div class="row main-advantage-row cat-wall-row">
	<!--<div class="oct-carousel-header"><?php echo $heading_title; ?></div>-->
  <?php foreach ($categories as $category) { ?>
  	<div class="wall col-lg-3 col-md-3 col-sm-4 col-xs-6">
  		<div class="main-advantage-item oct-category-item-box">
  			<?php if ($category['thumb']) { ?>
  			<div class="main-advantage-item-icon oct-category-item-icon col-md-12">
  				<a href="<?php echo $category['href']; ?>"><img class="img-responsive" src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" /></a>
  			</div>
		    <?php } ?>
		    <div class="main-advantage-item-text oct-category-item-text col-md-12 col-sm-12 col-xs-12">
		    		<a href="<?php echo $category['href']; ?>" class="oct-category-item-header"><?php echo $category['name']; ?></a>
		    		<?php if ($category['children']) { ?>
		    		<ul>
			      <?php $countstop = 1; foreach ($category['children'] as $child) { $countstop++; ?>
			        <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
			        <?php if ($countstop > $limit) { ?>
			        <li class="oct-category-see-more"><a href="<?php echo $category['href']; ?>" ><?php echo $text_see_more; ?></a></li>
			        <?php break; } ?>
			      <?php } ?>
			    </ul>
			    <?php } ?>
		    </div>
		</div>
	</div>
  <?php } ?>
</div>
