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
			if(msg == 0)
				$("p").text("Sai tên tài khoản hoặc mật khẩu")
			else
				window.location.href = "http://localhost/ictu/admin";
		})
	
}