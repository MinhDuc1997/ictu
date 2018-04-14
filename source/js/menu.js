function menu(){
	faculty();
	facultyEvent();
	majordEvent();
	caurseEvent();
	classEvent();
	student();
	studentEvent();
	closeDiv();
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

}

function facultyEvent(){
	$(document).on("change",".faculty",function(){
	    faculty_value = ""
	    faculty_id = ""
	    $(".faculty option:selected").each(function() {
	    	faculty_value += $(this).text()	
	      	faculty_id += $(this).attr("data-value")
	      	if(faculty_value !== "Khoa ..."){
	      		//console.log(faculty_id)
	      		$(".majors").remove()
   				$(".caurse").remove()
    			$(".class").remove()
	      		majord(faculty_id)
	      	}else{
	      		$(".majors").remove()
   				$(".caurse").remove()
    			$(".class").remove()
	      	}      	
	    })
	  }).change()
}

function majord(faculty_id){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getMajors",
		  	facultyid: faculty_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			//console.log(msg)
			$(".menu-form").append('<select class="custom-select majors" id="inlineFormCustomSelect"><option selected="">Ngành ...</option>')
			for(i = 0; i < msg.length; i++){
				for(j = 1; j< msg[i].length; j++){
					//console.log(msg[i][j])
					$(".majors").append("<option data-value='"+msg[i][j-1]+"'>"+msg[i][j]+"</option>")
				}
			}
			$(".menu-form").append("</select>")
		})

    //majors_ele = $(".menu-form").append('<select class="custom-select majors" id="inlineFormCustomSelect"><option selected="">Ngành ...</option><option>Cong nghe thong tin</option><option>Ky thuat phan mem</option>')
}

function majordInUpdate(faculty_id){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getMajors",
		  	facultyid: faculty_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			//console.log(msg)
			for(i = 0; i < msg.length; i++){
				for(j = 1; j< msg[i].length; j++){
					//console.log(msg[i][j])
					$(".majors_").append("<option data-value='"+msg[i][j-1]+"'>"+msg[i][j]+"</option>")
				}
			}
		})

    //majors_ele = $(".menu-form").append('<select class="custom-select majors" id="inlineFormCustomSelect"><option selected="">Ngành ...</option><option>Cong nghe thong tin</option><option>Ky thuat phan mem</option>')
}

function majordEvent(){
	$(document).on("change",".majors",function(){
		majors_value = ""
		majors_id = ""
	    $(".majors option:selected").each(function() {
	    	majors_value += $(this).text()
	        majors_id += $(this).attr("data-value")
	        if(majors_value !== "Ngành ..."){
	        	//console.log(majors_id)
	        	$(".caurse").remove()
   				$(".class").remove()
	      		caurse()
	  		}else{
	  			$(".caurse").remove()
   				$(".class").remove()
	  		}
	    })
	}).change()
}

function caurse(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getCourse"
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".menu-form").append('<select class="custom-select caurse" id="inlineFormCustomSelect"><option selected="">Khóa ...</option>')
			for(i = 0; i < msg.length; i++){
				//console.log(msg[i][1])
				$(".caurse").append("<option data-value='"+msg[i][0]+"''>"+msg[i][1]+"</option>")
			}
			$(".menu-form").append("</select>")
		})
   	//$(".menu-form").append('<select class="custom-select caurse" id="inlineFormCustomSelect"><option selected="">Khóa ...</option><option>K13</option><option>K14</option>')
}

function caurseInUpdate(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getCourse"
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			for(i = 0; i < msg.length; i++){
				//console.log(msg[i][1])
				$(".course_").append("<option data-value='"+msg[i][0]+"'>"+msg[i][1]+"</option>")
			}
		})
   	//$(".menu-form").append('<select class="custom-select caurse" id="inlineFormCustomSelect"><option selected="">Khóa ...</option><option>K13</option><option>K14</option>')
}

function caurseEvent(){
	$(document).on("change",".caurse",function(){
		caurse_value = ""
		caurse_id = ""
	    $(".caurse option:selected").each(function() {
	      caurse_value += $(this).text()
	      caurse_id += $(this).attr("data-value")
	      if(caurse_value !== "Khóa ..."){
	      	//console.log(caurse_value)
	      	$(".class").remove()
	      	class_();
	      }else{
	      	$(".class").remove()
	      }
	      
	    })
	}).change()
}

function class_(){
	$(".caurse option:selected").each(function() {
		caurse_id = $(this).attr("data-value")
	})
	$(".majors option:selected").each(function() {
		majors_id = $(this).attr("data-value")
	})
	
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getClass",
		  	majorsid: majors_id,
		  	courseid: caurse_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			//console.log(msg)
			$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option>')
			for(i = 0; i < msg.length; i++){
				$(".class").append("<option data-value='"+msg[i][0]+"'>"+msg[i][1]+"</option>")
			}
			$(".menu-form").append("</select>")
		})
	//$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option><option>CNTT K14C</option><option>CNTT K14D</option>')
}

