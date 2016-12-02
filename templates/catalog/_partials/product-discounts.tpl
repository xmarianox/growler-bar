<section class="product-discounts">
  {if $product.quantity_discounts}
    <section class="product-discounts">
      <h3>{l s='Volume discounts' d='Shop.Theme.Catalog'}</h3>
      <table class="table-product-discounts">
        <thead>
        <tr>
          <th>{l s='Quantity' d='Shop.Theme.Checkout'}</th>
          <th>{$configuration.quantity_discount.label}</th>
          <th>{l s='You Save' d='Shop.Theme.Checkout'}</th>
        </tr>
        </thead>
        <tbody>
        {foreach from=$product.quantity_discounts item='quantity_discount' name='quantity_discounts'}
          <tr
            data-discount-type="{$quantity_discount.reduction_type}"
            data-discount="{$quantity_discount.real_value}"
            data-discount-quantity="{$quantity_discount.quantity}"
          >
            <td>{$quantity_discount.quantity}</td>
            <td>{$quantity_discount.discount}</td>
            <td>
              {l s='Up to %amount_saved%' sprintf=['%amount_saved%' => $quantity_discount.save] d='Shop.Theme.Checkout'}
            </td>
          </tr>
        {/foreach}
        </tbody>
      </table>
    </section>
  {/if}
</section>
