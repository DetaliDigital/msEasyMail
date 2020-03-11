{extends 'tpl.msEasyMail'}

{block 'info'}

<h5>{$address.receiver},</h5>
<p>{$_modx->config.em_text_new_lead_user}</p>

{if $_modx->config.em_disable_delivery == 0}
<h5>Доставим его по адресу:</h5>

  {foreach $address as $key => $value}
    {if $value? && $key in list $field}
        {set $system_fields[$key] = $value}
    {/if}
  {/foreach}
  {if $system_fields ?}
  <p>{$system_fields | join : ', '}</p>
  {else}
  <p>{'em_text_no_address' | option}</p>
  {/if}

<h5>Условия доставки:</h5>
<p>{$_modx->config.em_text_time_of_delivery}</p>
{/if}

{/block}
