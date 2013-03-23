 function tabs(id){
  $(".slidbar>ul>li").each(function(key){
   if(id == key+1){
      $(this).attr("class","hover"); 
	  } else{
       $(this).attr("class","");
       }
	});	
   //查找幻灯片数量
  $(".slde_list>ul>li").each(function(key){
    if(id == key+1){
      $(this).fadeIn(300);
     } else {
		  $(this).fadeOut(300);
		  }
	 });	
 }
 var i = 0;

function slidbox(){
         var nums = $(".slidbar>ul>li").length;
             i = i+1;
                if( i > nums){
                   i = 1;
				   }
			tabs(i);
			
			}
$(function(){
	

auto=setInterval("slidbox()",4000)

               $(".slidbar>ul>li,.slde_list>ul>li").hover(function(){
              clearInterval(auto);
			 //alert(i);
			 if($(this).parent().parent().attr('class')=='slidbar'){
			  tabs($(this).attr("value"));
              i=$(this).attr("value");
			 }
             
            },function(){
				 if($(this).parent().parent().attr('class')=='slidbar'){
				 tabs($(this).attr("value"));
                  i=$(this).attr("value");
				 }
				  auto=setInterval("slidbox()",4000)
				
				}); 
			
			tabs(1);
			
			
			
          
		
});





             