function class_InUpdate(){
	$(".caurse_ option:selected").each(function() {
		caurse_id = $(this).attr("data-value")
	})
	$(".majors_ option:selected").each(function() {
		majors_id = $(this).attr("data-value")
	})
	
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getClass",
		  	majorsid: majors_id,
		  	courseid: caurse_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			//console.log(msg)
			for(i = 0; i < msg.length; i++){
				$(".class_").append("<option data-value='"+msg[i][0]+"'>"+msg[i][1]+"</option>")
			}
		})
	//$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option><option>CNTT K14C</option><option>CNTT K14D</option>')
}

function classEvent(){
	$(document).on("change",".class",function(){
		class_value = ""
		class_id = ""
	    $(".class option:selected").each(function() {
	      class_value += $(this).text()
	      class_id += $(this).attr("data-value")
	      if(class_value !== "Lớp ..."){
	    	}
	    })
	}).change()
}

function student(){
	$(".btn-student").click(function(){
		class_value = ""
		$(".class option:selected").each(function() {
			class_id = $(this).attr("data-value");
			class_value = $(this).text()
	    })
	    if(class_value != "" && class_value != "Lớp ..."){
	    	$(".err").text("")
	    	request = $.ajax({
			  url: "router/action.php",
			  method: "POST",
			  data: {
			  	action: "getStudent",
			  	classid: class_id
			  },
			  dataType: "json"
			})
			request.done(function(msg) {
				$("tbody").remove()
				$(".table").append("<tbody>")
				for(i = 0; i < msg.length; i++){
					if(msg[i].studying != 'yes'){
						$("tbody").append('<tr data-value="'+msg[i].id+'" class="bg-danger row-student-'+i+'">')
						$('.row-student-'+i).append("<td class='student-id'>"+msg[i].id+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].firstname+" "+msg[i].lastname+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].gender+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].birthday+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].class+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].address+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].phone+"</td>")
						$("tbody").append('</tr>')
					}else{
						$("tbody").append('<tr data-value="'+msg[i].id+'" class="row-student-'+i+'">')
						$('.row-student-'+i).append("<td class='student-id'>"+msg[i].id+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].firstname+" "+msg[i].lastname+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].gender+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].birthday+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].class+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].address+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].phone+"</td>")
						$("tbody").append('</tr>')
					}
				}
				$(".table").append("</tbody>")
			})
	    }else{
	    	$(".err").text("Vui lòng chọn đủ các trường")
	    }	
	})
	
}

function getAllInfoStudent(student_id){
	request = $.ajax({
			  url: "router/action.php",
			  method: "POST",
			  data: {
			  	action: "getAllInfoStudent",
			  	studentid: student_id
			  },
			  dataType: "json"
			})
	request.done(function(msg){
		console.log(msg)
		$(".firstname").val(msg.firstname)
		$(".lastname").val(msg.lastname)
		$(".studentid").val(msg.id)
		$(".gender").append('<option selected>'+msg.gender+'</option>')
		$(".country").append('<option selected>'+msg.country+'</option>')
		$(".residence_").val(msg.address)
		$(".parent").val(msg.parent)
		$(".parent-number").val(msg.parent_number)
		$(".facluty_").append('<option data-value="'+msg.facultyid+'" selected>'+msg.faculty+'</option>')
		$(".majors_").append('<option data-value="'+msg.majorsid+'"selected>'+msg.majors+'</option>')
		$(".course_").append('<option data-value="'+msg.courseid+'"selected>'+msg.course+'</option>')
		$(".class_").append('<option data-value="'+msg.classid+'" selected>'+msg.class+'</option>')
		majordInUpdate(msg.facultyid)
		caurseInUpdate()
		class_InUpdate()
	})
}

function studentEvent(){
	$(document).on("click","tr",function(){
		msv = $(this).find(".student-id").text()
		getAllInfoStudent(msv)
		$(".over").show()
		$(".update").show()
	})
}

function closeDiv(){
	$('.over').on('click', function(e) {
		if (e.target !== this)
	    	return;
		$(".over").hide()
		$(".update").hide()
		$(".firstname").val("")
		$(".lastname").val("")
		$(".studentid").val("")
		$(".gender").find("option").remove()
		$(".country").find("option").remove()
		$(".residence_").val("")
		$(".parent").val("")
		$(".parent-number").val("")
		$(".facluty_").find("option").remove()
		$(".majors_").find("option").remove()
		$(".course_").find("option").remove()
		$(".class_").find("option").remove()
	});
}