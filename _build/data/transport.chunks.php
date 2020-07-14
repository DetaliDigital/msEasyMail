<?php
$chunks = array();
$tmp = array(
    'tpl.msEasyMail' => array(
        'file' => 'mseasymail',
        'description' => 'Основной чанк формы письма msEasyMail',
    ),
    'tpl.msEasyMail.new.user' => array(
        'file' => 'mseasymailnewuser',
        'description' => 'Статус Новый заказ для пользователя msEasyMail',
    ),
    'tpl.msEasyMail.new.manager' => array(
        'file' => 'mseasymailnewmanager',
        'description' => 'Статус Новый заказ для админисратора msEasyMail',
    ),
    'tpl.msEasyMail.pay.user' => array(
        'file' => 'mseasymailpayuser',
        'description' => 'Статус Оплачен для пользователя msEasyMail',
    ),
    'tpl.msEasyMail.pay.manager' => array(
        'file' => 'mseasymailpaymanager',
        'description' => 'Статус Оплачен для админисратора msEasyMail',
    ),
    'tpl.msEasyMail.cancelled.user' => array(
        'file' => 'mseasymailcancelleduser',
        'description' => 'Статус Отменен для пользователя msEasyMail',
    ),
    'tpl.msEasyMail.cancelled.manager' => array(
        'file' => 'mseasymailcancelledmanager',
        'description' => 'Статус Отменен для админисратора msEasyMail',
    ),
    'tpl.msEasyMail.sent.user' => array(
        'file' => 'mseasymailsentuser',
        'description' => 'Статус Отправлен для пользователя msEasyMail',
    ),
    'tpl.msEasyMail.sent.manager' => array(
        'file' => 'mseasymailsentmanager',
        'description' => 'Статус Отправлен для админисратора msEasyMail',
    ),
);
// Save chunks for setup options
$BUILD_CHUNKS = array();
foreach ($tmp as $k => $v) {
    /** @var modChunk $chunk */
    $chunk = $modx->newObject('modChunk');
    /** @var array $sources */
    $chunk->fromArray(array(
        'id' => 0,
        'name' => $k,
        'description' => @$v['description'],
        'snippet' => file_get_contents($sources['source_core'] . '/elements/chunks/dtls.' . $v['file'] . '.tpl'),
        'static' => BUILD_CHUNK_STATIC,
        'source' => 1,
        'static_file' => 'core/components/' . PKG_NAME_LOWER . '/elements/chunks/dtls.' . $v['file'] . '.tpl',
    ), '', true, true);
    $chunks[] = $chunk;
    $BUILD_CHUNKS[$k] = file_get_contents($sources['source_core'] . '/elements/chunks/dtls.' . $v['file'] . '.tpl');
}
unset($tmp);
return $chunks;
