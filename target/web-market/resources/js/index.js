// JavaScript Document
$(document).ready(function(){  
	// getCategory();
	// getItems();
	// scrollBannerImage();
	// loginState();
	// actionLoginout();
	//
	// $('.login_out').hover(
	// function(){
	// 	$('.user_list').show();
	// },function(){
	// 	$('.user_list').hide();
	// }
	// ) ;
    banner_scroll('slidershow');
    banner_scroll('slidershow_tech');
    banner_scroll('slidershow_wc');

	
});

//轮播图的自动定时滚动
function banner_scroll(viewClass) {
    $("#"+viewClass).carousel({
        interval:2000
    });
    $("#"+viewClass+" a.left").click(function(){
        $(".carousel").carousel("prev");
    });
    $("#"+viewClass+" a.right").click(function(){
        $(".carousel").carousel("next");
    });
}

function toggleUserList(show){


}

function loginState(){ 
	var loginUser = $('.login_user').text();
	if(loginUser != ""){
		$('.login_in').css('display','none');
		$('.login_out a').text(loginUser);
		$('.login_out').css('display','inline');
		$('#welcome').css('display','block');
		$('.main_header').css('margin-top','0px');
	}else{
		$('.login_in').css('display','inline');
		$('.login_in a').text(loginUser+'Login In');
		$('.login_out').css('display','none');
		$('#welcome').css('display','none');
		$('.main_header').css('margin-top','40px');
	}
}


function scaleImg(img){
	var imgId = img.attr('id');
	var width1 = 200;
	var height1 = 200;
	if(imgId.substring(0,5)=='img_3'){
		width1 = 80;
		height1 = 80;
	}
	img.jqthumb({
		width: width1,
		height: height1,
		after: function(imgObj){
			imgObj.css('opacity', 0).animate({opacity: 1}, 2000);
		}
	});
}

function clickImg(img){
	img.click(function(){
      alert(img.attr('class'));
    });
}

function getCategory(){
	var url = 'IndexAction_getCategorys.json';
	var categoryArea = $('.category ul');
	$.get(   
           url, function getItems(data){
           var info = eval("("+data+")");
           if(info.state == "ok"){
               $.each(info.result,function(i,content){
			      var name = content.name;
			      var id = content.id;
			      var thumbDiv = "<img style='margin-right:10px' class='icon_20' >"+"</img>";
			      var nameDiv = "<li><a class="+"\"name_"+i+"\""+">"+thumbDiv+"<span>"+name+"</span></a></li>";
			      categoryArea.append(nameDiv);
			      $(".category ul li .name_"+i).attr("href","products/category_loadpage.json?id="+id); 
  			   });
           }
		  },    
		 'json'
		);
}

function actionLoginout(){
	$('.exit_system').click(function(){
	var url = 'login_loginout.json';
	var loginUser = $('.login_user').text(); 
		$.get(   
	          url,{username:loginUser},function cbf(data){
	              var info = eval("("+data+")");
	              if(info.flag)
	              {
	                 $('.login_out'+" a").attr("href",info.url);
	                 location.href = info.url; 
	              }
	              else
	              {
	                $.messager.show({
				    title:'系统提示',
					msg:info.msg,
					timeout:2500,
					showType:'slide'
				  });
	        }
	    },    
	   'json'
	);
})
}

