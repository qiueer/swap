/*
 * 封装highchart 
 * author : albertqiu
 * date : 20140819
 */

Highcharts.setOptions({global:{useUTC : false}});

function get_tpos(max)
{
	var tpos = [];
	var sep = max / 10 ;
	for (var i=0; i<11; i++)
	{
		tpos[i] = (sep * i).toFixed(2);
	}
	return tpos;
}

function combine_obj(obj, src_obj)
{
	ob=eval(src_obj);
	var Property="";
	for(var i in ob)
	{
		obj[i] = src_obj[i];
	}
	return obj;
}
/**
 * id, which id render to
 * labels: x-axis point set
 * lineset: line set
 * 				[{"name": "", "data": Array }, {}, {}]
 * max: max data in lineset, to decide tickPositions
 * settings: object, used to set title or sub_title or ytext, charttype and so on
 */
function hightchart_line(id, labels, lineset, max, settings)
{
	var title = "";
	var sub_title = "";
	var default_max = 1;
	var ytext = "";
	var charttype = "spline";
	
	if(typeof(max) != 'undefined') default_max = max;
	if(typeof(settings) != 'undefined' && settings.constructor == Object)
	{
		title = settings.title ? settings.title : title;
		sub_title = settings.sub_title ? settings.sub_title : sub_title;
		ytext = settings.ytext ? settings.ytext : ytext;
		charttype = settings.charttype ? settings.charttype : charttype;
	}
	
	var tpos = get_tpos(max);
	
	var chart = {type : charttype,inverted: false};
	var credits = {"text": "DJI.COM", "href":"http://www.dji.com"};
	var exporting = {};
	var xAxis = {
	        type:"datetime",
	        //categories: labels,
	        //tickInterval: 900 * 1000  ,  // 15分钟
	        tickPixelInterval : 100,
//	        dateTimeLabelFormats : {
//	            second: '%H:%M:%S',
//	            minute: '%e. %b %H:%M',
//	            hour: '%b/%e %H:%M',
//	            day: '%e日/%b',
//	            week: '%e. %b',
//	            month: '%b %y',
//	            year: '%Y'
//	        },
	        labels: { 
	            rotation: 270, 
	            style: { 
	                fontSize: '13px', 
	                fontFamily: 'Verdana, sans-serif',
	                writingMode:'tb-rl'    //文字竖排样式
	            }
	        }
	};
	
	var yAxis = {
	        title: {
	            text: ytext
	        },
	        tickPixelInterval: 2,
	        tickPositions: tpos,
	        plotLines: [{
	            value: 0,
	            width: 1,
	            color: '#808080'
	        }]
	};

	var chart_opts = {};
	
	chart_opts.chart = chart;
	chart_opts.credits = credits;
	chart_opts.exporting = exporting;
	chart_opts.title =  {
			text: title,
            x: -20 //center
        };
	chart_opts.subtitle = {
            text: sub_title,
            x: -20
        };
	
	chart_opts.xAxis = xAxis;
	chart_opts.yAxis = yAxis;
	
	chart_opts.tooltip = {
                valueSuffix: ''
    };
	
	chart_opts.legend = {
            //layout: 'vertical',
        	//align: 'right',
        	//layout: 'horizontal',
        	align: 'center',
        	//backgroundColor : "#bebebe",
            //verticalAlign: 'bottom',
            borderWidth: 1
        };
	
	
	chart_opts.series = lineset;
	
    $("#"+id).highcharts(chart_opts);
}

/**
 * id, which id render to
 * lineset: line set
 * 				[{"name": "", "data": [unix_timestamp, value] }, {}, {}]
 * max: max data in lineset, to decide tickPositions
 * settings: object, used to set title or sub_title or ytext, charttype and so on
 * 功能：
 * 		横坐标是时间轴，纵坐标是数值。
 * 		另外，数据量非常大，lineset的data字段需包含unix_timestamp,单位是毫秒，即unix_timestamp * 1000
 */
function xdatetime_line(id, lineset, max, settings)
{
	var title = "";
	var sub_title = "";
	var default_max = 1;
	var ytext = "";
	var charttype = "spline";
	
	if(typeof(max) != 'undefined') default_max = max;
	if(typeof(settings) != 'undefined' && settings.constructor == Object)
	{
		title = settings.title ? settings.title : title;
		sub_title = settings.sub_title ? settings.sub_title : sub_title;
		ytext = settings.ytext ? settings.ytext : ytext;
		charttype = settings.charttype ? settings.charttype : charttype;
	}
	
	var tpos = get_tpos(max);
	
	var chart = {
			type : charttype,
			inverted: false,
			heigh: 500,
			zoomType: 'x'   //仅对x轴进行放大
	};
	var credits = {
			"text": "DJI.COM", 
			style: {
				cursor: 'pointer',
				color: '#909090',
				fontSize: '12px',
				marginTop: '4px'
			},
			"href":"http://www.dji.com"
	};
	var exporting = {};
	var xAxis = {
	        type:"datetime",
	        //categories: labels,
	        //tickInterval: 900 * 1000  ,  // 15分钟
	        tickPixelInterval : 100,
	        dateTimeLabelFormats : {
	        	millisecond: '%H:%M:%S.%L',
	        	second: '%H:%M:%S',
	        	minute: '%H:%M',
	        	hour: '%H:%M',
	        	day: '%e. %b',
	        	week: '%e. %b',
	        	month: '%b \'%y',
	        	year: '%Y'
	        },
	        labels: { 
	            rotation: 0, 
	            style: { 
	                fontSize: '13px', 
	                fontFamily: 'Verdana, sans-serif',
	                //writingMode:'tb-rl'    //文字竖排样式
	            }
	        }
	};
	
	var yAxis = {
	        title: {
	            text: ytext
	        },
	        tickPixelInterval: 2,
	        tickPositions: tpos,
	        plotLines: [{
	            value: 0,
	            width: 1,
	            color: '#808080'
	        }]
	};

	var chart_opts = {};
	
	chart_opts.chart = chart;
	chart_opts.credits = credits;
	chart_opts.exporting = exporting;
	chart_opts.title =  {
			text: title,
            x: -20 //center
        };
	chart_opts.subtitle = {
            text: sub_title,
            x: -20
        };
	
	chart_opts.xAxis = xAxis;
	chart_opts.yAxis = yAxis;
	
	chart_opts.tooltip = {
                valueSuffix: ''
    };
	
	chart_opts.legend = {
        	align: 'center',
            borderWidth: 1
        };
	
	
	chart_opts.series = lineset;
	
    $("#"+id).highcharts(chart_opts);
}


