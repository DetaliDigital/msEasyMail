{extends 'tpl.msEasyMail'}

{block 'info'}

<h5>{$address.receiver},</h5>
<p>Ваш заказ <b># {$num}</b> оплачен.</p>

<h6>Доставим его по адресу:</h6>
<p>{foreach $address as $key => $value}
  {if $value? && $key not in ['id','user_id','createdon','updatedon','email','properties,receiver','receiver']}
  {$value}&nbsp;
  {/if}
  {/foreach}</p>

<h6>Время доставки:</h6>
<p>{$_modx->config.em_text_time_of_delivery}</p>

{/block}
