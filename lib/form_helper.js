/*
 * 20131014
 * update: 20150426
 */

function add_require_flag(selector)
{
	var $cont = $(""+selector);
	$cont.children().find("input,textarea,select").each(function(){
    
		var has_required = $(this).is(".required");
		if(has_required)
		{
			var border_css = $(this).css("border");
			$(this).on("blur",function(){
				var val = $.trim($(this).val());
				if(val == "")
				{
					$(this).css({"border": "1px solid red"});
					$(this).after("<b style='color: red;margin-left: 5px'>*</b>");
				}
			}).on("focus",function(){
			    $(this).css({"border": border_css});
			    $(this).next("b").remove();
			});
		}
	});
}

function do_add_require_flag(selector)
{
    var $cont = $(""+selector);
    $cont.children().find("input,textarea,select").each(function(){
        var val = $.trim($(this).val());
        var has_required = $(this).is(".required");
        if(has_required && val == "")
        {
            $(this).css({"border": "1px solid red"});
            if ($(this).next("b").length == 0)
            {
                $(this).after("<b style='color: red;margin-left: 5px'>*</b>");
            }
        }
    });
}
    
/*
*validate the require field
*/
function validate(selector,tip_selector)
{
	var $cont = $(""+selector);
	var flag = true;
	$cont.children().find("input,textarea,select").each(function()
    {
		var val = $.trim($(this).val());
		var has_required = $(this).is(".required");
		if(has_required && val == "")
		{
			var name = $(this).attr("name");
			$(""+tip_selector).html(name+" is required").fadeIn(300);
			flag =  false;
		}
	});
	return flag;
}

function get_input_vals_obj(selector)
{
	var $cont = $(""+ selector);
	var postdata = {};
	$cont.children().find("input,textarea,select").each(function(){
		var name = $(this).attr("name");
		var val = $(this).val();
		postdata[name] = val;
	});
	return postdata;
}


