
<div id="search_widget" class="search-widget" data-search-controller-url="{$search_controller_url}">
	<form method="get" action="{$search_controller_url}">
		<input type="hidden" name="controller" value="search">
		<input type="text" name="s" value="{$search_string}" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}">
		<button class="btn btn_search" type="submit"><i class="ic ic_search"></i></button>
	</form>
</div>
