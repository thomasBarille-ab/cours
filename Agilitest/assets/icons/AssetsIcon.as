package assets.icons
{
	import com.agilitest.utils.constants.DomType;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.utils.Dictionary;

	public final class AssetsIcon
	{
		private static function getIcons24FullPath(value:String):String{
			return "/assets/icons/24/" + value + ".png";
		}
		
		//---------------------------------------------------------------------------------------------------------------
		// DOM Icons
		//---------------------------------------------------------------------------------------------------------------

		private static var _domIcon:Dictionary;
		private static function get domIcon():Dictionary{
			if(_domIcon == null){
				_domIcon = new Dictionary();
				
				_domIcon["*"] = getIcons24FullPath("tag");
				_domIcon["@image"] = getIcons24FullPath("picture_empty");
				_domIcon[DomType.INPUT] = getIcons24FullPath("textfield");
				_domIcon["edit"] = getIcons24FullPath("textfield");
				_domIcon["searchfield"] = getIcons24FullPath("textfield");
				_domIcon["edittext"] = getIcons24FullPath("textfield");
				_domIcon[DomType.HTML] = getIcons24FullPath("html");
				_domIcon[DomType.TEXTAREA] = getIcons24FullPath("text_area");
				_domIcon["text"] = getIcons24FullPath("text_area");
				_domIcon["textfield"] = getIcons24FullPath("textfield");
				_domIcon["ctextfield"] = getIcons24FullPath("textfield");
				_domIcon["okcodefield"] = getIcons24FullPath("textfield");
				_domIcon["statictext"] = getIcons24FullPath("text_area");
				_domIcon["textview"] = getIcons24FullPath("text_area");
				_domIcon[DomType.SPAN] = getIcons24FullPath("zone");
				_domIcon["viewgroup"] = getIcons24FullPath("zone");
				_domIcon["scrollview"] = getIcons24FullPath("scroll_pane_both");
				_domIcon[DomType.BUTTON] = getIcons24FullPath("button");
				_domIcon[DomType.A] = getIcons24FullPath("link_button");
				_domIcon["view"] = getIcons24FullPath("div");
				_domIcon[DomType.DIV] = getIcons24FullPath("div");
				_domIcon[DomType.IMG] = getIcons24FullPath("image");
				_domIcon["imageview"] = getIcons24FullPath("image");
				_domIcon["image"] = getIcons24FullPath("image");
				_domIcon[DomType.TABLE] = getIcons24FullPath("table");
				_domIcon["datagrid"] = getIcons24FullPath("table");
				_domIcon[DomType.TR] = getIcons24FullPath("table_select_row");
				_domIcon[DomType.TD] = getIcons24FullPath("table_select_column");
				_domIcon[DomType.IFRAME] = getIcons24FullPath("layout");
				_domIcon["shell"] = getIcons24FullPath("zone");
				_domIcon["containershell"] = getIcons24FullPath("zone_select");
				_domIcon["frame"] = getIcons24FullPath("layout_old");
				_domIcon["framelayout"] = getIcons24FullPath("layout_old");
				_domIcon[DomType.FORM] = getIcons24FullPath("form");
				_domIcon[DomType.BODY] = getIcons24FullPath("document_empty");
				_domIcon[DomType.TBODY] = getIcons24FullPath("tbody");
				_domIcon["h1"] = getIcons24FullPath("h1");
				_domIcon["h2"] = getIcons24FullPath("h2");
				_domIcon["h3"] = getIcons24FullPath("h3");
				_domIcon["h4"] = getIcons24FullPath("h4");
				_domIcon["h5"] = getIcons24FullPath("h5");
				_domIcon["h6"] = getIcons24FullPath("h6");
				_domIcon["window"] = getIcons24FullPath("application_xp");
				_domIcon["pane"] = getIcons24FullPath("layouts");
				_domIcon["combobox"] = getIcons24FullPath("combo_box");
				_domIcon["tree"] = getIcons24FullPath("tree_list");
				_domIcon["dataitem"] = getIcons24FullPath("server_components");
				_domIcon["statusbar"] = getIcons24FullPath("application_control_bar");
				_domIcon["toolbar"] = getIcons24FullPath("toolbar");
				_domIcon["menubar"] = getIcons24FullPath("menubar");
				_domIcon["menuitem"] = getIcons24FullPath("menu_item");
				_domIcon["array"] = getIcons24FullPath("text_list_bullets");
				_domIcon["object"] = getIcons24FullPath("server_components");
				_domIcon["node"] = getIcons24FullPath("three_tags");
				_domIcon["response"] = getIcons24FullPath("ice_cube");
				_domIcon["slider"] = getIcons24FullPath("slider");
				_domIcon["radiobutton"] = getIcons24FullPath("radiobutton");
				_domIcon["checkbox"] = getIcons24FullPath("check_box");
				_domIcon["tabitem"] = getIcons24FullPath("tab");
				_domIcon["tabbar"] = getIcons24FullPath("tabbar");
				_domIcon["tabbar"] = getIcons24FullPath("tabbar");
				_domIcon["cell"] = getIcons24FullPath("div");
				_domIcon["rec"] = getIcons24FullPath("film");
				_domIcon["subpic"] = getIcons24FullPath("picture_empty");
			}
			return _domIcon;
		}
		
		public static function getDomIcon(value:String):String{
			var path:String = domIcon[value.toLowerCase()];
			if(path == null){
				path = getIcons24FullPath("tag");
			}
			return path;
		}
		
		//---------------------------------------------------------------------------------------------------------------
		// Actions Icons
		//---------------------------------------------------------------------------------------------------------------

		public static const ASSERT_ICON:String = "assets/icons/32/tick.png";
		public static const ASSERT_ICON_24:String = "assets/icons/24/tick.png";
		public static const ASSERT_ICON_16:String = "assets/icons/16/tick.png";
		public static const ASSERT_VALUE_16:String = "assets/icons/16/tick.png";
		public static const ASSERT_PROPERTY_16:String = "assets/icons/16/tick.png";
		
		public static const ASSERT_ICON_32:String = "assets/icons/32/tick.png";
		public static const ASSERT_VALUE_32:String = "assets/icons/32/check_value.png";
		public static const ASSERT_PROPERTY_32:String = "assets/icons/32/check_property.png";
		
		public static const RETURN_VALUE_ICON_16:String = "assets/icons/16/arrow_up.png";
		public static const RETURN_LOOP_ICON_16:String = "assets/icons/16/arrow_repeat.png";
		public static const CALLSCRIPT_ICON_32:String = "assets/icons/32/page_code.png";
		public static const CALLSCRIPT_ICON_16:String = "assets/icons/16/page_code.png";
		public static const CHANNEL_ICON_32:String = "assets/icons/32/layers.png";
		public static const CHANNEL_START_ICON_32:String = "assets/icons/32/layers_new.png";
		public static const CHANNEL_START_ICON_16:String = "assets/icons/16/layers_new.png";
		public static const CHANNEL_SWITCH_ICON_32:String = "assets/icons/32/layers_go.png";
		public static const CHANNEL_SWITCH_ICON_16:String = "assets/icons/16/layers_go.png";
		public static const CHANNEL_CLOSE_ICON_32:String = "assets/icons/32/layers_close.png";
		public static const CHANNEL_CLOSE_ICON_16:String = "assets/icons/16/layers_close.png";
		public static const COMMENT_STEP_ICON_32:String = "assets/icons/32/comment_step.png";
		public static const COMMENT_STEP_ICON_16:String = "assets/icons/16/comment_step.png";
		public static const COMMENT_LOG_ICON_32:String = "assets/icons/32/comment_log.png";
		public static const COMMENT_LOG_ICON_16:String = "assets/icons/16/comment_log.png";
		public static const COMMENT_ICON_32:String = "assets/icons/32/comment.png";
		public static const COMMENT_ICON_16:String = "assets/icons/16/comment.png";
		

		public static const COMMENT_SUMMARY_ICON_32:String = "assets/icons/32/comment_box.png";
		public static const COMMENT_SUMMARY_ICON_16:String = "assets/icons/16/comment_box.png";
		
		public static const MOUSE_ICON_32:String = "assets/icons/32/mouse.png";
		public static const TEXT_ICON_32:String = "assets/icons/32/textfield.png";
		public static const TEXT_ICON_16:String = "assets/icons/16/textfield.png";
		public static const GOTO_URL_ICON_32:String = "assets/icons/32/address_bar.png";
		public static const GOTO_URL_ICON_16:String = "assets/icons/16/address_bar.png";
		public static const API_ICON_32:String = "assets/icons/32/network_clouds.png";
		public static const SAP_ICON_24:String = "assets/icons/24/sap.png";
		public static const API_ICON_24:String = "assets/icons/24/network_clouds.png";
		public static const API_ICON_16:String = "assets/icons/16/network_clouds.png";
		public static const NEXT_URL_ICON_32:String = "assets/icons/32/breadcrumb_select_current.png";
		public static const NEXT_URL_ICON_16:String = "assets/icons/16/breadcrumb_select_current.png";
		public static const BACK_URL_ICON_32:String = "assets/icons/32/breadcrumb_select.png";
		public static const BACK_URL_ICON_16:String = "assets/icons/16/breadcrumb_select.png";
		public static const REFRESH_URL_ICON_32:String = "assets/icons/32/breadcrumb_select_perrent.png";
		public static const REFRESH_URL_ICON_16:String = "assets/icons/16/breadcrumb_select_perrent.png";
		public static const SCRIPTING_ICON_32:String = "assets/icons/32/scripting.png";
		public static const SCRIPTING_ICON_16:String = "assets/icons/16/scripting.png";
		public static const MOUSE_LEFT_ICON_32:String = "assets/icons/32/mouse_select_left.png";
		public static const MOUSE_LEFT_ICON_16:String = "assets/icons/16/mouse_select_left.png";
		public static const MOUSE_RIGHT_ICON_32:String = "assets/icons/32/mouse_select_right.png";
		public static const MOUSE_RIGHT_ICON_16:String = "assets/icons/16/mouse_select_right.png";
		public static const MOUSE_DOUBLE_ICON_32:String = "assets/icons/32/mouse_double_click.png";
		public static const MOUSE_DOUBLE_ICON_16:String = "assets/icons/16/mouse_double_click.png";
		public static const DRAG_START_ICON_32:String = "assets/icons/32/drag_start.png";
		public static const DRAG_START_ICON_16:String = "assets/icons/16/drag_start.png";
		public static const MOUSE_OVER_ICON_32:String = "assets/icons/32/mouse_over.png";
		public static const MOUSE_OVER_ICON_16:String = "assets/icons/16/mouse_over.png";
		public static const DRAG_DROP_ICON_32:String = "assets/icons/32/drag_drop.png";
		public static const MOUSE_SWIPE_ICON_32:String = "assets/icons/32/mouse_swipe.png";
		public static const MOUSE_SWIPE_ICON_16:String = "assets/icons/16/mouse_swipe.png";
		public static const DRAG_DROP_ICON_16:String = "assets/icons/16/drag_drop.png";
		public static const MOUSE_WHEEL_ICON_32:String = "assets/icons/32/mouse_select_scroll.png";
		public static const MOUSE_WHEEL_ICON_16:String = "assets/icons/16/mouse_select_scroll.png";
		public static const SCROLL_UP_ICON_32:String = "assets/icons/32/mouse_select_scroll_up.png";
		public static const SCROLL_DOWN_ICON_32:String = "assets/icons/32/mouse_select_scroll_down.png";
		public static const SCROLL_UP_DOWN_ICON_32:String = "assets/icons/32/mouse_select_scroll_up_down.png";
		public static const SCROLL_UP_ICON_16:String = "assets/icons/16/mouse_select_scroll_up.png";
		public static const ATTRIBUTES_ICON_32:String = "assets/icons/32/attributes_display.png";
		public static const ATTRIBUTES_ICON_24:String = "assets/icons/24/attributes_display.png";
		public static const ATTRIBUTES_ICON_16:String = "assets/icons/16/attributes_display.png";
		public static const RETURN_ICON_32:String = "assets/icons/32/undo_yellow.png";
		public static const RETURN_ICON_16:String = "assets/icons/16/undo_blue.png";
		public static const SELECT_ICON_32:String = "assets/icons/32/combo_box_light_blue.png";
		public static const SELECT_ICON_16:String = "assets/icons/16/combo_box_light_blue.png";
		public static const WINDOW_ICON_32:String = "assets/icons/32/application_cascade.png";
		public static const WINDOW_NEW_TAB_ICON_32:String = "assets/icons/32/application_new_tab.png";
		public static const WINDOW_NEW_ICON_32:String = "assets/icons/32/application_new.png";
		public static const WINDOW_NEW_ICON_16:String = "assets/icons/16/application_new.png";
		public static const WINDOW_RESIZE_ICON_32:String = "assets/icons/32/application_resize.png";
		public static const WINDOW_RESIZE_ICON_16:String = "assets/icons/16/application_resize.png";
		public static const WINDOW_SWITCH_ICON_32:String = "assets/icons/32/switch_windows.png";
		public static const WINDOW_SWITCH_ICON_16:String = "assets/icons/16/switch_windows.png";
		public static const WINDOW_CLOSE_ICON_32:String = "assets/icons/32/application_close.png";
		public static const WINDOW_CLOSE_ICON_16:String = "assets/icons/16/application_close.png";
		public static const WINDOW_REDUCE_ICON_32:String = "assets/icons/32/application_reduce.png";
		public static const WINDOW_REDUCE_ICON_16:String = "assets/icons/16/application_reduce.png";
		public static const WINDOW_MAXIMIZE_ICON_32:String = "assets/icons/32/application_maximize.png";
		public static const WINDOW_MAXIMIZE_ICON_16:String = "assets/icons/16/application_maximize.png";
		public static const WINDOW_RESTORE_ICON_32:String = "assets/icons/32/application_restore.png";
		public static const WINDOW_RESTORE_ICON_16:String = "assets/icons/16/application_restore.png";
		
		public static const SYSTEM_ICON_32:String = "assets/icons/32/cog.png";
		public static const SYSTEM_ICON_16:String = "assets/icons/16/cog.png";
		public static const SYSTEM_BUTTON_ICON_32:String = "assets/icons/32/system_button.png";
		public static const SYSTEM_BUTTON_ICON_16:String = "assets/icons/16/system_button.png";
		public static const SYSTEM_PROPERTY_SET_ICON_32:String = "assets/icons/32/attributes_set.png";
		public static const SYSTEM_PROPERTY_SET_ICON_16:String = "assets/icons/16/attributes_set.png";

		public static const PERFORMANCE_START_ICON_32:String = "assets/icons/32/perfomance_start.png";
		public static const PERFORMANCE_START_ICON_16:String = "assets/icons/16/perfomance_start.png";
		public static const PERFORMANCE_PAUSE_ICON_32:String = "assets/icons/32/perfomance_pause.png";
		public static const PERFORMANCE_PAUSE_ICON_16:String = "assets/icons/16/perfomance_pause.png";
		public static const PERFORMANCE_RESUME_ICON_32:String = "assets/icons/32/perfomance_play.png";
		public static const PERFORMANCE_RESUME_ICON_16:String = "assets/icons/16/perfomance_play.png";
		
		public static const OCTOPERF_ICON_32:String = "assets/icons/32/octoperf.png";
		public static const OCTOPERF_ICON_16:String = "assets/icons/16/octoperf.png";
		
		public static const NETWORK_ICON:String = "assets/icons/32/link_go.png";
				
		public static const WARNING_ICON_24:String = "assets/icons/24/warning.png";
		public static const NOT_FIND_ICON_24:String = "assets/icons/24/delete.png";
		
		public static const ACTION_PROGRESS_16:String = "assets/icons/16/cog.png";
		public static const ACTION_CONTINU_16:String = "assets/icons/16/arrow_down.png";
		public static const ACTION_STOP_16:String = "assets/icons/16/delete.png";
		
		public static const MOBILE_ICON_32:String = "assets/icons/32/mobile.png";
		public static const MOBILE_ICON_24:String = "assets/icons/24/mobile.png";
		public static const MOBILE_ICON_20:String = "assets/icons/20/mobile.png";
			
		[Embed(source="/assets/icons/16/no_entry.png")]
		public static const NoEditImage:Class;
		
		[Embed(source="/assets/icons/16/google_webmaster_tools.png")]
		public static const SettingsIcon:Class;
		
		[Embed(source="/assets/icons/16/page_white_code.png")]
		public static const SmallAtsPageIcon:Class;
		
		[Embed(source="/assets/icons/16/text_drama.png")]
		public static const ReadmeFileIcon:Class;
		
		[Embed(source="/assets/icons/16/page_white_cup.png")]
		public static const SmallJavaPageIcon:Class;
		
		[Embed(source="/assets/icons/16/table.png")]
		public static const SmallCsvPageIcon:Class;
		
		[Embed(source="/assets/icons/16/json.png")]
		public static const SmallJsonIcon:Class;

		[Embed(source="/assets/icons/16/tree_list.png")]
		public static const SmallTreeIcon:Class;

		[Embed(source="/assets/icons/16/image.png")]
		public static const SmallImageIcon:Class;
				
		[Embed(source="/assets/icons/16/text.png")]
		public static const XmlTextNodeIcon:Class;
		
		[Embed(source="/assets/icons/16/tag_purple.png")]
		public static const XmlExpandedItemNodeIcon:Class;
		
		[Embed(source="/assets/icons/16/three_tags.png")]
		public static const XmlItemNodeIcon:Class;
				
		[Embed(source="/assets/icons/16/widgets.png")]
		public static const SmallExecutionPageIcon:Class;

		[Embed(source="/assets/icons/16/groups.png")]
		public static const SmallProjectGroupsIcon:Class;
		
		[Embed(source="/assets/icons/16/google_webmaster_tools.png")]
		public static const SmallProjectPropertiesIcon:Class;
		
		[Embed(source="/assets/icons/24/file_extension_exe.png")]
		public static const ExeIcon24:Class;
		
		[Embed(source="/assets/icons/24/magnifier.png")]
		public static const ExplorerIcon24:Class;
		
		[Embed(source="/icons/hand_grab_element.png")]
		public static const GrabHandCursor:Class;
		
		[Embed(source="/icons/hand_grabed_element.png")]
		public static const GrabedHandCursor:Class;
		
		[Embed(source="/icons/hand_grab_table.png")]
		public static const GrabHandTableCursor:Class;
		
		[Embed(source="/icons/hand_grabed_table.png")]
		public static const GrabedHandTableCursor:Class;
		
		//-----------------------------------------------------------------------------------------------------------------
		//-----------------------------------------------------------------------------------------------------------------
		
		public static function getBitmapFileIcon(name:String):BitmapData{
			return (new AssetsIcon["FileIcon" + name] as Bitmap).bitmapData;
		}
		
		[Embed(source="/assets/icons/24/picture_empty.png")]
		public static const FileIconImage:Class;
		
		[Embed(source="/assets/icons/24/film.png")]
		public static const FileIconFilm:Class;
		
		[Embed(source="/assets/icons/24/page_white_cup.png")]
		public static const FileIconJava:Class;
		
		[Embed(source="/assets/icons/24/text_drama.png")]
		public static const FileIconDrama:Class;
		
		[Embed(source="/assets/icons/24/json.png")]
		public static const FileIconJson:Class;
		
		[Embed(source="/assets/icons/24/table.png")]
		public static const FileIconTable:Class;
		
		[Embed(source="/assets/icons/24/page_suite.png")]
		public static const FileIconSuite:Class;
		
		[Embed(source="/assets/icons/24/page_ats.png")]
		public static const FileIconAts:Class;
		
		[Embed(source="/assets/icons/24/folder.png")]
		public static const FileIconFolder:Class;
		
		[Embed(source="/assets/icons/24/folder_empty.png")]
		public static const FileIconFolderEmpty:Class;
		
		[Embed(source="/assets/icons/24/folder_ats.png")]
		public static const FileIconFolderAts:Class;
		
		[Embed(source="/assets/icons/24/folder_empty_ats.png")]
		public static const FileIconFolderEmptyAts:Class;
				
		[Embed(source="/assets/icons/24/folder_java.png")]
		public static const FileIconFolderJava:Class;
		
		[Embed(source="/assets/icons/24/folder_empty_java.png")]
		public static const FileIconFolderEmptyJava:Class;
		
		[Embed(source="/assets/icons/24/folder_data.png")]
		public static const FileIconFolderData:Class;
		
		[Embed(source="/assets/icons/24/folder_empty_data.png")]
		public static const FileIconFolderEmptyData:Class;
		
		[Embed(source="/assets/icons/24/folder_secret.png")]
		public static const FileIconFolderSecret:Class;
				
		[Embed(source="/assets/icons/24/folder_empty_secret.png")]
		public static const FileIconFolderEmptySecret:Class;
		
		[Embed(source="/assets/icons/24/folder_certs.png")]
		public static const FileIconFolderCerts:Class;
		
		[Embed(source="/assets/icons/24/folder_empty_certs.png")]
		public static const FileIconFolderEmptyCerts:Class;
		
		[Embed(source="/assets/icons/24/folder_resources.png")]
		public static const FileIconFolderResources:Class;
		
		[Embed(source="/assets/icons/24/folder_empty_resources.png")]
		public static const FileIconFolderEmptyResources:Class;
		
		[Embed(source="/assets/icons/16/info_rhombus.png")]
		public static const FileIconInfoRhombus:Class;
		
		[Embed(source="/assets/icons/16/user.png")]
		public static const FileIconUser:Class;
		
		[Embed(source="/assets/icons/16/document_quote.png")]
		public static const FileIconDocumentQuote:Class;
	}
}