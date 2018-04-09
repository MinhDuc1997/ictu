
function menu(){
	show_hidde()
}

function show_hidde(){
	$(".a-1").click(function(){	
		value_hidden = $(this).attr("data-value")
		console.log(value_hidden)
		$(".ul-2").toggle()
	})

	$(".a-2").click(function(){
		value_hidden = $(this).attr("data-value")
		console.log(value_hidden)
		$(this).parent().children("ul").toggle()
		request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "test",
		  	p0: value_hidden
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			for(i = 0; i < msg.length; i++){
				if(i==0){
					$("tbody").append("<tr><td>"+msg[i][0]+"</td><td>Example</td><td>Example</td><td>"+msg[i][1]+"</td><td>Example</td></tr>");
				}else{
					$("tbody").append("<tr><td>"+msg[i]+"</td><td>Example</td><td>Example</td><td>Example</td><td>Example</td></tr>");
				}
				console.log(msg[i]);
			}
		})
	})

	$(".a-3").click(function(){
		value_hidden = $(this).attr("data-value")
		console.log(value_hidden)
		$(this).parent().children("ul").toggle()
	})

	$(".a-4").click(function(){
		value_hidden = $(this).attr("data-value")
		console.log(value_hidden)
		$(this).parent().children("ul").toggle()
	})

}