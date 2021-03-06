<footer>
	<?php if (isset($oct_popup_call_phone_data['status']) && $oct_popup_call_phone_data['status'] == 1) { ?>
		<a class="field-tip" onclick="get_oct_popup_call_phone();" id="uptocall-mini"><div class="uptocall-mini-phone"><i class="fas fa-phone-volume" aria-hidden="true"></i></div><span class="tip-content"><?php echo $popup_call_phone_text['call_back']; ?></span></a>
	<?php } ?>
  <div class="container footer-mobi">
		<?php if ($garanted_text) { ?>
			<div class="row second-row" style="display: none">
				<div class="footer-advantages-box">
					<?php foreach ($garanted_text as $garanted) { ?>
						<div class="col-sm-3 col-xs-6 footer-advantages">
							<a href="<?php echo $garanted['link']; ?>" <?php if ($garanted['popup'] == 'on' && $garanted['link'] && $garanted['link'] != '#') { ?>id="open-popup-foot-garanted-<?php echo $garanted['id']; ?>"<?php } ?>>
								<?php if ($garanted['icon']) { ?>
	                <i class="<?php echo $garanted['icon']; ?>" aria-hidden="true"></i>
	              <?php } ?>
							
							<div class="h5"><?php echo $garanted['name']; ?></div></a>
							<?php if ($garanted['text']) { ?>
								<span><?php echo $garanted['text']; ?></span>
							<?php } ?>
							<?php if ($garanted['popup'] == 'on' && $garanted['link'] && $garanted['link'] != '#') { ?>
	            <script>
	              $(document).delegate('#open-popup-foot-garanted-<?php echo $garanted['id']; ?>', 'click', function(e) {
	                e.preventDefault();

	                var element = this;

	                $.ajax({
	                  url: $(element).attr('href'),
	                  type: 'get',
	                  dataType: 'html',
	                  success: function(data) {
	                  	$.magnificPopup.open({
					              tLoading: '<img src="catalog/view/theme/oct_techstore/image/ring-alt.svg" />',
					              items: {
					                src:  '<div id="service-popup" class="white-popup mfp-with-anim narrow-popup">'+
																	'<h2 class="popup-header">' + $(element).next().text() + '</h2>'+
																	'<div class="popup-text service-popup-text">'+
																		'<p>' + data + '</p>'+
																	'</div>'+
																'</div>',
	                    		type: 'inline'
					              },
					              showCloseBtn: true,
					              midClick: true, 
								    		removalDelay: 200
					            });
	                  }
	                });
	              });
	            </script>
	            <?php } ?>
						</div>
					<?php } ?>
				</div>
			</div>
			<hr>
    <?php } ?>
			<?php if ($oct_techstore_data['foot_show_soclinks'] == 'on') { ?>
			<div class="row first-row">
				<?php echo $oct_popup_subscribe; ?>
				<div class="col-md-3 hidden-sm hidden-xs text-right">
					<div class="h5"><?php echo $text_contact_us; ?></div>
				</div>
				<div class="col-md-2 col-sm-5 text-left socials-box">
					<?php if ($oct_techstore_data['ps_facebook_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_facebook_id']; ?>" title="Facebook" target="_blank"><i class="fa fa-facebook-square" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_instagram']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_instagram']; ?>" title="Instagram" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_vk_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_vk_id']; ?>" title="Vkonakte" target="_blank"><i class="fa fa-vk" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_gplus_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_gplus_id']; ?>" title="Google Plus" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_odnoklass_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_odnoklass_id']; ?>" title="Odnoklassniki" target="_blank"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_twitter_username']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_twitter_username']; ?>" title="Twitter" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_vimeo_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_vimeo_id']; ?>" title="Vimeo" target="_blank"><i class="fa fa-vimeo" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_pinterest_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_pinterest_id']; ?>" title="Pinterest" target="_blank"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_flick_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_flick_id']; ?>" title="Flickr" target="_blank"><i class="fa fa-flickr" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ($oct_techstore_data['ps_youtube_id']) { ?>
					<a rel="nofollow" href="<?php echo $oct_techstore_data['ps_youtube_id']; ?>" title="Youtube" target="_blank"><i class="fa fa-youtube" aria-hidden="true"></i></a>
					<?php } ?>
				</div>
			</div>
			<hr>
			<?php } ?>
		  <?php if ($oct_techstore_data['foot_show_contact_link'] == 'on') { ?>	
		  <div class="row third-row" style="/*height: 180px;*/">		    	    		    
		    <div class="col-xs-3 col-sm-3 footer-contacts">
				<div class="h5"><i class="fa fa-phone"> </i><?php echo $text_contact_foot; ?> <a class="f-acc-toggle"></a></div>
				<ul class="footer-contacts-ul">
					<?php if ($oct_techstore_cont_adress) { ?>
					<li style="display: none"><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $oct_techstore_cont_adress; ?></li>
					<?php } ?>
					<?php if ($oct_techstore_cont_phones) { ?>
						<?php foreach($oct_techstore_cont_phones as $element) { ?>
							<li><a href="#" class="phoneclick" onclick="window.location.href='tel:+<?php echo preg_replace('/\D/', '', $element); ?>';return false;"><i class="fa fa-phone" aria-hidden="true"></i><?php echo $element; ?></a></li>
						<?php } ?>
					<?php } ?>
					<?php if ($oct_techstore_cont_email) { ?>
					<li><a href="mailto:<?php echo $oct_techstore_cont_email; ?>"><i class="fa fa-envelope" aria-hidden="true"></i> <?php echo $oct_techstore_cont_email; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_cont_skype) { ?>
					<li style="display: none"><a href="skype:<?php echo $oct_techstore_cont_skype; ?>"><i class="fa fa-skype" aria-hidden="true"></i> <?php echo $oct_techstore_cont_skype; ?></a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="col-xs-3 col-sm-3 footer-shedule">
				<div class="h5"><i class="fa fa-clock-o"> </i><?php echo $text_shedule; ?> <a class="f-acc-toggle"></a></div>
				<ul class="footer-contacts-ul">
					<?php if ($oct_techstore_cont_clock) { ?>
						<?php foreach ($oct_techstore_cont_clock as $clock) { ?>
				        	<li><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo $clock; ?></li>
				        	<?php } ?>
					<?php } ?>
					<?php if ((isset($oct_techstore_data['ps_whatsapp_id']) && strlen($oct_techstore_data['ps_whatsapp_id']) > 1) or (isset($oct_techstore_data['ps_telegram_id']) && strlen($oct_techstore_data['ps_telegram_id']) > 1) or (isset($oct_techstore_data['ps_viber_id']) && strlen($oct_techstore_data['ps_viber_id']) > 1)) { ?>
					<li class="oct-messengers">
					<?php } ?>
					<?php if(isset($oct_techstore_data['ps_whatsapp_id']) && strlen($oct_techstore_data['ps_whatsapp_id']) > 1) { ?>
						<a class="oct-messengers-whatsapp" rel="nofollow" href="https://api.whatsapp.com/send?phone=<?php echo $oct_techstore_data['ps_whatsapp_id']; ?>" title="Whatsapp" target="_blank"><i class="fa fa-whatsapp" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if(isset($oct_techstore_data['ps_telegram_id']) && strlen($oct_techstore_data['ps_telegram_id']) > 1) { ?>
						<a class="oct-messengers-telegram" rel="nofollow" href="http://t.me/<?php echo $oct_techstore_data['ps_telegram_id']; ?>" title="Telegram" target="_blank"><i class="fa fa-telegram" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if(isset($oct_techstore_data['ps_viber_id']) && strlen($oct_techstore_data['ps_viber_id']) > 1) { ?>
						<a rel="nofollow" class="oct-messengers-viber viber-mobile" href="viber://add?number=<?php echo $oct_techstore_data['ps_viber_id']; ?>" title="Viber" target="_blank"><i class="fa fa-viber" aria-hidden="true"></i></a>
						<a rel="nofollow" class="oct-messengers-viber viber-desktop" href="viber://chat?number=<?php echo $oct_techstore_data['ps_viber_id']; ?>" title="Viber" target="_blank"><i class="fa fa-viber" aria-hidden="true"></i></a>
					<?php } ?>
					<?php if ((isset($oct_techstore_data['ps_whatsapp_id']) && strlen($oct_techstore_data['ps_whatsapp_id']) > 1) or (isset($oct_techstore_data['ps_telegram_id']) && strlen($oct_techstore_data['ps_telegram_id']) > 1) or (isset($oct_techstore_data['ps_viber_id']) && strlen($oct_techstore_data['ps_viber_id']) > 1)) { ?>
					</li>
					<?php } ?>
				</ul>
			</div>
			<div class="col-sm-3">
				<div class="off" style="display: none">
				  <div class="h5"><?php echo $text_account; ?> <a class="f-acc-toggle"></a></div>
				  <ul class="list-unstyled">
					<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
					<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
					<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				  </ul>
				</div>
		    </div>
			<?php if ($oct_techstore_footer_categories) { ?>
		    <div class="col-sm-3">							
				<div class="off" style="display: none">
				  <div class="h5"><?php echo $text_categories; ?> <a class="f-acc-toggle"></a></div>
				  <ul class="list-unstyled">
					<?php foreach ($oct_techstore_footer_categories as $category) { ?>
							  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
					<?php } ?>
				  </ul>
				</div>
		    </div>				
		    <?php } ?>
			<div class="col-sm-3">
				<div class="col-md-3 col-lg-3 ts-logo-box hidden-sm hidden-xs">
					<div id="logo">
					  <?php if ($logo) { ?>
						  <?php if($_SERVER['REQUEST_URI'] == "/index.php?route=common/home" OR $_SERVER['REQUEST_URI'] == "/") { ?>
							<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-footer" style="width: 180px; padding-top: 10px;"/>
						  <?php } else { ?>
							<a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-footer" /></a>
						  <?php } ?>
					  <?php } else { ?>
						<h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
					  <?php } ?>
					</div>
				</div>
				<div class="off" style="display: none">
				  <div class="h5"><?php echo $text_information; ?> <a class="f-acc-toggle"></a></div>
				  <ul class="list-unstyled">
					<?php if ($oct_techstore_footer_informations) { ?>
						<?php foreach ($oct_techstore_footer_informations as $information) { ?>
						<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
						<?php } ?>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_contact_link'] == 'on') { ?>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_return_link'] == 'on') { ?>
					<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_sitemap_link'] == 'on') { ?>
					<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_manufacturer_link'] == 'on') { ?>
					<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_voucher_link'] == 'on') { ?>
					<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_affiliate_link'] == 'on') { ?>
					<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
					<?php } ?>
					<?php if ($oct_techstore_data['foot_show_block_special_link'] == 'on') { ?>
					<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
					<?php } ?>
				  </ul>
				</div>
		    </div>
		  </div>
	  <?php } ?>
	  <?php if ($oct_techstore_data['foot_show_copy_and_payment'] == 'off') { ?>
    <div class="row last-row" style="">
	    <div class="col-sm-4 col-xs-12" style="display: none">
  			<span class="oct-copy"><?php echo $oct_powered; ?></span>
  		</div>
	    <div class="col-sm-8 col-xs-12 text-right payment-box" style="display: none">
		    <span class="text-payments"><?php echo $text_payments; ?></span>
				<?php if ($oct_techstore_data['ps_sberbank'] == 'on') { ?>
				<span class="sberbank"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_privat'] == 'on') { ?>
				<span class="privat24"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_yamoney'] == 'on') { ?>
				<span class="yandex-money"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_webmoney'] == 'on') { ?>
				<span class="webmoney"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_visa'] == 'on') { ?>
				<span class="visa"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_qiwi'] == 'on') { ?>
				<span class="qiwi"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_skrill'] == 'on') { ?>
				<span class="skrill"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_interkassa'] == 'on') { ?>
				<span class="interkassa"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_liqpay'] == 'on') { ?>
				<span class="liqpay"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_paypal'] == 'on') { ?>
				<span class="paypal"></span>
				<?php } ?>
				<?php if ($oct_techstore_data['ps_robokassa'] == 'on') { ?>
				<span class="robokassa"></span>
				<?php } ?>
				<?php echo (isset($oct_techstore_data['ps_mastercard']) && $oct_techstore_data['ps_mastercard'] == 'on') ? '<span class="mastercard"></span>' : ''; ?>
				<?php echo (isset($oct_techstore_data['ps_maestro']) && $oct_techstore_data['ps_maestro'] == 'on') ? '<span class="maestro"></span>' : ''; ?>
				<?php if ($ps_additional_icons) { ?>
				<?php foreach ($ps_additional_icons as $ps_additional_icon) { ?>
				<span class="custom-payment"><img src="<?php echo $ps_additional_icon['image']; ?>" alt=""></span>
				<?php } ?>
				<?php } ?>
    	</div>
		</div>
		<?php } ?>
  </div>
</footer>
</div>
<?php if ($oct_page_bar) { ?>
<?php echo $oct_page_bar; ?>
<?php } ?>
<?php if (!$oct_page_bar) { ?>
<style>
footer {
	margin: 0 -15%!important;
	background-image: url(../image/catalog/silver-min1.jpg);
    background-repeat: no-repeat;
}
footer .footer-contacts ul li i {
    color: #434242 !important;
}
footer h5, footer .h5, footer a, footer a:visited, footer .third-row ul li {
    color: #434242 !important;
}
footer a:hover {
    color: #434242 !important;
}
.footer-contacts{
	margin-left: 15%;
}
.phoneclick a, .phoneclick a:visited {
    color: #434242 !important;
}
</style>
<?php } ?>
<?php if (isset($oct_popup_subscribe_form_data['status']) && $oct_popup_subscribe_form_data['status']) { ?>
<script>
$(function() {
  <?php $expire = $oct_popup_subscribe_form_data['expire'] ? $oct_popup_subscribe_form_data['expire'] : '1'; 
   $expire_ms = isset($oct_popup_subscribe_form_data['seconds']) ? $oct_popup_subscribe_form_data['seconds'] : '10000'; ?>
  <?php setcookie('oct_popup_subscribe', 1, time() + (60*60*24*$expire), "/"); ?>
  var expire_timer = "<?php echo $expire_ms; ?>";
  var expire_timeout = setTimeout(function(){
  get_oct_popup_subscribe();
  }, expire_timer);
  <?php if (isset($_COOKIE['oct_popup_subscribe'])) { ?>
  clearTimeout(expire_timeout);
  <?php } ?>
});
</script>
<?php } ?>
<?php if (isset($oct_popup_product_options_data['status']) && $oct_popup_product_options_data['status']) { ?>
<script>
$(document).ajaxSuccess(function(event, xhr, settings) {
  if (settings.url == "index.php?route=checkout/cart/add") {
    if (xhr.responseText.indexOf("error") > 0) {
      get_oct_popup_product_options(oct_get_product_id(settings.data));
    }
  }
});
</script>
<?php } ?>
<p id="back-top">
  <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i></a>
</p>
<div class="menu-bckgr"></div>
<script>
	let content = document.getElementById("content1")
	let show = document.getElementById("showContent")
	let hide = document.getElementById("hideContent")

	show.addEventListener("click", () => {
		content.style.display = "block";
		showContent.style.display = "none";
		hideContent.style.display = "block"
	})

	hide.addEventListener("click", () => {
		content.style.display = "none";
		showContent.style.display = "block";
		hideContent.style.display = "none"
	})
</script>
<script>
	let plug = document.getElementById("plug")
	let see = document.getElementById("seeContent")
	let stop = document.getElementById("stopContent")

	see.addEventListener("click", () => {
		plug.style.display = "block";
		seeContent.style.display = "none";
		stopContent.style.display = "block"
	})

	stop.addEventListener("click", () => {
		plug.style.display = "none";
		seeContent.style.display = "block";
		stopContent.style.display = "none"
	})
</script>
</body>
</html>