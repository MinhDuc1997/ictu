status = ""
function menu(){
	faculty();
	facultyEvent();
	majorsEvent();
	courseEvent();
	classEvent();
	student();
	studentEvent();
	closeDiv();
	majorsInUpdateEvent();
	add();
	facultyUpdateEvent();
	courseInUpdateEvent();
	updateStudent();
	addStudent();
	search();
}

function province(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getProvince",
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			for(i = 0; i < msg.length; i++){
				$(".country").append("<option data-value='"+msg[i][0]+"' >"+msg[i][1]+"</option>")
			}
		})
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

function facultyInUpdate(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getFaculty",
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".faculty_").append("<option>Khoa ...</option>")
			for(i = 0; i < msg.length; i++){
				for(j = 1; j< msg[i].length; j++){
					$(".faculty_").append("<option data-value='"+msg[i][j-1]+"'>"+msg[i][j]+"</option>")
				}
			}
		})
	}

function facultyUpdateEvent(){
	$(document).on("change",".faculty_",function(){
	    faculty_value = ""
	    faculty_id = ""
	    $(".faculty_ option:selected").each(function() {
	    	faculty_value = $(this).text()
	      	faculty_id += $(this).attr("data-value")
	      	$(".majors_").find("option").remove()
	      	$(".course_").find("option").remove()
	      	$(".class_").find("option").remove()
	      	courseInUpdate()
	      	if(faculty_value != "Khoa ..."){
	      		majorsInUpdate(faculty_id)
	      	}
	    })
	  }).change()
}

function facultyEvent(){
	$(document).on("change",".faculty",function(){
	    faculty_value = ""
	    faculty_id = ""
	    $(".faculty option:selected").each(function() {
	    	faculty_value += $(this).text()	
	      	faculty_id += $(this).attr("data-value")
	      	if(faculty_value !== "Khoa ..."){
	      		$(".majors").remove()
   				$(".course").remove()
    			$(".class").remove()
	      		majors(faculty_id)
	      	}else{
	      		$(".majors").remove()
   				$(".course").remove()
    			$(".class").remove()
	      	}      	
	    })
	  }).change()
}

function majors(faculty_id){
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

function majorsInUpdate(faculty_id){
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

function majorsInUpdateEvent(){
	$(document).on("change",".majors_",function(){
		majors_value = ""
		majors_id = ""
	    $(".majors_ option:selected").each(function() {
	    	majors_value += $(this).text()
	        majors_id += $(this).attr("data-value")
   			$(".class_").find('option').remove()
	      	class_InUpdate()
	    })
	}).change()
}


function majorsEvent(){
	$(document).on("change",".majors",function(){
		majors_value = ""
		majors_id = ""
	    $(".majors option:selected").each(function() {
	    	majors_value += $(this).text()
	        majors_id += $(this).attr("data-value")
	        if(majors_value !== "Ngành ..."){
	        	$(".course").remove()
   				$(".class").remove()
	      		course()
	  		}else{
	  			$(".course").remove()
   				$(".class").remove()
	  		}
	    })
	}).change()
}

function course(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getCourse"
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".menu-form").append('<select class="custom-select course" id="inlineFormCustomSelect"><option selected="">Khóa ...</option>')
			for(i = 0; i < msg.length; i++){
				$(".course").append("<option data-value='"+msg[i][0]+"''>"+msg[i][1]+"</option>")
			}
			$(".menu-form").append("</select>")
		})
   	//$(".menu-form").append('<select class="custom-select course" id="inlineFormCustomSelect"><option selected="">Khóa ...</option><option>K13</option><option>K14</option>')
}

function courseInUpdate(){
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getCourse"
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".course_").append("<option>Khóa ...</option>")
			for(i = 0; i < msg.length; i++){
				$(".course_").append("<option data-value='"+msg[i][0]+"'>"+msg[i][1]+"</option>")
			}
		})
}

function courseInUpdateEvent(){
	$(document).on("change",".course_",function(){
		course_value = ""
		course_id = ""
		$(".class_").find('option').remove()
		$(".course_ option:selected").each(function() {
			course_value += $(this).text()
	      	course_id += $(this).attr("data-value")
			if(course_value !== "Khóa ..."){		
	      		class_InUpdate()
	      	}
		})
	})
}

function courseEvent(){
	$(document).on("change",".course",function(){
		course_value = ""
		course_id = ""
	    $(".course option:selected").each(function() {
	      course_value += $(this).text()
	      course_id += $(this).attr("data-value")
	      if(course_value !== "Khóa ..."){
	      	$(".class").remove()
	      	class_();
	      }else{
	      	$(".class").remove()
	      }
	      
	    })
	}).change()
}

