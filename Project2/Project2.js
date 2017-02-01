var start=0;
var intervalValue=0;
var up=true;
var left=true;
var zoom=1;
$('#btnWalk').click(function(){
	var speed=$('#speedRange').val();
	if(start==0){
		intervalValue=setInterval(walk,speed);
		start++;
	}
	else{
		clearInterval(intervalValue);
		start--;
	}	
});
$('#btnZoom').click(function(){
	zoom=$('#zoomRange').val();
	$('.moble').css("zoom",zoom);
});




$(function(){
	var _move=false;
	var _x,_y;
  $(".moble").click(function(){
    
    }).mousedown(function(e){
    _move=true;
    _x=e.pageX-parseInt($(".moble").css("left"));
    _y=e.pageY-parseInt($(".moble").css("top"));
    $(".moble").fadeTo(20, 0.5);
  });
  
  $(document).mousemove(function(e){
    if(_move){
      var x=e.pageX-_x;
      var y=e.pageY-_y;
	  if(x<0)
		  x=0;
	  if(y<0)
		  y=0;
	  var maxX=$(".anamiArea").width()-$(".moble").width()+28;
	  if(x>maxX)
		  x=maxX;
	  var maxY=$(".anamiArea").height()-$(".moble").height()-50;
	  if(y>maxY)
		  y=maxY;
      $(".moble").css({top:y,left:x});
    }
  }).mouseup(function(){
  _move=false;
  $(".moble").fadeTo("fast", 1);
 });
});

function walk(){
	
	if(left&&up){
		var height=$('#leg1').outerHeight();
		$('#leg1').css("height",height-2);
		if(height<15){
			up=false;
		}
	}
	if(left&&!up){
		var height=$('#leg1').outerHeight();
		$('#leg1').css("height",height+2);
		if(height>40){
			up=true;
			left=false;
		}
	}
	if(!left&&up){
		var height=$('#leg2').outerHeight();
		$('#leg2').css("height",height-2);
		if(height<15){
			up=false;
		}
	}
	if(!left&&!up){
		var height=$('#leg2').outerHeight();
		$('#leg2').css("height",height+2);
		if(height>40){
			up=true;
			left=true;
		}
	}
	
}