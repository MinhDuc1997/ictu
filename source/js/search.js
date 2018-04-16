function search(){
	$(".btn-search").click(function(){
		request = $.ajax({
		  url: "router/action.php",
		  method: "POST",
		  data: {
		  	action: "search",
		  	search_val: $(".ip-search").val()
		  },
		  dataType: "json"
		})
		request.done(function(msg) {
			console.log(msg)
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
	})
}