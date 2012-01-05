# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
	$("select#division_id").change ->
		$.ajax 
			url: "/programs.json"
			type: "GET"
			data: "division_id="+$(this).val()
			dataType: 'json'
			success: (programs)->
				console.log(programs)
				$("#program_id").find("option").remove()
				$("#program_id").append("<option value=-1>SELECT A PROGRAM</option>")
				jQuery.each(programs, ->
					$("#program_id").append("<option value=#{this.id}>#{this.name}</option>")
				)
		$("select#program_id").change ->
			cval = $(this).val()
			window.location = "/programs/"+cval+"/edit" unless cval=="-1"