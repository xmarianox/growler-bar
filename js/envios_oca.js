$(function() {
	$('.delivery_option_radio').change(function() {
		checkOpcion();
	});
	
	$('#id-standard').click(function() {
		if ($('#selectSucursal').is(':visible') && $('#sucursal').val() == 0)
		{
			alert('Tenes que elegir una sucursal');
			return false;
		}
		
		return true;
	});
	
	
	checkOpcion();
});

function checkOpcion()
{
	if ($('.delivery_option_radio:checked').val() == '4,')
	{
		$('#selectSucursal').show();
	}	
	else
	{
		$('#sucursal').val('0');
		$('#selectSucursal').hide();
	}
}