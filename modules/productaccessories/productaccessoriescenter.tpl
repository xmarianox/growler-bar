<!-- MODULE Accessories -->
{if isset($accessories) AND $accessories}
	<style>
	ul#idTab4
	{ldelim}
		display: none;
	{rdelim}
	</style>
	<script type="text/javascript">
		$(document).ready(function () {ldelim}
			$("#more_info_tabs a").each(function() {ldelim}
			if ($(this).attr('href') == "#idTab4")
				$(this).css('display','none');
			{rdelim});
			
			$('.accessories-block').each(function() {ldelim}
				$(this).parent().hide();
			{rdelim});
		{rdelim});
	</script>
	<div id="pa_container" class="block_content pa_pf_height">
		<h3 class="page-product-heading">{l s='ACCESORIOS RECOMENDADOS' mod='productaccessories'}</h3>
		<div class="pa_pf_product_container pa_pfp_height">
			
<div class="container-slider cargando">
    	<div class="flexprod flexslider carousel">
            <ul class="slides">

			{foreach from=$accessories item=accessory name=accessories_list}
			<li>
				<div class="ajax_block_product pa_pf_block">
				{assign var='accessoryLink' value=$link->getProductLink($accessory.id_product, $accessory.link_rewrite, $accessory.category)}
					<div class="pa_pf_image ps_image_{$pa_image}">
						<a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{$accessory.legend|escape:'htmlall':'UTF-8'}" class="product_image">
						<img src="{if $pa_old_img}{$img_prod_dir}{$accessory.id_image}-{$pa_image}.jpg{else}{$link->getImageLink($accessory.link_rewrite, $accessory.id_image, $pa_image)}{/if}" alt="{$accessory.legend|escape:'htmlall':'UTF-8'}" />
					
						</a>
					</div>
					<h5 class="align_center"><a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" target="_blank">{$accessory.name|truncate:20:'...'|escape:'htmlall':'UTF-8'}</a></h5>
					<div class="pa_pf_accessories_price box-info-product">
						<div class="price">{if !$priceDisplay}{displayWtPrice p=$accessory.price}{else}{displayWtPrice p=$accessory.price_tax_exc}{/if}</div>
						<div class="pa_pf_atc">
							{if $pa_ps_version >= 160}<div class="no-print">{/if}
							<a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" rel="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{l s='Comprar' mod='productaccessories'}">
								<button class="exclusive" style="display: initial;">
									{if $pa_ps_version >= 160}<span> {/if}{l s='Comprar' mod='productaccessories'} {if $pa_ps_version >= 160}</span> {/if}
								</button>
							</a>
							{if $pa_ps_version >= 160}</div>{/if}
						</div>
					</div>
				</div>
				{if $smarty.foreach.accessories_list.iteration % 5 == 0}
					
				{/if}
			</li>
			{/foreach}
			</ul>
		</div>
		</div>
		</div>
		<div style="height:10px;width:100%;clear:both">&nbsp;</div>
	</div>
{/if}
<!-- / MODULE Accessories -->
<script type="text/javascript">
(function() {

      // store the slider in a local variable
      var $window = $(window), bxSlider; // flexslider;

      // tiny helper function to add breakpoints
      function getGridSize() {
        return (window.innerWidth < 500) ? 1 :
               (window.innerWidth < 768) ? 3 : 5;
      }

      $window.load(function() {
        /**
		$('.flexprod').flexslider({
          animation: "slide",
          animationSpeed: 400,
          animationLoop: true,
          controlNav: false,
          itemWidth: 210,
          itemMargin: 0,
          pauseOnHover: true,
          minItems: getGridSize(), // use function to pull in initial value
          maxItems: getGridSize(), // use function to pull in initial value
          start: function(slider){
            $('.container-slider').removeClass('cargando');
            flexslider = slider;
          }
        });
		*/
		$('.flexprod .slides').bxSlider({
			slideWidth: 210,
			minSlides: 1,
			maxSlides: 5,
			slideMargin: 0,
			infiniteLoop: false
		});

      });

      // check grid size on resize event
      $window.resize(function() {
        var gridSize = getGridSize();
        // flexslider.vars.minItems = gridSize;
        // flexslider.vars.maxItems = gridSize;
		bxSlider.vars.minItems = gridSize;
        bxSlider.vars.maxItems = gridSize;
      });
    }());
</script>