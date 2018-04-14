function getAjax(){
	request = $.ajax({
		  url: "getFaculty.php",
		  method: "POST",
		  dataType: "json"
		})
		request.done(function(msg) {
			for(i = 0; i < msg.length; i++){
				for(j = 0; j< msg[i].length; j++){
					console.log(msg[i][j])
				}
			}
		})
}