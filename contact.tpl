<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <div class="col-sm-12  content-row">
    <div class="breadcrumb-box">
      	 <ul class="breadcrumb" itemscope itemtype="https://schema.org/BreadcrumbList">
		    <?php foreach ($breadcrumbs as $count => $breadcrumb) { ?>
			    <?php if($count == 0) { ?>
				  <li>
					<a href="<?php echo $breadcrumb['href']; ?>">
					  <?php echo $breadcrumb['text']; ?>
					</a>
				  </li>
		        <?php } elseif($count+1<count($breadcrumbs)) { ?>
		        	<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
					<a itemscope itemtype="https://schema.org/Thing" itemprop="item" href="<?php echo $breadcrumb['href']; ?>" itemid="<?php echo $breadcrumb['href']; ?>" title="<?php echo $breadcrumb['text']; ?>">
					  <span itemprop="name"><?php echo $breadcrumb['text']; ?></span>
					</a>
					<meta itemprop="position" content="<?php echo $count; ?>" />
					</li>
		        <?php } else { ?>
		        	<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
		        	<span itemscope itemtype="https://schema.org/Thing" itemprop="item" itemid="<?php echo $breadcrumb['href']; ?>">
					  <span itemprop="name"><?php echo $breadcrumb['text']; ?></span>
					</span>
					<meta itemprop="position" content="<?php echo $count; ?>" />
		        	</li>
		        <?php } ?>
			<?php } ?>
	  </ul>
    </div>    
    <div class="row">
      <div class="col-sm-12">
        <h1 class="cat-header"><?php echo $heading_title; ?></h1>
      </div>
    </div>
<!-- Create block Contacts data -->
    <div class="row">
        <div class="col-sm-4 col-xs-12 contacts-data map-address">
            <div class="row">
                <div class="icon-contact">
                    <i class="fas fa-map-marked"></i>
                </div>
                <div class="text-address">
                    <p><?php echo $text_city; ?></p>
                    <p><?php echo $text_street; ?></p>
                    <p></p>
                </div>
                <div class="text-bottom">
                    <!--<a><?php echo $text_show_map; ?></a>-->
                    <button id="showContent" style="display: block;"><?php echo $text_show_map; ?></button>
                    <button id="hideContent" style="display: none;"><?php echo $text_hide_map; ?></button>

                </div>
            </div>
        </div>
        <div class="col-sm-4 col-xs-12 contacts-data phone-number">
            <div class="icon-contact">
                <i class="far fa-address-book"></i>
            </div>
            <div class="text-address">
                <li><a href="tel:<?php echo $text_phone_1; ?>"><?php echo $text_phone_1; ?></a></li>
                <li><a href="tel:<?php echo $text_phone_2; ?>"><?php echo $text_phone_2; ?></a></li>
                <li><a href="tel:<?php echo $text_phone_3; ?>"><?php echo $text_phone_3; ?></a></li>
            </div>
            <div class="text-bottom">
                <!--<a><?php echo $text_call_site; ?></a>-->
            </div>
        </div>
        <div class="col-sm-4 col-xs-12 contacts-data letter-mail">
            <div class="icon-contact">
                <i class="fas fa-at"></i>
            </div>
            <div class="text-address">
                <li><a href="mailto:<?php echo $text_mail_contact; ?>"><?php echo $text_mail_contact; ?></a></li>
                <!--<li><p></p></li>
                <li><p></p></li>-->
            </div>
            <div class="text-bottom">
                <!--<a><?php echo $text_e_mail; ?></a>-->
            </div>
        </div>
    </div>
    <div class="row">
        <div id="content" style="display:none; margin-left: 0px;">
             <?php if ($oct_techstore_cont_contactmap != '') { ?>
                <div class="map-box">
                    <?php echo html_entity_decode($oct_techstore_cont_contactmap, ENT_QUOTES, 'UTF-8'); ?>
                </div>
             <?php } ?>
        </div>
    </div> 
<!-- Create title Feedback -->
    <div class="row">
      <div class="col-sm-12">
          <h1 class="cat-header"><?php echo $text_feedback; ?></h1>
      </div>
    </div>
<!-- Feedback-->
    <div class="row">
      <?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>">
        <div class="row">
          <div class="col-sm-6 contact-form-box">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
              <fieldset>
                <div class="form-group required">
                  <label class="col-sm-3 control-label" for="input-name"><?php echo $entry_name; ?></label>
                  <div class="col-sm-9">
                    <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                    <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-3 control-label" for="input-email"><?php echo $entry_email; ?></label>
                  <div class="col-sm-9">
                    <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                    <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <div class="form-group required">
                  <label class="col-sm-3 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                  <div class="col-sm-9">
                    <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                    <?php if ($error_enquiry) { ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <?php if ($text_terms) { ?>
                <div class="form-group required">
                  <label class="col-sm-3"></label>
                  <div class="col-sm-9">
                    <?php echo $text_terms; ?> <input type="checkbox" name="terms" value="1" style="width: auto;" <?php if ($terms) { ?>checked="checked"<?php } ?>/>
                    <?php if ($error_terms) { ?>
                    <div class="text-danger"><?php echo $error_terms; ?></div>
                    <?php } ?>
                  </div>
                </div>
                <?php } ?>
                <div class="col-sm-offset-3 col-sm-9 captcha-box">
                  <?php echo $captcha; ?>
                </div>
                <div class="col-sm-offset-3 col-sm-9 contact-button-box">
                  <input class="oct-button" type="submit" value="<?php echo $button_submit; ?>" />
                </div>
              </fieldset>
            </form>
          </div>
          <div class="col-sm-6">
            <?php if ($oct_techstore_cont_contacthtml != '') { ?><div class="contacthtml-box"><?php echo $oct_techstore_cont_contacthtml; ?></div><?php } ?>
          </div>
        </div>
      </div>
      <?php echo $column_right; ?>
    </div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<script>
    let content = document.getElementById("content")
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
<?php echo $footer; ?>