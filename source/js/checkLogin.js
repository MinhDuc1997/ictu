function checkLogin(){
		request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	username: $("input[name='username']").val(),
		  	password: $("input[name='password']").val(),
		  	action: "login"
		  },
		  dataType: "html"
		})
		request.done(function(msg) {
			console.log(msg)
			if(msg == 0)
				$("p").text("Sai tên tài khoản hoặc mật khẩu")
			if(msg == 1)
				window.location.href = "http://localhost/ictu/admin";
			if(msg != 0 && msg != 1)
				$("p").text("ERR DB")
		})
	
}