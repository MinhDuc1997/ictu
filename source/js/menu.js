function menu(){
	faculty();
}

function faculty(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getFaculty",
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".menu-form").append('<select class="custom-select faculty" id="inlineFormCustomSelect"><option selected="">Khoa ...</option>')
			for(i = 0; i < msg.length; i++){
				for(j = 1; j< msg[i].length; j++){
					$(".faculty").append("<option data-value='"+msg[i][j-1]+"'>"+msg[i][j]+"</option>")
				}
			}
			$(".menu-form").append("</select>")
		})
	$(document).on("change",".faculty",function(){
	    faculty_value = ""
	    $(".faculty option:selected").each(function() {
	      faculty_value += $(this).attr("data-value")
	      majord();
	    })
	  }).change()
}

function majord(){
	if(faculty_value !== "Khoa ..."){
    	console.log(faculty_value)
		$(".majors").remove()
	   	$(".caurse").remove()
	    $(".class").remove()
	    majors_ele = $(".menu-form").append('<select class="custom-select majors" id="inlineFormCustomSelect"><option selected="">Ngành ...</option><option>Cong nghe thong tin</option><option>Ky thuat phan mem</option>')
	}
	$(document).on("change",".majors",function(){
		majors_value = ""
	    $(".majors option:selected").each(function() {
	      majors_value += $(this).text()
	      caurse();
	    })
	}).change()
}

function caurse(){
	if(majors_value !== "Ngành ..."){
	   	console.log(majors_value)
	   	$(".caurse").remove()
	   	$(".class").remove()
	   	$(".menu-form").append('<select class="custom-select caurse" id="inlineFormCustomSelect"><option selected="">Khóa ...</option><option>K13</option><option>K14</option>')
	}
	$(document).on("change",".caurse",function(){
		caurse_value = ""
	    $(".caurse option:selected").each(function() {
	      caurse_value += $(this).text()
	      class_();
	    })
	}).change()
}

function class_(){
	if(caurse_value !== "Khóa ..."){
    	console.log(caurse_value)
    	$(".class").remove()
		$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option><option>CNTT K14C</option><option>CNTT K14D</option>')
	}
	$(document).on("change",".class",function(){
		class_value = ""
	    $(".class option:selected").each(function() {
	      class_value += $(this).text()
	    })
	    
	    if(class_value !== "Lớp ..."){
	    	console.log(class_value)
	    }
	}).change()
}