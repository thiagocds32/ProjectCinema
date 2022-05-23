$(document).ready(function()
{
	//funzione di controllo validità campi
	function checkData()
	{
		let textExpressionOne = /^[a-z0-9àèìòù\s'\.,-]{1,255}$/i;
		let textExpressionTwo = /^[a-z0-9àèìòù\s'\.,:-]+$/i;
		let yearExpression = /^[0-9]{4}$/;
		let priceExpression = /^\d{1,3}(\.\d{1,2})?$/;
		let quantityExpression = /^[0-9]{1,4}$/;
		return new Array
		(
			textExpressionOne.test($('#titleCl').val()),
			textExpressionOne.test($('#authorCl').val()),
			yearExpression.test($('#yearCl').val()),
			priceExpression.test($('#priceCl').val().replace(",", ".")),
			textExpressionTwo.test($('#descriptionCl').val()),
			quantityExpression.test($('#quantityCl').val())
		);
	}
	
	//funzione di invio dati in post al controller
	function sendData()
	{
		$.post
	    (
	      'bookform/saveclient',
	      {
			title:$('#titleCl').val(),
	        author:$('#authorCl').val(),
	        year:$('#yearCl').val(),
	        price:$('#priceCl').val(),
	        description:$('#descriptionCl').val(),
	        quantity:$('#quantityCl').val()
	      },
	      function (response)
	      {
	        if (response === 'save success')
				location.href = '/alphastore/books';
			else
				$('#errorAlert').css({'display':'block'});
	      }
	    );
	}
	
	//azione click button di registrazione
	$('#btnSave').click(function()
	{
		let verifiedData = checkData();
		if (verifiedData[0] && 
			verifiedData[1] && 
			verifiedData[2] && 
			verifiedData[3] && 
			verifiedData[4] &&
			verifiedData[5])
			{
				sendData();
			}
		else
		{
			if (!verifiedData[0])
			{
				$('#titleClError').css({'display':'block'});
				return;
			}
			if (!verifiedData[1])
			{
				$('#authorClError').css({'display':'block'});
				return;
			}
			if (!verifiedData[2])
			{
				$('#yearClError').css({'display':'block'});
				return;
			}
			if (!verifiedData[3])
			{
				$('#priceClError').css({'display':'block'});
				return;
			}
			if (!verifiedData[4])
			{
				$('#descriptionClError').css({'display':'block'});
				return;
			}
			if (!verifiedData[5])
			{
				$('#quantityClError').css({'display':'block'});
				return;
			}
		}
	});
	
	//reset dei messaggi di errore al focus
	$('#titleCl').focusin(function ()
	{
	  $('#titleClError').css({'display':'none'});
	});
	$('#authorCl').focusin(function ()
	{
	  $('#authorClError').css({'display':'none'});
	});
	$('#yearCl').focusin(function ()
	{
	  $('#yearClError').css({'display':'none'});
	});
	$('#priceCl').focusin(function ()
	{
	  $('#priceClError').css({'display':'none'});
	});
	$('#descriptionCl').focusin(function ()
	{
	  $('#descriptionClError').css({'display':'none'});
	});
	$('#quantityCl').focusin(function ()
	{
	  $('#quantityClError').css({'display':'none'});
	});
});