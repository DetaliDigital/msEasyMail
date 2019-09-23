{extends 'tpl.msEasyMail'}

{block 'info'}

<h5>{$address.receiver},</h5>
<p>{$_modx->config.em_text_lead}</p>

<h6>Доставим его по адресу:</h6>
<p>
  {foreach $address as $key => $value last=$last}
  {if $value? && $key in list $field}
  {$value}
  {/if}
  {/foreach}</p>

<h6>Время доставки:</h6>
<p>{$_modx->config.em_text_time_of_delivery}</p>

{/block}
