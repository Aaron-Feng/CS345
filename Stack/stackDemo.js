var createStack=function(){
	var stack=new Object();
	stack.size=0;
	stack.top=null;
	stack.push = function(number){
		var newNode=new createNode(number);
		if(stack.size==0){
			stack.top=newNode;
		}
		else{
			newNode.next=stack.top;
			stack.top=newNode;
		}
		stack.size++;
	};
	stack.pop=function(){
		var result=stack.top.element;
		stack.top=stack.top.next;
		stack.size--;
		return result;
	};
	stack.isEmpty=function(){
		if(stack.size==0)
			return true;
		else
			return false;
	};
	stack.toString=function(){
		var result="";
		var current=stack.top;
		while(current!=null){
			result+=current.element+"\n";
			current=current.next;
		}
		return result;
	}
	return stack;
};

var createNode=function(number){
	var node=new Object();
	node.next=null;
	node.element=number;
	return node;
};
var stack=new createStack();

$('#stackPush').click(function(){
	var input=$('#inputNumber').val();
	if(input!=''){
		stack.push($('#inputNumber').val());
		$('#showStack').val(stack.toString());
		$('#showStep').val($('#showStep').val()+"Pushed number " + input +"\n");
	}
	else{
		$('#showStep').val($('#showStep').val()+"Can't push an empty input \n");
	}
});

$('#stackPop').click(function(){
	if(stack.isEmpty()){
		$('#showStep').val($('#showStep').val()+"Can't pop from an empty Stack \n");
	}
	else{
		var result=stack.pop();
		$('#showStep').val($('#showStep').val()+"Poped "+result+ "\n");
		$('#showStack').val(stack.toString());
	}
	
});
$('#clearBoard').click(function(){	
	$('#showStep').val(" ");
});