function class_(){
	$(".course option:selected").each(function() {
		course_id = $(this).attr("data-value")
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
		  	courseid: course_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option>')
			for(i = 0; i < msg.length; i++){
				$(".class").append("<option data-value='"+msg[i][0]+"'>"+msg[i][1]+"</option>")
			}
			$(".menu-form").append("</select>")
		})
	//$(".menu-form").append('<select class="custom-select class" id="inlineFormCustomSelect"><option selected="">Lớp ...</option><option>CNTT K14C</option><option>CNTT K14D</option>')
}

function class_InUpdate(){
	course_id = ""
	majors_id = ""
	$(".course_ option:selected").each(function() {
		course_id += $(this).attr("data-value")
		console.log(course_id)
	})
	$(".majors_ option:selected").each(function() {
		majors_id += $(this).attr("data-value")
	})
	
	request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "getClass",
		  	majorsid: majors_id,
		  	courseid: course_id
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
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
						$('.row-student-'+i).append("<td>0"+msg[i].phone+"</td>")
						$("tbody").append('</tr>')
					}else{
						$("tbody").append('<tr data-value="'+msg[i].id+'" class="row-student-'+i+'">')
						$('.row-student-'+i).append("<td class='student-id'>"+msg[i].id+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].firstname+" "+msg[i].lastname+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].gender+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].birthday+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].class+"</td>")
						$('.row-student-'+i).append("<td>"+msg[i].address+"</td>")
						$('.row-student-'+i).append("<td>0"+msg[i].phone+"</td>")
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
		$(".firstname").val(msg.firstname)
		$(".lastname").val(msg.lastname)
		$(".studentid").val(msg.id)
		if(msg.gender === "Nam"){
			$(".gender").append('<option selected>'+msg.gender+'</option>')
			$(".gender").append("<option>Nữ</option>")
		}else{
			$(".gender").append('<option selected>'+msg.gender+'</option>')
			$(".gender").append("<option>Nam</option>")
		}
		$(".country").append('<option data-value="'+msg.countryid+'" selected>'+msg.country+'</option>')
		$(".birthday_").val(msg.birthday)
		$(".phone_").val(msg.phone)
		$(".email_").val(msg.email)
		$(".residence_").val(msg.address)
		$(".parent").val(msg.parent)
		$(".parent-number").val(msg.parent_number)
		$(".faculty_").append('<option data-value="'+msg.facultyid+'" selected>'+msg.faculty+'</option>')
		$(".majors_").append('<option data-value="'+msg.majorsid+'"selected>'+msg.majors+'</option>')
		$(".course_").append('<option data-value="'+msg.courseid+'"selected>'+msg.course+'</option>')
		$(".class_").append('<option data-value="'+msg.classid+'" selected>'+msg.class+'</option>')
		if(msg.studying === "yes"){
			$(".study_").append('<option data-value="'+msg.studying+'" selected>Đang học</option>')
			$(".study_").append('<option data-value="no">Không học</option>')
		}else{
			$(".study_").append('<option data-value="'+msg.studying+'" selected>Không học</option>')
			$(".study_").append('<option data-value="yes">Đang học</option>')
		}
		majorsInUpdate(msg.facultyid)
		// /courseInUpdate()
		class_InUpdate()
		province()
	})
}

function studentEvent(){
	$(document).on("click","tr",function(){
		status = 'update'
		$(".study").append('<label class="mr-sm-2" for="inlineFormCustomSelect">Trạng thái</label><select class="study_ custom-select mb-2 mr-sm-2 mb-sm-0 sl" id="inlineFormCustomSelect"></select>')
		$(".studentid").prop({
 			disabled: true
		});
		msv = $(this).find(".student-id").text()
		if(msv != ''){
			getAllInfoStudent(msv)
			$(".over").show()
			$(".update").show()
			$(".title_").text("Xem/cập nhật thông tin sinh viên")
			$(".btn-update-student").text("Cập nhật")
		}
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
		$(".birthday_").val("")
		$(".phone_").val("")
		$(".email_").val("")
		$(".residence_").val("")
		$(".parent").val("")
		$(".parent-number").val("")
		$(".faculty_").find("option").remove()
		$(".majors_").find("option").remove()
		$(".course_").find("option").remove()
		$(".class_").find("option").remove()
		$(".country").find("option").remove()
		$(".noti").find("span").remove()
		$(".study").find("label").remove()
		$(".study").find("select").remove()
	});
}

function add(){
	$(".add").click(function(){
		status = "add"
		$(".studentid").prop({
 			disabled: false
		});
		province()
		$(".gender").append("<option>Nam</option>")
		$(".gender").append("<option>Nữ</option>")
		$(".over").show()
		$(".update").show()
		$(".title_").text("Thêm sinh viên")
		$(".btn-update-student").text("Thêm")
		facultyInUpdate()
		courseInUpdate()
	})
}
