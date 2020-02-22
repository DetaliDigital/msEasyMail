{extends 'tpl.msEasyMail'}

{block 'info'}

<h5>{$address.receiver},</h5>
<p>{$_modx->config.em_text_new_lead_user}</p>

<h5>Доставим его по адресу:</h5>
<p>
  {foreach $address as $key => $value}
    {if $value? && $key in list $field}
        {set $system_fields[$key] = $value}
    {/if}
  {/foreach}
  {$system_fields | join : ', '}</p>

<h5>Условия доставки:</h5>
<p>{$_modx->config.em_text_time_of_delivery}</p>

{/block}
