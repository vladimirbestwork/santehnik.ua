<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?php echo $og_url; ?>" />
  <?php if ($og_image) { ?>
  <meta property="og:image" content="<?php echo $og_image; ?>" />
  <?php } else { ?>
  <meta property="og:image" content="<?php echo $logo; ?>" />
  <?php } ?>
  <meta property="og:site_name" content="<?php echo $name; ?>" />
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>
</head>
<body class="<?php echo $class; ?>">

  <?php global $registry; $bw_module_groups = $registry->get('bw_module_groups'); if (!empty($bw_module_groups['bw_ht'])) { ?>
  <?php echo implode('', $bw_module_groups['bw_ht']); ?>
  <?php } ?>  

<nav id="top">
  <div class="container">
  <div class="row header">
  <?php echo $language; ?>
    <div class="col-xs-12 col-sm-3 col-xl-3">
      <div id="logo">
                <?php if ($logo) { ?>
                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive h30" /></a>
                <?php } else { ?>
                <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                <?php } ?>
      </div>
    </div>
    <div class="col-xs-12 col-sm-4 col-xl-4">
      <!-- <div class="pull-left pt6 btn-link"><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span><?php echo $telephone; ?></span></div> -->
              <div class="phones_like_sel-1 to_open">
                    <ul class="open">
                        <li class="selected" id="phone_1">
                            <div class="nom"> <p class="city">Kyivstar</p>
                            <p class="num">096-71-32-652</p></div>
                            <div class="nom"> <p class="city">Life</p>
                            <p class="num">093-71-32-652</p></div>
                         </li>
                         <li class="city">
                          <div><?php echo $text_config_open; ?></div>
                         </li>
                    </ul>
                </div>
      </div>
                <div class="col-xs-12 col-sm-5 col-xl-5">
        
        <div class="pull-right">
          <?php echo $cart; ?>
        </div>
      <div class="pull-right">
      <div class="btn-group btn-block">
          <span class="btn-1">
          <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></span>
          </div>
      </div>
            <div class="pull-right">
      <div class="btn-group btn-block">
          <span class="btn-2">
            <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><?php echo $text_wishlist; ?></a>
        </span>
          </div>
      </div>

<!-- 
      <div id="top-links" class="nav pull-right">
        <?php echo $currency; ?>
        <?php echo $language; ?>

        
        </div> -->
        </div>
    </div>
  </div>
  </div>
  </div>
</nav>
  <header>
    <div class="container">
      <div class="row">
          <div class="col-sm-12 col-md-12 col-lg-12 search-feal"><?php echo $search; ?></div>
      </div>
    </div>
  </header>
  <?php if ($categories) { ?>
  <div class="container">
    <div class="row">


      <?php echo $revmenu; ?>


<?php } ?>
<script type="text/javascript"><!--
function autocol_cats(cat_id, cat_col) {
  $('.ul_block'+cat_id).autocolumnlist({  
    columns: cat_col,
    min: 1
  });
}
<?php foreach ($categories as $category) { ?> 
  autocol_cats(<?php echo $category['category_id']; ?>, <?php echo $category['column']; ?>);
<?php } ?>    
//--></script>