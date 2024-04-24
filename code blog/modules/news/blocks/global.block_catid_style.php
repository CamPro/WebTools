<?php
 
/**
* @Project NUKEVIET 4.x
* @Author VINADES.,JSC (contact@vinades.vn)
* @Copyright (C) 2016 VINADES.,JSC. All rights reserved
* @Language English
* @License CC BY-SA (http://creativecommons.org/licenses/by-sa/4.0/)
* @Createdate Apr 15, 2011, 08:22:00 AM
*/

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'creat_thumbs_box' ) )
{
	function creat_thumbs_box( $id, $homeimgfile, $module_name, $width = 200, $height = 150 )
	{
		if( $width >= $height ) $rate = $width / $height;
		else  $rate = $height / $width;
		$image = NV_UPLOADS_REAL_DIR . '/' . $module_name . '/' . $homeimgfile;
		if( $homeimgfile != '' and file_exists( $image ) )
		{
			$imgsource = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module_name . '/' . $homeimgfile;
			$imginfo = nv_is_image( $image );
			$basename = $module_name . $width . 'x' . $height . '-' . $id . '-' . md5_file( $image ) . '.' . $imginfo['ext'];
			if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
			{
				$imgsource = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
			}
			else
			{
				$_image = new NukeViet\Files\Image( $image, NV_MAX_WIDTH, NV_MAX_HEIGHT );
				if( $imginfo['width'] <= $imginfo['height'] )
				{
					$_image->resizeXY( $width, 0 );
				}
				elseif( ( $imginfo['width'] / $imginfo['height'] ) < $rate )
				{
					$_image->resizeXY( $width, 0 );
				}
				elseif( ( $imginfo['width'] / $imginfo['height'] ) >= $rate )
				{
					$_image->resizeXY( 0, $height );
				}
				$_image->cropFromCenter( $width, $height );
				$_image->save( NV_ROOTDIR . '/' . NV_TEMP_DIR, $basename );
				if( file_exists( NV_ROOTDIR . '/' . NV_TEMP_DIR . '/' . $basename ) )
				{
					$imgsource = NV_BASE_SITEURL . NV_TEMP_DIR . '/' . $basename;
				}
			}
		}
		elseif( nv_is_url( $homeimgfile ) )
		{
			$imgsource = $homeimgfile;
		}
		else
		{
			$imgsource = '';
		}
		return $imgsource;
	}
}
if( ! nv_function_exists( 'nukevn_template_news_catid' ) )
{
	function nv_block_config_template_news_catid( $module, $data_block, $lang_block )
	{
		global $site_mods, $nv_Cache;

		$html = '';
		$html = '<tr>';
		$html .= '<td>' . $lang_block['catid'] . '</td>';
		$html .= "	<td><select class=\"form-control w200\" name=\"config_catid\">\n";
        $sql = "SELECT * FROM " . NV_PREFIXLANG . "_" . $site_mods[$module]['module_data'] . "_cat ORDER BY sort ASC";
        $list = $nv_Cache->db( $sql, '', $module );
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
            $sel = ( $data_block['catid'] == $l['catid'] ) ? ' selected' : '';
            $html .= "<option value=\"" . $l['catid'] . "\" " . $sel . ">" . $xtitle_i.$l['title'] . "</option>\n";
        }
        $html .= "	</select></td>\n";
		$html .= '</tr>';
		$html .= '<tr>';

		$html .= '<tr>';
		$html .= '<td>' . $lang_block['numrow'] . '</td>';
		$html .= '<td><input type="text" class="form-control w300" name="config_numrow" size="5" value="' . $data_block['numrow'] . '"/></td>';
		$html .= '</tr>';

		$html .= '<tr>';
		$html .= '<td>' . $lang_block['title_cut'] . '</td>';
		$html .= '<td><input type="text" class="form-control w300" name="config_title_cut" size="5" value="' . $data_block['title_cut'] . '"/></td>';
		$html .= '</tr>';

		$html .= '<tr>';
		$html .= '<td>' . $lang_block['hometext_cut'] . '</td>';
		$html .= '<td><input type="text" class="form-control w300" name="config_hometext_cut" size="5" value="' . $data_block['hometext_cut'] . '"/></td>';
		$html .= '</tr>';

		$html .= '<tr>';
		$html .= '<td>' . $lang_block['style'] . '</td>';
		$html .= '<td><select name="config_style" class="form-control w300">';
			
		$array_style = 	array(
		'1'=> $lang_block['style_1'], 
		'2' =>$lang_block['style_2'], 
		'3' =>$lang_block['style_3'], 
		'4' =>$lang_block['style_4'],
		'5' =>$lang_block['style_5'],
		'6' =>$lang_block['style_6'], 
		'7' =>$lang_block['style_7']
		);
		foreach( $array_style as $key => $item )
		{
			$selected = ( $data_block['style'] == $key ) ? ' selected="selected"' : '' ;
			$html .= '<option value="'. $key .'" '. $selected .'>'. $item .'</option>';
		}
		$html .= '</select>';
		$html .= '</td>';
		$html .= '</tr>';

		return $html;
	}

	function nv_block_config_template_news_catid_submit( $module, $lang_block )
	{
		global $nv_Request;
		$return = array();
		$return['error'] = array();
		$return['config'] = array();
		$return['config']['catid'] = $nv_Request->get_int('config_catid', 'post', 0 );
		$return['config']['style'] = $nv_Request->get_int( 'config_style', 'post', 0 );
		$return['config']['numrow'] = $nv_Request->get_int( 'config_numrow', 'post', 0 );
		$return['config']['title_cut'] = $nv_Request->get_int( 'config_title_cut', 'post', 0 );
		$return['config']['hometext_cut'] = $nv_Request->get_int( 'config_hometext_cut', 'post', 0 );

		return $return;
	}

	function nukevn_template_news_catid( $block_config )
	{
		global $module_array_cat, $nv_Cache, $module_info, $site_mods, $module_config, $global_config, $db, $id, $lang_module;
		if (empty($id)) $id =0;
		$module = $block_config['module'];
		$mod_data = $site_mods[$module]['module_data'];
		$mod_file = $site_mods[$module]['module_file'];
		$show_no_image = $module_config[$module]['show_no_image'];
		
		$db->sqlreset()
				->select( 'id, catid, title, alias, homeimgfile, homeimgthumb, hometext, publtime, hitstotal, hitscm, external_link' )
				->from( NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_' . $block_config['catid'] . '' )
				->where('id!= '. $id .' AND status= 1')
				->order( 'publtime DESC' )
				->limit( $block_config['numrow'] );
		$list = $nv_Cache->db( $db->sql(), '', $module );

		if( ! empty( $list ) )
		{
			if( file_exists( NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $mod_file . '/global.block_catid_style_' . $block_config['style'] . '.tpl' ) )
			{
				$block_theme = $module_info['template'];
			}
			else
			{
				$block_theme = 'default';
			}
			$xtpl = new XTemplate( 'global.block_catid_style_' . $block_config['style'] . '.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file );
			$xtpl->assign( 'LANG', $lang_module );
			$xtpl->assign( 'TEMPLATE', $block_theme );
			$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
			$xtpl->assign( 'BLOCK_TITLE', $block_config['title'] );

		if( $block_config['style'] == 1 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					$xtpl->assign( 'ROW', $l );
					$xtpl->parse( 'main.loop' );
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 2 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					$xtpl->assign('ROW', $l);
                    if (! empty($l['thumb'])) 
				    {
                       $xtpl->parse('main.loop.img');
                    }
				       $xtpl->parse('main.loop');
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 3 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
		        $a = 1;
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];

					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					if( $a == 1 )
					{
 
						$xtpl->assign( 'CONTENT', $l );
						if (! empty($l['thumb'])) {
                        $xtpl->parse('main.content.img');
                        }
						$xtpl->parse( 'main.content' );
 					}
					else
					{
						$xtpl->assign( 'ROW', $l );
						if (! empty($l['thumb'])) {
                        $xtpl->parse('main.loop.img');
                        }
						$xtpl->parse( 'main.loop' );
					}
					++$a;
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 4 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
					}elseif( $l['homeimgthumb'] == 2 ){
						$l['thumb'] = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $module . '/' . $l['homeimgfile'];
					}elseif( $l['homeimgthumb'] == 3 ){
						$l['thumb'] = $l['homeimgfile'];
					}elseif( ! empty( $show_no_image ) ){
						$l['thumb'] = NV_BASE_SITEURL . $show_no_image;
					}else{
						$l['thumb'] = NV_BASE_SITEURL . 'themes/' . $module_info['template'] . '/images/no_image.jpg';
					}
					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					    $xtpl->assign('ROW', $l);
                        $xtpl->parse('main.loop');
			    }
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 5 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
		        $k = 1;
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];

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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					if( $k == 1 )
					{
 
						$xtpl->assign( 'CONTENT', $l );
						if (! empty($l['thumb'])) {
                        $xtpl->parse('main.content.img');
                        }
						$xtpl->parse( 'main.content' );
 					}
					else
					{
						$xtpl->assign( 'ROW', $l );
						if (! empty($l['thumb'])) {
                        $xtpl->parse('main.loop.img');
                        }
						$xtpl->parse( 'main.loop' );
					}
					++$k;
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 6 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					$xtpl->assign( 'ROW', $l );
					$xtpl->parse( 'main.loop' );
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		}
		elseif( $block_config['style'] == 7 )/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		{
				foreach( $list as $l )
				{
					$l['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$l['catid']]['alias'] . '/' . $l['alias'] . '-' . $l['id'] . $global_config['rewrite_exturl'];
					if( $l['homeimgthumb'] == 1 )
					{
						$l['thumb'] = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $module . '/' . $l['homeimgfile'];
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

					$l['title_cut'] = nv_clean60( strip_tags( $l['title'] ), $block_config['title_cut'] );
					$l['hometext_cut'] = nv_clean60( strip_tags( $l['hometext'] ), $block_config['hometext_cut'] );
					$l['publtime'] = nv_date('d/m/Y', $l['publtime']);
					if ($l['external_link']) {
                    $l['target_blank'] = 'target="_blank"';
                    }
					$xtpl->assign( 'ROW', $l );
					$xtpl->parse( 'main.loop' );
				}
				$xtpl->assign( 'TITLE', $module_array_cat[$block_config['catid']]['title'] );
			    $xtpl->assign( 'LINK', $module_array_cat[$block_config['catid']]['link'] );
				
				$xtpl->parse( 'main' );
				return $xtpl->text( 'main' );
		     }
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
            $sql = 'SELECT catid, parentid, title, alias, viewcat, subcatid, numlinks, description, status, keywords, groups_view FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
            $list = $nv_Cache->db($sql, 'catid', $module);
            if(!empty($list))
            {
                foreach ($list as $l) {
                    $module_array_cat[$l['catid']] = $l;
                    $module_array_cat[$l['catid']]['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'];
                }
            }
        }
		$content = nukevn_template_news_catid( $block_config );
	}
}
