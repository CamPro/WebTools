<script type="text/javascript" src="packages/core/includes/js/tinymce/tinymce.js"></script>
<script type="text/javascript">
function tiny_mce(id_list)
{	
	tinymce.init({
		selector: id_list,
		theme: "modern",
		skin:"gpc",
		menubar:false,
		statusbar:false,
		plugins: [
			"advlist autolink lists link image charmap print preview hr anchor pagebreak",
			"searchreplace wordcount visualblocks visualchars code fullscreen",
			"insertdatetime media nonbreaking save table contextmenu directionality",
			"emoticons template paste textcolor colorpicker textpattern responsivefilemanager"
		],
		toolbar1: "bold italic underline | alignleft aligncenter alignright alignjustify | outdent indent | fontsizeselect | code", 
		toolbar2: " forecolor backcolor | table | responsivefilemanager image media | link unlink | restoredraft | removeformat preview fullscreen", 
		fontsize_formats: "10px 11px 12px 13px 14px 15px 16px 17px 18px 19px 20px",
		paste_retain_style_properties : "margin, padding, width, height, font-size, font-weight, font-family, color, text-align, ul, ol, li, text-decoration, border, background, float, display",
		image_advtab: true,
		filemanager_title:"Quản lý file",
		external_filemanager_path:"/packages/core/includes/js/tinymce/filemanager/",
		external_plugins: { "filemanager" : "/packages/core/includes/js/tinymce/filemanager/plugin.min.js"},
	}); 
}
function short_mce(id_list)
{	
	tinymce.init({
		selector: id_list,
		theme: "modern",
		skin:"gpc",
		menubar:false,
		statusbar:false,
		plugins: [
			"advlist autolink lists link image charmap print preview hr anchor pagebreak",
			"searchreplace wordcount visualblocks visualchars code fullscreen",
			"insertdatetime media nonbreaking save table contextmenu directionality",
			"emoticons template paste textcolor colorpicker textpattern responsivefilemanager"
		],
		toolbar1: "styleselect bold italic underline blockquote | alignleft aligncenter alignright alignjustify | outdent indent | link unlink |  forecolor backcolor charmap | preview removeformat code",
		fontsize_formats: "10px 11px 12px 13px 14px 15px 16px 17px 18px 19px 20px",
		image_advtab: true,
		filemanager_title:"Quản lý file",
		external_filemanager_path:"/packages/core/includes/js/tinymce/filemanager/",
		external_plugins: { "filemanager" : "/packages/core/includes/js/tinymce/filemanager/plugin.min.js"},
	}); 
}
function advance_mce(id_list)
{	
	tinymce.init({
		selector: id_list,
		theme: "modern",
		skin:"gpc",
		menubar:false,
		statusbar:false,
		plugins: [
                "advlist autolink lists link image charmap print preview hr anchor pagebreak",
			"searchreplace wordcount visualblocks visualchars code fullscreen",
			"insertdatetime media nonbreaking save table contextmenu directionality",
			"emoticons template paste textcolor colorpicker textpattern responsivefilemanager"
        ],
		toolbar1: "save | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | styleselect formatselect fontselect fontsizeselect",
        toolbar2: "undo redo | cut copy paste | searchreplace | bullist numlist | outdent indent blockquote | link unlink anchor image media | insertdatetime | forecolor backcolor",
        toolbar3: "responsivefilemanager | table | hr | subscript superscript | charmap emoticons | print fullscreen | ltr rtl | spellchecker | visualchars visualblocks nonbreaking template pagebreak restoredraft | removeformat preview code",
		fontsize_formats: "10px 11px 12px 13px 14px 15px 16px 17px 18px 19px 20px",
		image_advtab: true,
		filemanager_title:"Quản lý file",
		external_filemanager_path:"/packages/core/includes/js/tinymce/filemanager/",
		external_plugins: { "filemanager" : "/packages/core/includes/js/tinymce/filemanager/plugin.min.js"},
	}); 
}
</script>