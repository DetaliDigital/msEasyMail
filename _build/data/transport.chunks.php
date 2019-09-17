<?php
$chunks = array();
$tmp = array(
    'tpl.msEasyMail' => array(
        'file' => 'dtls',
        'description' => 'Это тестовый чанк',
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
        'snippet' => file_get_contents($sources['source_core'] . '/elements/chunks/mseasymail.' . $v['file'] . '.tpl'),
        'static' => BUILD_CHUNK_STATIC,
        'source' => 1,
        'static_file' => 'core/components/' . PKG_NAME_LOWER . '/elements/chunks/mseasymail.' . $v['file'] . '.tpl',
    ), '', true, true);
    $chunks[] = $chunk;
    $BUILD_CHUNKS[$k] = file_get_contents($sources['source_core'] . '/elements/chunks/mseasymail.' . $v['file'] . '.tpl');
}
unset($tmp);
return $chunks;
