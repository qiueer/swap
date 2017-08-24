var Dialog = {
 	ajax_type: 'POST',  // GET or POST
 	timeout: 60000,
 	did: 'randmodal_20130730',
 	get_did:function(){return this.did;},
 	get_ajax_type: function() {return this.ajax_type;},
 	set_ajax_type: function(type) {this.ajax_type = type;},
 	get_timeout: function() {return this.timeout;},
 	set_timeout: function(timeout) {this.timeout = timeout;},
	load_view: function(title, content,title_class,content_class)
	{
		if($('#'+this.did).length > 0)
		{
			$('#'+this.did).remove();
		}
		var id = this.did;
		if(!title_class){title_class="dlg_title";};
		if(!content_class){content_class="dlg_content";};
		var html = '<div class="modal hide fade" id="' + id + '"> ';
		html += '<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
		html += '<h4 class="' + title_class + '">' + title + '</h4></div>';
		html += '<div class="modal-body"><div id="btstrap_dialog_content" class="' + content_class + '"></div></div>';
		html += ' <div class="modal-footer"><a href="#" class="btn btn-primary">OK</a></div>'
		html += '</div>';
		$(html).appendTo(document.body);
		$('#'+id+">.modal-body>#btstrap_dialog_content").html(content);
//		$('#'+id+">.modal-body:first").append(content);
		$('#'+id).modal({}).on('hidden', function () {$(this).remove();});
		$('#'+id+">.modal-footer>a.btn-primary:first").click(function(){$('#'+id).modal("hide");});
	},
	load_error_view: function(title,content)
	{
		Dialog.load_view(title,content,"dlg_err_title","dlg_err_content");
	},
	load_action_view: function(url, post_data,  title, success_fn, ok_fn, view_config, title_class, content_class)
	{
		if($('#'+this.did).length > 0)
		{
			$('#'+this.did).remove();
			//console.info($('#'+this.did));
		}
		var id = this.did;
		var load_error_view = this.load_error_view;
		var width = 560;
		var max_width = width + 40;
		if(view_config) 
		{
		    width = view_config["width"];
		    max_width = width + 40;
		}
		
        if(!title_class){title_class="dlg_title";};
        if(!content_class){content_class="dlg_content";};
        
//		if(!title){title="View"};
//		if(!title_style){title_style=""};
//		if(!content_style){content_style="padding:8px;margin:8px;overflow:auto;overflow-y:auto;max-height:350px"};
		
        var mg_lf = "-" + (width)/2 + "px !important";
		var dlg_style = "";
		dlg_style = dlg_style + "max-width:" + max_width + 'px;' + "width: " + width + "px;" + "margin-left:" + mg_lf;
        var html = '<div class="modal hide fade" style="' + dlg_style + '"' + ' id="' + id + '"> ';
        //var html = '<div class="modal hide fade" style="' + '"' + ' id="' + id + '"> ';
		html += '<div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
		html += '<h4 class="' + title_class + '">' + title + '</h4></div>';
		html += '<div class="modal-body"><div id="btstrap_dialog_content" class="' + content_class + '"></div></div>';
		html += ' <div class="modal-footer"><a href="#" class="btn">取消</a><a href="#" class="btn btn-primary">确定</a></div>'
		html += '</div>';
		$(html).appendTo(document.body);
		
		
		$.ajax(url,{
			data: post_data,
			success: function(data,status){
				$('#'+id+">.modal-body>#btstrap_dialog_content").html(data);
				$('#'+id).modal({}).on('hidden', function () {$(this).remove();});
				if(success_fn){success_fn(data,status);}
				$('#'+id+">.modal-footer>a.btn:first").click(function(){$('#'+id).modal("hide");});
				if(ok_fn)
				{
					$('#'+id+">.modal-footer>a.btn-primary:first").click(function(){
					    var ret = ok_fn();
					    if (ret != false)
					    {
					        $('#'+id).modal("hide");
					    }
					});
				}
				else
				{
					$('#'+id+">.modal-footer>a.btn-primary:first").click(function(){
//						alert("not bind ok_fn,auto close this dialog!");
						$('#'+id).modal("hide");
					});
				}
			},
			error:function(){console.info(this);},
			type: this.ajax_type,
			timeout: this.timeout,
			statusCode: {
				404: function(response_obj) {
					var resp_text = response_obj.responseText;
					load_error_view("Error","<h4>url: " + url + "</h4>\n\n"+resp_text);
				},
				500: function(response_obj){
					var resp_text = response_obj.responseText; 
					load_error_view("Error","<h4>url: " + url + "</h4>\n\n"+resp_text);
				}
			}
		});
	}
}

//绑定时间控件,到日期
function bind_rl_date(selector_id)
{
    $('#'+selector_id).datetimepicker('remove');
    $('#'+selector_id).datetimepicker({
        format:"yyyy-mm-dd",
        startView: 2,
        minView: 2,
        todayHighlight: true,
        todayBtn: true,
        autoclose: true
    });
    return $('#'+selector_id);
 }

function bind_rl_datetime(selector_id)
{
    $('#'+selector_id).datetimepicker('remove');
    $('#'+selector_id).datetimepicker({
        format:"yyyy-mm-dd hh:ii:ss",
        startView: 2,
        minView: 0,
        todayHighlight: true,
        todayBtn: true,
        autoclose: true
    });
    return $('#'+selector_id);
 }
