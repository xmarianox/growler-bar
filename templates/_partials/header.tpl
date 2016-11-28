{*{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}*}

{block name='header_logo'}
  <a class="logo" href="{$urls.base_url}" title="{$shop.name}">
    <i class="ic ic_growler_logo"></i>
  </a>
{/block}

{block name='header_nav'}
  <div class="header-nav">
    {hook h='displayNav'}
  
    <button class="btn_lines x" type="button" role="button">
      <span class="lines"></span>
    </button>  
  </div>
{/block}

{block name='header_top'}
  <div class="header-top">
    {hook h='displayTop'}
  </div>

  {hook h='displayNavFullWidth'}

{/block}
