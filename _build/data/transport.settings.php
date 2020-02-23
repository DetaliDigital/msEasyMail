<?php
$settings = array();
$tmp = array(
    'text_title' => array(
        'xtype' => 'textfield',
        'value' => 'Заявка',
        'area' => 'Текст заявки',
    ),
    'text_new_lead_user' => array(
        'xtype' => 'textarea',
        'value' => 'Хорошие новости, наши менеджеры уже собирают ваш заказ и готовят его к отправке.',
        'area' => 'Текст заявки',
    ),

    'text_new_lead_manager' => array(
        'xtype' => 'textarea',
        'value' => 'В магазин <b>[[++site_name]]</b> поступил новый заказ <b># [[+num]]</b>',
        'area' => 'Текст заявки',
    ),

    'text_pay_lead_user' => array(
        'xtype' => 'textarea',
        'value' => 'Ваш заказ <b># [[+num]]</b> оплачен.',
        'area' => 'Текст заявки',
    ),

    'text_pay_lead_manager' => array(
        'xtype' => 'textarea',
        'value' => 'Клиент оплатил заказ <b># [[+num]]</b>.',
        'area' => 'Текст заявки',
    ),

    'text_cancelled_lead_user' => array(
        'xtype' => 'textarea',
        'value' => 'Ваш заказ <b># [[+num]]</b> отменен.',
        'area' => 'Текст заявки',
    ),

    'text_cancelled_lead_manager' => array(
        'xtype' => 'textarea',
        'value' => 'Клиент отменил заказ <b># [[+num]]</b>. Незабудьте отменить заказ и сообщить в службу доставки.',
        'area' => 'Текст заявки',
    ),

    'text_sent_lead_user' => array(
        'xtype' => 'textarea',
        'value' => 'Ваш заказ <b># [[+num]]</b> отправлен транспортной компанией.',
        'area' => 'Текст заявки',
    ),

    'text_sent_lead_manager' => array(
        'xtype' => 'textarea',
        'value' => 'Вы изменили статус заказа <b># [[+num]]</b> на отправлен.',
        'area' => 'Текст заявки',
    ),

    'text_question' => array(
        'xtype' => 'textarea',
        'value' => 'Если у Вас возникли вопросы по вашему заказу или условием его доставки. Обратитесь к менеджерам интернет-магазина "[[++site_name]]" по телефону <b>8 800 000-00-00</b>',
        'area' => 'Текст заявки',
    ),

    'text_time_of_delivery' => array(
        'xtype' => 'textarea',
        'value' => 'Заказы доставляются на следующий день с момента оформления заказа через интернет-магазин "[[++site_name]]"</b>',
        'area' => 'Текст заявки',
    ),

    'text_thank' => array(
        'xtype' => 'textarea',
        'value' => '– Спасибо за заказ
комманда интернет-магазина "[[++site_name]]"</b>',
        'area' => 'Текст заявки',
    ),

    'text_lead' => array(
        'xtype' => 'textarea',
        'value' => 'Хорошие новости, наши менеджеры уже собирают ваш заказ и готовят его к отправке.',
        'area' => 'Текст заявки',
    ),

    'text_logo' => array(
        'xtype' => 'textfield',
        'value' => '[[++site_url]][[++assets_url]]components/minishop2/img/web/ms2_small@2x.png',
        'area' => 'Шаблон заявки',
    ),

    'color_background' => array(
        'xtype' => 'textfield',
        'value' => 'f6f6f6',
        'area' => 'Шаблон заявки',
    ),

    'color_themes' => array(
        'xtype' => 'textfield',
        'value' => '005bd1',
        'area' => 'Шаблон заявки',
    ),

    'text_button' => array(
        'xtype' => 'textfield',
        'value' => 'Задать вопрос',
        'area' => 'Шаблон заявки',
    ),

    'contact_name' => array(
        'xtype' => 'textfield',
        'value' => 'Интернет-магазин <a href="[[++site_url]]">[[++site_name]]</a>',
        'area' => 'Контакты',
    ),

    'contact_address' => array(
        'xtype' => 'textfield',
        'value' => 'г.Москва ул.Авиаторов 23 офис 16',
        'area' => 'Контакты',
    ),

    'contact_mail' => array(
        'xtype' => 'textfield',
        'value' => 'info@yandex.ru',
        'area' => 'Контакты',
    ),

    'system_log' => array(
        'xtype' => 'combo-boolean',
        'value' => '0',
        'area' => 'Системные настройки',
    ),

    'system_field' => array(
        'xtype' => 'textfield',
        'value' => 'city,street,building,room',
        'area' => 'Системные настройки',
    ),
);
foreach ($tmp as $k => $v) {
    /** @var modSystemSetting $setting */
    $setting = $modx->newObject('modSystemSetting');
    $setting->fromArray(array_merge(
        array(
            'key' => 'em_' . $k,
            'namespace' => PKG_NAME_LOWER,
            'area' => 'ap_main',
        ), $v
    ), '', true, true);
    $settings[] = $setting;
}
unset($tmp);
return $settings;
