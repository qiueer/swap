/**
 *分页类，配合bootstrap + jquery使用
 */

var pagerctl;
if(! pagerctl ) pagerctl = {};

pagerctl = {
		url: '',
		data: {},
		start: 0,
		max_page: 0,
		cur_page: 1,
		pagesize: 15,
		ajax_type: 'POST',
		timeout : 60000,
		success_fn: function(){alert("not assign success function!")},
		get_cur_page: function(){
			return this.cur_page;//获取当前的页码
		},
		get_pagesize: function(){
			return this.pagesize;
		},
		get_data: function()
		{
			console.info(this);
			var data = this.data;
			data.start = this.start;
			data.pagesize = this.pagesize;
			var databack = "";
			var url = this.url;
			var success_fn = this.success_fn;
			$.ajax(url,{
				data: data,
				success: success_fn,
				error:function(){console.info(this);},
				type: 'POST',
				timeout: Albert_pager.timeout,
				statusCode: {
					404: function(response_obj) {var resp_text = response_obj.responseText;alert("[url: " + url + "] Page Not Found !\n\n" + resp_text);},
					500: function(response_obj){var resp_text = response_obj.responseText; alert("[url: " + url + "] Internal Server Error !\n\n" + resp_text);}
				}
			});
		},
		init: function(conf,selector)
		{
			this.url = conf.url;
			this.pagesize = conf.pagesize? conf.pagesize : 15 ;
			this.data = conf.data? conf.data: {};
			this.ajax_type = conf.ajax_type? conf.ajax_type: 'POST';
			this.timeout = conf.timeout? conf.timeout: 30000;
			this.success_fn = conf.success_fn? conf.success_fn: function(){alert("not assign success function!")};
			
			this.start = 0;
			this.max_page = 0;
			this.cur_page = 1;
			
//			console.info(this);
			var html = '\
	 			<div id="bootstrap_jquery_pager">\
	 			<div id="bootstrap_jquery_pager_content"></div>\
	 			<div id="bootstrap_jquery_pager_footer">\
	 			    <ul style="float:left">\
	 			        <li style="float:left" ><a href="#">第一页</a></li>\
			 			<li style="float:left" ><a href="#">前一页</a></li>\
			 			<li style="float:left" ><a href="#">后一页</a></li>\
			 			<li style="float:left" ><a href="#">最后一页</a></li>\
	 			    </ul>\
	 			    <div style="clear: both"></div>\
	 			</div>\
	 			</div>';
	 		//$(html).appendTo(document.body);
			$(selector).append(html);
			
			var get_data = this.get_data;
			$("#bootstrap_jquery_pager_footer ul li:eq(0)").on("click", function(){
				get_data(0);
			});
			$("#bootstrap_jquery_pager_footer ul li:eq(1)").on("click", function(){
				get_data(0);
			});
			$("#bootstrap_jquery_pager_footer ul li:eq(2)").on("click", function(){
				get_data(0);
			});
			$("#bootstrap_jquery_pager_footer ul li:eq(3)").on("click", function(){
				get_data(0);
			});
		}
};