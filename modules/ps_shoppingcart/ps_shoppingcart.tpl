<div class="blockcart cart-preview" data-refresh-url="{$refresh_url}">
  <div class="header">
    <a rel="nofollow" href="{$cart_url}">
      <span class="ic ic_cart">{l s='Cart' d='Shop.Theme.Actions'}</span>
      {if $cart.products_count > 0} <span class="badge">{$cart.products_count}</span> {/if}
    </a>
  </div>
</div>
