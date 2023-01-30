$(".nav_title").mouseover(function(){

	$(this).children(".nav_sub").stop().slideDown();

	    $(this).children("a").css({'background-color' : "rgba(255,255,255,0.6)"});
	});
	$(".nav_title").mouseleave(function(){
	         $(this).children(".nav_sub").stop().slideUp();
	        $(this).children("a").css({'background-color' : "rgba(255,255,255,0.6)"});
	});
	$(".nav_title").mouseover(function(){
	        $(this).children(".nav_sub").stop().slideDown();

	    $(this).children("a").css({'background-color' : "rgba(255,255,255,0.6)"});
	});
	$(".nav_title").mouseleave(function(){
	         $(this).children(".nav_sub").stop().slideUp();
	        $(this).children("a").css({'background-color' : "rgba(255,255,255,0.6)"});
	});


	  let m_title ='';
	$(".m_nav_title").click(function(){
	    
	    if(m_title != $(this).prop("id")){
	        $(".m_nav_sub").stop().slideUp();
	        $(this).children(".m_nav_sub").stop().slideDown(250); 
	        m_title = $(this).prop("id");
	    }
	    else{
	        $(this).children(".m_nav_sub").stop().slideUp();
	         m_title = '';
	    }
	});

	let bool_menu = true;
	$("#burgerbtn").click(function(){
	    if( bool_menu == true){
	        $("#slide_menu").animate({'right' : '0px'},160);
	        $("#slide_bg").animate({'left' : '0'},160);
	        bool_menu = false;
	    }
	    else{
	        $("#wrap").animate({'left' : '0'},200);
	        bool_menu = true;
	    }
	});

	$("#close_btn").click(function(){
	    $("#slide_menu").animate({'right' : '-50%'},200);
	    $("#slide_bg").animate({'left' : '-50%'},100);
	                           
	    bool_menu = true;
	});

	$("#slide_bg").click(function(){
	    $("#slide_menu").animate({'right' : '-50%'},200);
	    $("#slide_bg").animate({'left' : '-50%'},100);
	    
	        bool_menu = true;
	});