//动态添加打折促销产品li
function getItems(){
	var url = 'IndexAction_getItems.json';
	var COLUMN_MAX = 4;
	var newArea = $(".new_area");
	var discountArea = $(".discount_area");
	var weeklyArea = $(".weekly_area");
	var recommendArea = $(".recommend_area");
	
	var MAX_ROWS = 3;
       $.get(   
           url,{sale_type:'0'}, function getItems(data){
           var info = eval("("+data+")");
           if(info.state == "ok"){
           	   var newRowId = 0;
           	   var discountRowId = 0;
           	   var recommendRowId = 0;
           	   var weeklyRowId = 0;
           	   var bannerRowId = 0;
           	   
               $.each(info.result,function(i,content){
               
                      var order = "Order("+content.order_count+")";
				      var imgSrc = content.mainImg; 
				      var name = content.name;
				      var price = "Price："+content.price+"$";
				      var star = content.starLevel;
				      var feedback = "Feedback("+content.feedback+")";
				      var productId = content.productId;
				      
				      var orderDiv = "<p class="+"\"order\""+"><span>"+order+"</span></p>";
				      var thumbDiv = "<div class="+"\"thumb\""+"><img "+"id= \"img_"+
				      content.itemType+"_"+i+"\" "+"></img></div>";
				      var nameDiv = "<p class="+"\"name\""+"><span>"+name+"</span></p>";
				      var priceDiv = "<p class="+"\"price\""+"><span>"+price+"</span></p>";
				      var starDiv = "<p class="+"\"star\""+"><span>"+star+"</span></p>";
				      var feedbackDiv = "<p class="+"\"feedback\""+"><span>"+feedback+"</span></p>";
               
               	  	if(content.itemType == 1){
               	  	    var count1 = $(".discount_ul_"+discountRowId+" > li").length;
               	  	    if(count1 %COLUMN_MAX != 0){
	               	  	  $(".discount_ul_"+discountRowId).append("<li class=li_"+i+" ></li>");
	               	  	}else{ 
		               	  	if(discountRowId < MAX_ROWS){
		               	  	  discountRowId = discountRowId + 1;
		           		      discountArea.append("<ul class= discount_ul_"+discountRowId+"></ul>");
		           		      $(".discount_ul_"+discountRowId).append("<li class=li_"+i+" ></li>");
		               	  	}
	               	  	}
	               	  var liDiv = "<a><div>"+orderDiv+thumbDiv+nameDiv+priceDiv+
	           		  starDiv+feedbackDiv+"</div></a>";
	               	  $(".discount_ul_"+discountRowId+" .li_"+i).append(liDiv);
	               	  $(".discount_ul_"+discountRowId+" .li_"+i+" a").attr("href","products/product_detail.json?id="+productId); 
	           		  $("#img_"+content.itemType+"_"+i).attr('class',"scrollLoading");
	           		  $("#img_"+content.itemType+"_"+i).attr('data-url',imgSrc);
	           		  $("#img_"+content.itemType+"_"+i).load(function () {
						$(this).hide();
						$(this).stop().fadeIn("5000");
						scaleImg($(this));
					  });
					  $(".scrollLoading").scrollLoading();
               	  	}else if(content.itemType == 2){
               	  	  var count2 = $(".new_ul_"+newRowId+" > li").length;
           		      if(count2 %COLUMN_MAX != 0){
	               	  	  $(".new_ul_"+newRowId).append("<li class=li_"+i+" ></li>");
	               	  }else{
	               	  	  if(newRowId<MAX_ROWS){
		               	  	  newRowId = newRowId + 1;
		           		      newArea.append("<ul class= new_ul_"+newRowId+"></ul>");
		           		      $(".new_ul_"+newRowId).append("<li class=li_"+i+" ></li>");
	               	  	  }
	               	  }
	               	  
	               	  var liDiv = "<a><div>"+orderDiv+thumbDiv+nameDiv+priceDiv+
	           		  starDiv+feedbackDiv+"</div></a>";
	               	  $(".new_ul_"+newRowId+" .li_"+i).append(liDiv);
	               	  $(".new_ul_"+newRowId+" .li_"+i+" a").attr("href","products/product_detail.json?id="+productId); 
	           		  $("#img_"+content.itemType+"_"+i).attr('class',"scrollLoading");
	           		  $("#img_"+content.itemType+"_"+i).attr('data-url',imgSrc);
	           		  $("#img_"+content.itemType+"_"+i).load(function () {
						$(this).hide();
						$(this).stop().fadeIn("5000");
						scaleImg($(this));
					  });
					  $(".scrollLoading").scrollLoading();
					  
               	  	}else if(content.itemType == 3){
           		      var count3 = $(".weekly_ul_"+weeklyRowId+" > li").length;
           		      if(count3 %COLUMN_MAX != 0){
	               	  	  $(".weekly_ul_"+weeklyRowId).append("<li class=li_"+i+" ></li>");
	               	  }else{
		               	 weeklyRowId = weeklyRowId + 1;
	           		     weeklyArea.append("<ul class= weekly_ul_"+weeklyRowId+"></ul>");
	           		     $(".weekly_ul_"+weeklyRowId).append("<li class=li_"+i+" ></li>");
	               	  }
	               	  
	               	  var liDiv = "<a><div>"+orderDiv+thumbDiv+nameDiv+priceDiv+
	           		  starDiv+feedbackDiv+"</div></a>";
	               	  $(".weekly_ul_"+weeklyRowId+" .li_"+i).append(liDiv);
	               	  $(".weekly_ul_"+weeklyRowId+" .li_"+i+" a").attr("href","products/product_detail.json?id="+productId); 
	           		  $("#img_"+content.itemType+"_"+i).attr('class',"scrollLoading");
	           		  $("#img_"+content.itemType+"_"+i).attr('data-url',imgSrc);
	           		  $("#img_"+content.itemType+"_"+i).load(function () {
						$(this).hide();
						$(this).stop().fadeIn("5000");
						scaleImg($(this));
					  });
					  $(".scrollLoading").scrollLoading();
               	  	}else if(content.itemType == 4){
           		      var count4 = $(".recommend_ul_"+recommendRowId+" > li").length;
           		      if(count4 %COLUMN_MAX != 0){
	               	  	  $(".recommend_ul_"+recommendRowId).append("<li class=li_"+i+" ></li>");
	               	  }else{
	               	  	if(recommendRowId<1){
		               	  	  recommendRowId = recommendRowId + 1;
	           		     	  recommendArea.append("<ul class= recommend_ul_"+recommendRowId+"></ul>");
	           		      	  $(".recommend_ul_"+recommendRowId).append("<li class=li_"+i+" ></li>");
	               	  	  }
	               	  }
	               	  var liDiv = "<a><div>"+orderDiv+thumbDiv+nameDiv+priceDiv+
	           		  starDiv+feedbackDiv+"</div></a>";
	               	  $(".recommend_ul_"+recommendRowId+" .li_"+i).append(liDiv);
	               	  $(".recommend_ul_"+recommendRowId+" .li_"+i+" a").attr("href","products/product_detail.json?id="+productId); 
	           		  $("#img_"+content.itemType+"_"+i).attr('class',"scrollLoading");
	           		  $("#img_"+content.itemType+"_"+i).attr('data-url',imgSrc);
	           		  $("#img_"+content.itemType+"_"+i).load(function () {
						$(this).hide();
						$(this).stop().fadeIn("5000");
						scaleImg($(this));
					  });
					  $(".scrollLoading").scrollLoading();
					  
               	  	}else if(content.itemType == 5){ 
               	  	  bannerRowId = bannerRowId + 1;
	           		  var productId = content.productId;
	           		  var thumbDiv = "<img src="+content.mainImg+">"+"</img>";
	           		  var liDiv = "<a target='_blank' >"+thumbDiv+"</a>";
	               	  $("#focus .li_"+bannerRowId).append(liDiv);
	               	  $("#focus .li_"+bannerRowId+" a").attr("href","products/product_detail.json?id="+productId);
               	  	}
	
	               discountArea.css("height",350 * (discountRowId)+'px');
	               $(".second_div").css("height",350 * (discountRowId)+100+'px');
	               //recommendArea.css("height",350 * (recommendRowId));
	               //weeklyArea.css("height",350 * (weeklyRowId));
	               $(".three_div").css("height",350 * (newRowId)+100+'px');
	               newArea.css("height",350 * (newRowId)+'px');
  			   });
           }
		  },    
		 'json'
		);
}

