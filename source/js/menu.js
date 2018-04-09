function menu(){
	faculty();
	majord();
	caurse();
	class_();
}

function faculty(){
	$(".faculty").change(function () {
	    faculty_value = ""
	    $(".faculty option:selected").each(function() {
	      faculty_value += $(this).text()
	    })

	    if(faculty_value !== "Khoa ..."){
	    	console.log(faculty_value)
	    	$(".majors").remove()
	    	$(".caurse").remove()
	    	$(".class").remove()
	    	majors_ele = $(".menu-form").append('<select class="custom-select majors" id="inlineFormCustomSelect"><option selected="">Ngành ...</option><option>Cong nghe thong tin</option><option>Ky thuat phan mem</option>')
	    }
	  }).change()
}

function majord(){
	$(document).on("change",".majors",function(){
		majors_value = ""
	    $(".majors option:selected").each(function() {
	      majors_value += $(this).text()
	    })
	    
	    if(majors_value !== "Ngành ..."){
	    	console.log(majors_value)
	    	$(".caurse").remove()
	    	$(".class").remove()
	    	$(".menu-form").append('<select class="custom-select caurse" id="inlineFormCustomSelect"><option selected="">Khóa ...</option><option>K13</option><option>K14</option>')
	    }
	}).change()
}

function caurse(){
	$(document).on("change",".caurse",function(){
		caurse_value = ""
	    $(".caurse option:selected").each(function() {
	      caurse_value += $(this).text()
	    })
	    
	    if(caurse_value !== "Khóa ..."){
	    	console.log(caurse_value)
	    	$(".class").remove()
	    	$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option><option>CNTT K14C</option><option>CNTT K14D</option>')
	    }
	}).change()
}

function class_(){
	$(document).on("change",".class",function(){
		class_value = ""
	    $(".class option:selected").each(function() {
	      class_value += $(this).text()
	    })
	    
	    if(class_value !== "Lớp ..."){
	    	console.log(class_value)
	    }
	    request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "test",
		  	p0: class_value
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			//console.log(msg);
			for(i = 0; i < msg.length; i++){
				if(i==0){
					$("tbody").append("<tr>td>Example</td><td>"+msg[i][0]+"</td><td>Example</td><td>Example</td><td>"+msg[i][1]+"</td><td>Example</td></tr>");
				}else{
					$("tbody").append("<tr>td>Example</td><td>"+msg[i]+"</td><td>Example</td><td>Example</td><td>Example</td><td>Example</td></tr>");
				}
				console.log(msg[i]);
			}
		})
	}).change()
}