
<?php
$settings = array();
$tmp = array(
    'text_title' => array(
        'xtype' => 'textfield',
        'value' => 'Заявка Принята!',
        'area' => 'Заявка',
    ),
    'text_lead' => array(
        'xtype' => 'textarea',
        'value' => 'Хорошие новости, наши менеджеры уже собирают ваш заказ и готовят его к отправке.',
        'area' => 'Текст заявки',
    ),
    'text_question' => array(
        'xtype' => 'textarea',
        'value' => 'Если у Вас возникли вопросы по вашему заказу или условием его доставки. Обратитесь к менеджерам интернет-магазина "Бариста" по телефону <b>8 800 250-50-98</b>',
        'area' => 'Текст заявки',
    ),

    'text_time_of_delivery' => array(
        'xtype' => 'textarea',
        'value' => 'Заказы доставляются на следующий день с момента оформление заказа через интернет-магазин"</b>',
        'area' => 'Текст заявки',
    ),

    'text_thank' => array(
        'xtype' => 'textarea',
        'value' => '– Спасибо за заказ
комманда интернет-магазина "Название магазина"</b>',
        'area' => 'Текст заявки',
    ),

    'text_logo' => array(
        'xtype' => 'textfield',
        'value' => '122',
        'area' => 'Шаблон заявки',
    ),

    'color_background' => array(
        'xtype' => 'textfield',
        'value' => 'f5f1ec',
        'area' => 'Шаблон заявки',
    ),

    'color_themes' => array(
        'xtype' => 'textfield',
        'value' => 'aa4829',
        'area' => 'Шаблон заявки',
    ),

    'contact_name' => array(
        'xtype' => 'textfield',
        'value' => 'Интернет-магазин <a href="baristahouse.ru">baristahouse.ru</a>',
        'area' => 'Контакты',
    ),

    'contact_address' => array(
        'xtype' => 'textfield',
        'value' => 'г. Санкт-Петербург ул. Малая Разночинная, д. 9',
        'area' => 'Контакты',
    ),

    'contact_mail' => array(
        'xtype' => 'textfield',
        'value' => 'info@dtls.su',
        'area' => 'Контакты',
    ),

    'system_log' => array(
        'xtype' => 'combo-boolean',
        'value' => '0',
        'area' => 'Системные настройки',
    ),

    'system_field' => array(
        'xtype' => 'textfield',
        'value' => '0',
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
