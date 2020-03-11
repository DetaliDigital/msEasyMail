{extends 'tpl.msEasyMail'}

{block 'info'}

<h5><strong>Коллеги,</strong></h5>

<p>
{$_modx->config.em_text_pay_lead_manager}
</p>

{/block}

{block 'text_question'}
{/block}

{block 'text_thank'}
{/block}

{block 'manager_form'}
<h5>Данные клиента:</h5>

<ul>
{if $address.receiver ?}
<li><strong>Имя:</strong>
  {$address.receiver}</li>
{/if}
{if $address.phone ?}
<li><strong>Телефон:</strong>
  {$address.phone}</li>
{/if}
<li><strong>Адрес:</strong>
  {foreach $address as $key => $value last=$last}
  {if $value? && $key in list $field}
  {$value}
  {/if}
  {/foreach}</li>
</ul>
{if $address.comment?}
<h5>Комментарий:</h5>
<p>{$address.comment}</p>
{/if}
</p>
{/block}
