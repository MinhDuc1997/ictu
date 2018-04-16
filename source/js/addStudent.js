function addStudent(){
		firstname = ""
		lastname = ""
		studentid = ""
		gender = "" 
		birthday = ""
		phone = ""
		email = ""
		provinceid = ""
		residence = ""
		parentname = ""
		parentphone = ""
		facultyid = ""
		majorsid = ""
		courseid = "0"
		classid = ""
	$(document).on("click",".btn-update-student",function(){
		if(status == "add"){
		    firstname = $(".firstname").val()

	    	lastname = $(".lastname").val()

	    	studentid = $(".studentid").val()

		    $(".gender option:selected").each(function() {
		    	gender = $(this).text()
		    })

		    birthday = $(".birthday_").val()

		    phone = $(".phone_").val()

		    email = $(".email_").val()

		    $(".country option:selected").each(function() {
		    	provinceid = $(this).attr("data-value")
		    })

		    residence = $(".residence_").val()

		    parentname = $(".parent").val()

		    parentphone = $(".parent-number").val()

		    $(".faculty_ option:selected").each(function() {
		    	facultyid = $(this).attr("data-value")
		    })

		    $(".majors_ option:selected").each(function() {
		    	majorsid = $(this).attr("data-value")
		    })

		    $(".course_ option:selected").each(function() {
		    	courseid = $(this).attr("data-value")
		    })

			$(".class_ option:selected").each(function() {
		    	classid = $(this).attr("data-value")
		    })

			if(firstname != "" && lastname != "" && studentid != "" && gender != "" && birthday != "" && phone != "" && email
			 != "" && provinceid != "" && parentname != "" && parentphone != "" && residence != "" && classid != "" 
			 && facultyid != "" && majorsid != "" && courseid != "" && classid != ""){
				request = $.ajax({
				  url: "router/action.php",
				  method: "POST",
				  data: {
				  	action: "insertData",
				  	firstname: firstname,
				  	lastname: lastname,
				  	studentid: studentid,
				  	gender: gender,
				  	birthday: birthday,
				  	phone: phone,
				  	email: email,
				  	provinceid: provinceid,
				  	parentname: parentname,
				  	parentphone: parentphone,
				  	address: residence,
				  	classid: classid
				  },
				  dataType: "html"
				})
				request.done(function(msg) {
					console.log(msg)
					if(msg.indexOf('0') == -1){
						console.log('Đã thêm')
						$(".noti").find("span").remove()
						$(".noti").html("<span style='color: green'>Đã thêm<span>")
					}else{
						console.log('Lỗi')
						$(".noti").find("span").remove()
						$(".noti").html("<span style='color: red'>Lỗi</span>")
					}
				})	    	

				console.log(firstname+''
					+''+lastname+''+
					studentid+''+
					gender+''+
					birthday+''+
					phone+''+
					email+''+
					provinceid+''+
					residence+''+
					parentname+''+
					parentphone+''+
					facultyid+''+
					majorsid+''+
					courseid+''+classid)    
			}
		}
	})
}