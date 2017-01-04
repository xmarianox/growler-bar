{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
    {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
		<h1 class="page-subheading">PRODUCTOS</h1>
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
			<li>Ordenar <i class="icon-chevron-right right"></i></li>
			{$HOOK_HOME_TAB}
		</ul>
	{/if}
	<div class="tab-content">{$HOOK_HOME_TAB_CONTENT}</div>

	<div id="home-page-brand-list">
		<ul>
			{*
			<li><i class="icon-palermo"></i></li>
			<li><i class="icon-bieckert"></i></li>
			<li><i class="icon-santafe"></i></li>
			<li><i class="icon-salta"></i></li>
			<li><i class="icon-cordoba"></i></li>
			<li><i class="icon-lavictoria"></i></li>
			<li><i class="icon-elabuelo"></i></li>
			*}
			<li><i class="icon-heineken"></i></li>
			<li><i class="icon-amstel"></i></li>
			<li><i class="icon-kunstmann"></i></li>
			<li><i class="icon-sol"></i></li>
			<li><i class="icon-imperial"></i></li>
			<li><i class="icon-budweiser"></i></li>
			<li><i class="icon-schneider"></i></li>
			
			<li><i class="icon-1888"></i></li>
			<li><i class="icon-lacelia"></i></li>
			<li><i class="icon-triple"></i></li>
			<li><i class="icon-mistral"></i></li>
			<li><i class="icon-redbull"></i></li>
			<li><i class="icon-real"></i></li>
		</ul>
	</div>
{/if}
{if isset($HOOK_HOME) && $HOOK_HOME|trim}
	<div class="clearfix">{$HOOK_HOME}</div>
{/if}