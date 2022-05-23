$(document).ready(function()
{
	//funzione per recuperare i prodotti selezionati
	function retrySelectedProducts()
	{
		let selectedProducts = "";
		$('input[name=orderProducts]').each(function()
		{
			let isChecked = $(this).is(':checked');
			if (isChecked)
				selectedProducts += $(this).val() + ',';
		});
		return selectedProducts;
	}
	
	//funzione di invio dati in post al controller
	function sendData(productList)
	{
		$.post
	    (
	      'orderform/save',
	      {
			customerName:$('#customerName').val(),
	        orderDate:$('#orderDate').val(),
	        productList:productList
	      },
	      function (response)
	      {
	        if (response === 'save success')
				location.href = '/alphastore/orders';
			else
				alert('Dati non corretti');
	      }
	    );
	}
	
	//azione click button di registrazione
	$('#saveButton').click(function()
	{
		sendData(retrySelectedProducts());
	});
});