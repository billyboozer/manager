$('<%= escape_javascript(render(partial: 'box', locals: {box: @box}))%>')
	.appendTo('#box_listing')
	.hide()
	.slideDown()
$('#total').html '<%= escape_javascript(render(partial: 'total')) %>'