//轮播图片
function scrollBannerImage() {
	var sWidth = $("#focus").width(); //获取焦点图的宽度（显示面积）
	var len = $("#focus ul li").length; //获取焦点图个数
	var index = 0;
	var picTimer;
	
	//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#focus").append(btn);
	$("#focus .btnBg").css("opacity",0.5);

	//为小按钮添加鼠标滑入事件，以显示相应的内容
	$("#focus .btn span").css("opacity",0.4).mouseover(function() {
		index = $("#focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseover");

	//上一页、下一页按钮透明度处理
	$("#focus .preNext").css("opacity",0.2).hover(function() {
		$(this).stop(true,false).animate({"opacity":"0.5"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.2"},300);
	});

	//上一页按钮
	$("#focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//下一页按钮
	$("#focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
	$("#focus ul").css("width",sWidth * (len));
	
	//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
	$("#focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},4000); //此4000代表自动播放的间隔，单位：毫秒
	}).trigger("mouseleave");
	
	//显示图片函数，根据接收的index值显示相应的内容
	function showPics(index) { //普通切换
		var nowLeft = -index*sWidth; //根据index值计算ul元素的left值
		$("#focus ul").stop(true,false).animate({"left":nowLeft},300); //通过animate()调整ul元素滚动到计算出的position
		//$("#focus .btn span").removeClass("on").eq(index).addClass("on"); //为当前的按钮切换到选中的效果
		$("#focus .btn span").stop(true,false).animate({"opacity":"0.4"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //为当前的按钮切换到选中的效果
	}
}
