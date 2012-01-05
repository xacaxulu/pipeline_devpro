# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	$("select#program_name").change ->
		pval = $(this).val()
		window.location = "fiscal_projections?program_id="+pval
	$("select#funnel_stage_name").change ->
		$.ajax 
			url: "/programs/"+$(this).data("program-id")+".json"
			type: "PUT"
			data: "funnel_stage_id="+$(this).val()
			dataType: 'json'
	$("input#month").blur ->
			box = $(this)
			id = box.data('id')
			amount = box.val()
			new_record = id == -1
			
			return if amount =="" && new_record==true
			
			if amount ==""
				$.ajax
					url: "/fiscal_projections/#{id}.json"
					type: "DELETE"
					complete: (data)->
						console.log(box)
						box.data("id",-1)
						console.log(box.data("id"))
			else
				$.ajax 
					url: "/fiscal_projections#{if new_record==true then "" else "/"+id}.json"
					type: if new_record==true then "POST" else "PUT"
					data:
						"fiscal_projection" :
							"program_id" : box.data("program-id")
							"year" : box.data("year")
							"amount" : amount
							"month" : box.data("month")
					dataType: 'json'
					success: (fiscal_projection)->
						console.log(box)
						box.data("id",fiscal_projection.id) if new_record==true
						console.log(box.data("id"))
