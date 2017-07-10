<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 05/07/2010 09:47
 */

if (!defined('NV_ADMIN') or !defined('NV_MAINFILE'))
    die('Stop!!!');

$module_version = array(
    'name' => 'Employee',
    'modfuncs' => 'main,content,rss,detail,search',
    'is_sysmod' => 0,
    'virtual' => 1,
    'version' => '4.1.01',
    'date' => 'Sun, 16 Apr 2017 03:03:39 GMT',
    'author' => 'PHAN TAN DUNG (phantandung92@gmail.com)',
    'note' => '',
    'uploads_dir' => array(
        $module_upload,
        $module_upload . '/files',
        $module_upload . '/images'
    )
);
