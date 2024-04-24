<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2010 - 2012 VINADES.,JSC. All rights reserved
 * @Createdate Sun, 08 Apr 2012 00:00:00 GMT GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');
if (!nv_function_exists('nv_block_news_two_column'))
{
    function nv_block_config_news_two_column($module, $data_block, $lang_block)
    {
        global $nv_Cache, $site_mods;

        $sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
        $list = $nv_Cache->db($sql, '', $module);
		
        $html = "";
        $html .= "<tr>";
        $html .= "<td>" . $lang_block['blockid1'] . "</td>";
        $html .= "<td><select class=\"form-control w200\" name=\"config_blockid1\">\n";
        foreach ( $list as $l )
        {
	        $xtitle_i = "";
	        if ( $l['lev'] > 0 )
	        {
	            for ( $i = 1; $i <= $l['lev']; $i ++ )
	            {
	                $xtitle_i .= "----";
	            }
	        }
            $sel = ( $data_block['blockid1'] == $l['catid'] ) ? ' selected' : '';
			$html .= "<option value=\"" . $l['catid'] . "\" " . $sel . ">" . $xtitle_i.$l['title'] . "</option>\n";
        }
        $html .= "</select></td>\n";
        $html .= "</tr>";
        $html .= "<tr>";
        $html .= "<td>" . $lang_block['blockid2'] . "</td>";
        $html .= "<td><select class=\"form-control w200\" name=\"config_blockid2\">\n";
        foreach ( $list as $l )
        {
	        $xtitle_i = "";
	        if ( $l['lev'] > 0 )
	        {
	            for ( $i = 1; $i <= $l['lev']; $i ++ )
	            {
	                $xtitle_i .= "----";
	            }
	        }
            $sel = ( $data_block['blockid2'] == $l['catid'] ) ? ' selected' : '';
			$html .= "<option value=\"" . $l['catid'] . "\" " . $sel . ">" . $xtitle_i.$l['title'] . "</option>\n";
        }
        $html .= "</select></td>\n";
        $html .= "</tr>";
        $html .= "<tr>";
        $html .= "<td>" . $lang_block['numrow'] . "</td>";
        $html .= "<td><input class=\"form-control w200\" type=\"text\" name=\"config_numrow\" size=\"5\" value=\"" . $data_block['numrow'] . "\"/></td>";
        $html .= "</tr>";
        return $html;
    }
    function nv_block_config_news_two_column_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['blockid1'] = $nv_Request->get_int('config_blockid1', 'post', 0);
        $return['config']['blockid2'] = $nv_Request->get_int('config_blockid2', 'post', 0);
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 0);
        return $return;
    }
    function nv_block_news_two_column($block_config)
    {
        global $nv_Cache, $module_array_cat, $module_info, $site_mods, $module_config, $global_config, $db;
        $module = $block_config['module'];
		if (empty($id)) $id =0;
		$db->sqlreset()
				->select( 'id, catid, listcatid, title, alias, homeimgfile, homeimgthumb, hometext, publtime, hitstotal, hitscm, external_link' )
				->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_' . $block_config['blockid1'] . '' )
				->where('id!= '. $id .' AND status= 1')
				->order( 'publtime DESC' )
				->limit( $block_config['numrow'] );
		$list1 = $nv_Cache->db( $db->sql(), '', $module );
		
		$db->sqlreset()
				->select( 'id, catid, listcatid, title, alias, homeimgfile, homeimgthumb, hometext, publtime, hitstotal, hitscm, external_link' )
				->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_' . $block_config['blockid2'] . '' )
				->where('id!= '. $id .' AND status= 1')
				->order( 'publtime DESC' )
				->limit( $block_config['numrow'] );
		$list2 = $nv_Cache->db( $db->sql(), '', $module );
		
		$db->sqlreset()
				->select( 'catid, title' )
				->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat' )
				->where('catid IN ( ' . $block_config['blockid1'] . ', ' . $block_config['blockid2'] . ')');
		$list_cat = $nv_Cache->db( $db->sql(), 'catid', $module );
        
        $array_list = array(
            $block_config['blockid1'] => $list1,
            $block_config['blockid2'] => $list2);
        if (!empty($array_list))
        {
            if (file_exists(NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/news/block_two_column.tpl"))
            {
                $block_theme = $module_info['template'];
            }
            else
            {
                $block_theme = "default";
            }
            $xtpl = new XTemplate("block_two_column.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/modules/news");
            $xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
            $xtpl->assign( 'THEME', $block_theme );
			foreach ($array_list as $catid => $list)
            {
                $i = 1;
                foreach ($list as $l)
                {
                    $arr_catid = explode( ',', $l['listcatid'] );                														
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$arr_catid[0]]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					$l['catlink'] = NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA . "&amp;" . NV_NAME_VARIABLE . "=" . $module . "&amp;" . NV_OP_VARIABLE . "=" . $module_array_cat[$arr_catid[0]]['alias'];
					$l['title_cut'] = nv_clean60($l['title'], 60);
					$l['hometext_cut'] = nv_clean60($l['hometext'], 120);
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = creat_thumbs_box( $l['id'], $l['homeimgfile'], $module, 250, 180 );
					}
					elseif( $l['homeimgthumb'] == 2 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/' . $l['homeimgfile'];
					}
					elseif( $l['homeimgthumb'] == 3 )
					{
						$l['thumb'] = $l['homeimgfile'];
					}
					elseif( ! empty( $show_no_image ) )
					{
						$l['thumb'] = NV_BASE_SITEURL . $show_no_image;
					}
					else
					{
						$l['thumb'] = NV_BASE_SITEURL . 'themes/' . $module_info['template'] . '/images/no_image.jpg';
					}
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    } 
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
                    $xtpl->assign('ROW', $l);
                    if (!empty($l['thumb']))
                    if($i==1)
			        {
					   if (! empty($l['thumb'])) {
                       $xtpl->parse('main.cat.content.img');
                       }
                       $xtpl->parse('main.cat.content');
                      $i++;
                   }
                   else
	               {   
				    if (! empty($l['thumb'])) {
                       $xtpl->parse('main.cat.loop.img');
                    }
                    $xtpl->parse('main.cat.loop');
                 } 
		    }         
                $xtpl->assign('BLOCK_TITLE', $list_cat[$catid]['title']);
		        $xtpl->assign('BLOCK_LINK', $l['catlink']);
				$xtpl->parse('main.cat.cattitle');
                $xtpl->parse('main.cat');
            }
            $xtpl->parse('main');
            return $xtpl->text('main');
        }
    }
}
if (defined('NV_SYSTEM')) {
    global $nv_Cache, $site_mods, $module_name, $global_array_cat, $module_array_cat;
    $module = $block_config['module'];
    if (isset($site_mods[$module])) {
        if ($module == $module_name) {
            $module_array_cat = $global_array_cat;
            unset($module_array_cat[0]);
        } else {
            $module_array_cat = array();
            $sql = 'SELECT catid, parentid, title, alias, viewcat, subcatid, numlinks, description, inhome, keywords, groups_view FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
            $list = $nv_Cache->db($sql, 'catid', $module);
            if(!empty($list))
            {
                foreach ($list as $l) {
                    $module_array_cat[$l['catid']] = $l;
                    $module_array_cat[$l['catid']]['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'];
                }
            }
        }
		 $content = nv_block_news_two_column($block_config);
	}
}