<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sat, 10 Dec 2011 06:46:54 GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

if (!nv_function_exists('nv_block_footer_slider')) {
    function nv_block_footer_slider($block_config)
    {
        global $module_info, $site_mods, $module_config, $global_config, $db, $lang_global, $nv_Cache;

        $module = $block_config['module'];
        $module_file = $site_mods[$module]['module_file'];
        $module_upload = $site_mods[$module]['module_upload'];

        $db->sqlreset()->select('*')->from(NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_rows')->where('status= 1')->order('weight ASC');

        $list = $nv_Cache->db($db->sql(), '', $module);

        if (!empty($list)) {
            if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file . '/block.footer_slider.tpl')) {
                $block_theme = $global_config['module_theme'];
            } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/modules/' . $module_file . '/block.footer_slider.tpl')) {
                $block_theme = $global_config['site_theme'];
            } else {
                $block_theme = 'default';
            }

            $xtpl = new XTemplate('block.footer_slider.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $module_file);
            $xtpl->assign('GLANG', $lang_global);

            foreach ($list as $l) {
                $l['image'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_upload . '/' . $l['image'];
                $l['image_alt'] = empty($l['title']) ? basename($l['image']) : $l['title'];
                $l['link_href'] = !empty($l['link_href']) ? $l['link_href'] : 'javascript:void(0);';
                $l['link_target'] = $l['link_target'] ? ' target="_blank"' : '';

                $xtpl->assign('ROW', $l);
                $xtpl->parse('main.loop');
            }

            $xtpl->parse('main');
            return $xtpl->text('main');
        }
    }
}

if (defined('NV_SYSTEM')) {
    $content = nv_block_footer_slider($block_config);
}
