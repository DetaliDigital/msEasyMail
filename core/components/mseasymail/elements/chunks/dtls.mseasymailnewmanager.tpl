{extends 'tpl.msEasyMail'}

{block 'info'}

<h5><strong>Коллеги,</strong></h5>

<p>
{$_modx->config.em_text_new_lead_manager}
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
{if $user.email ?}
<li><strong>Почта:</strong>
  {$user.email}</li>
{/if}
{if $address.phone ?}
<li><strong>Телефон:</strong>
  {$address.phone}</li>
{/if}

{foreach $address as $key => $value}
  {if $value? && $key in list $field}
      {set $system_fields[$key] = $value}
  {/if}
{/foreach}

{if $system_fields ?}
<li><strong>Адрес:</strong>{$system_fields | join : ', '}</li>
{else}
<li><strong>Адрес:</strong>{'em_text_verifed_address' | option}</li>
{/if}

{if $delivery.name ?}
<li><strong>Доставка:</strong>
  {$delivery.name}</li>
{/if}
{if $delivery.name ?}
<li><strong>Оплата:</strong>
  {$payment.name}</li>
{/if}
</ul>
{if $address.comment?}
<h5>Комментарий:</h5>
<p>{$address.comment}</p>
{/if}
</p>
{/block}
