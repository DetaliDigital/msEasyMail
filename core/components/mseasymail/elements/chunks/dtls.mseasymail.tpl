{var $site_url = ('site_url' | option) | preg_replace : '#/$#' : ''}
{var $assets_url = 'assets_url' | option}
{var $field = $_modx->config.em_system_field  | split : ','}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width"/>

    <style type="text/css">

    * {
      margin: 0;
      padding: 0;
      font-size: 100%;
      font-family: 'Avenir Next', "Helvetica Neue", "Helvetica", Helvetica, Arial, sans-serif;
      line-height: 1.65;
    }

    img {
      max-width: 100%;
      margin: 0 auto;
      display: block;
    }

    body,
    .body-wrap {
      width: 100% !important;
      height: 100%;
      background: #{$_modx->config.em_color_background};
      -webkit-font-smoothing: antialiased;
      -webkit-text-size-adjust: none;
    }

    a {
      color: #71bc37;
      text-decoration: none;
    }

    .text-center {
      text-align: center;
    }

    .text-right {
      text-align: right;
    }

    .text-left {
      text-align: left;
    }

    .button {
      display: inline-block;
      color: #fff !important;
      background: #{$_modx->config.em_color_themes};
      border: solid #{$_modx->config.em_color_themes};
      border-width: 10px 20px 8px;
      font-weight: bold;
      border-radius: 4px;
    }

    h1, h2, h3, h4, h5, h6 {
      margin-bottom: 20px;
      line-height: 1.25;
      font-weight: 800 !important;
    }

    h1 {
      font-size: 28px;
      color: #000;
    }

    h1 span {
    font-size: 16px;
    color: #a59897;
    }

    h2 {
      font-size: 28px;
    }

    h3 {
      font-size: 24px;
    }

    h4 {
      font-size: 20px;
    }

    h5 {
      font-size: 16px;
    }

    h6 {
      margin-bottom: 5px;
      font-size: 15px;
    }

    p, ul, ol {
      font-size: 16px;
      font-weight: normal;
      margin-bottom: 20px;
    }

    a {
      color: #{$_modx->config.em_color_themes};
    }

    h5 span {
      font-size: 12px;
      padding-left: 5px;
      color: #a59898;
    }

    .container ul {
        list-style: none;
        padding-left: 0;
    }

    .container ul > li {
      padding: 10px 0;
    }

    .container ul > li+li {
    border-top: 1px solid #dee2e6;
    }

    .container h1 {
      margin: 5px 15px;
    }

    .container .tophead {
      padding: 30px 0;
    }

    .container {
      display: block !important;
      clear: both !important;
      margin: 0 auto !important;
      max-width: 580px !important;
    }

    .container table {
      width: 100% !important;
      border-collapse: collapse;
      margin-left: 0px !important;
      margin-right: 0px !important;
    }

    .container .masthead {
      padding: 1px 0;
      background: #{$_modx->config.em_color_themes};
      color: white;
    }

    .container .tophead {
      padding: 30px 0;
    }

    .container .masthead img {
        margin-bottom: 15px;
    }

    .container .masthead h1 {
      margin: 0 auto !important;
      max-width: 90%;
      text-transform: none;
    }

    .container .cart {
        margin: 30px;
    }

    .cart td, .cart th {
        padding: 5px 10px;
        border-top: 1px solid #dee2e6;
        border-bottom: 1px solid #dee2e6;
    }

    .container .cart img {
        padding: 20px 0;
    }

    .container .cart h5 {
        margin-bottom: 5px;
        margin-top: 5px;
    }

    .container .cart .price ,.price {
        font-size: 16px;
        font-weight: 600;
        color: #{$_modx->config.em_color_themes};
    }

    .price + span {

        font-size: 12px;
        padding-left: 5px;
        color: #a59898;
    }

    .container .content {
      background: white;
      padding: 30px 30px 35px;
    }

    .container .content.footer {
      background: none;
    }

    .container .content.footer p {
      margin-bottom: 0;
      color: #888;
      text-align: center;
      font-size: 14px;
    }

    .container .content.footer a {
      color: #888;
      text-decoration: none;
      font-weight: bold;
    }

    .dark-background .container .content.footer a, .dark-background .container .content.footer p{
      color: #fff
    }

    .dark-background h1 {
      color: #fff;
    }

    .dark-background h1 span {
    color: #fff;
    }

    </style>
</head>
<body>
<table class="body-wrap {if 'em_dark_background' | option == 1}dark-background{/if}">
    <tr>
        <td class="container">

            <!-- Message start -->
            <table>

                <tr>
                  <td align="center" class="tophead">
                    <img align="center" width="150" src="{$_modx->config.em_text_logo}">
                  </td>
                </tr>
                <tr>
                        <td>
                         <h1>{$_modx->config.em_text_title} #{$num} <span>от {$address.create | date : 'd.m.Y'}</span></h1>
                        </td>
                </tr>
                <tr>
                        <td class="masthead">
                        </td>
                </tr>
                    <td class="content">

                        {if $_modx->config.em_system_log == 0}

                        {block 'info'}

                        <h5>{$address.receiver},</h5>
                        <p>{$_modx->config.em_text_lead}</p>

                        <h6>Доставим его по адресу:</h6>

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

                        <h6>Время доставки:</h6>
                        <p>{$_modx->config.em_text_time_of_delivery}</p>

                        {/block}

                        {block 'products'}
                        <h6>Ваш заказ:</h6>

                        <table class="cart">
                          <tbody>
                            {foreach $products as $product}
                            <tr>
                              <td><img align="center" width="70" src="{$site_url}{$product.thumb}"></td>
                              <td><h5>{$product.pagetitle}<span>x{$product.count}</span></h5>
                              <span class="price">{$product.price} {'ms2_frontend_currency' | lexicon}</span>
                              </td>
                            </tr>
                            {/foreach}
                          </tbody>
                        </table>

                        <h5>Итого: {$total.cost} руб</h5>

                        {/block}

                        {block 'text_question'}

                        <p>{$_modx->config.em_text_question}</p>
                        <p align="center">или</p>

                        <table>
                            <tr>
                                <td align="center">
                                    <p>
                                        <a class="button" href="mailto:{'em_contact_mail' | option}?subject=RE:{$address.receiver}, номер заказа  #{$num} от {$address.create | date : 'd.m.Y'}">{'em_text_button' | option}</a>
                                    </p>
                                </td>
                            </tr>
                        </table>

                        {/block}

                        {block 'text_thank'}
                        <p><em>{$_modx->config.em_text_thank}</em></p>
                        {/block}

                        {block 'manager_form'}
                        {/block}


                    {else}
                    <pre>
                      {$product | print_r}
                      {$total | print_r}
                      {$address | print_r}
                      {$delivery | print_r}
                      {$payment | print_r}
                    </pre>
                    {/if}
                    </td>
                </tr>
            </table>

        </td>
    </tr>
    <tr>
        <td class="container">

            <!-- Message start -->
            <table>
                <tr>
                    <td class="content footer" align="center">
                        <p>{$_modx->config.em_contact_name}<br>{$_modx->config.em_contact_address}</p>
                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>
</body>
</html>
