$(document).ready(function()
		{
	if ($("#alertSuccess").text().trim() == "")
	{
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
		});


//UPDATE==========================================
//$(document).on("click", ".btnUpdate", function(event)
//{
// $("#hidItemIDSave").val($(this).closest("tr").find('#hidItemIDUpdate').val());
// $("#itemCode").val($(this).closest("tr").find('td:eq(0)').text());
// $("#itemName").val($(this).closest("tr").find('td:eq(1)').text());
// $("#itemPrice").val($(this).closest("tr").find('td:eq(2)').text());
// $("#itemDesc").val($(this).closest("tr").find('td:eq(3)').text());
//});

$(document).on("click", ".btnUpdate", function(event)
		{
		 $("#hidpayment_idSave").val($(this).data("payment_id"));
		 $("#card_type").val($(this).closest("tr").find('td:eq(0)').text());
         $("#Name").val($(this).closest("tr").find('td:eq(1)').text());
		 $("#cardNo").val($(this).closest("tr").find('td:eq(2)').text());
		 $("#exp_date").val($(this).closest("tr").find('td:eq(3)').text());
		 $("#cvc").val($(this).closest("tr").find('td:eq(4)').text());
		 $("#monthly_amount").val($(this).closest("tr").find('td:eq(5)').text());
		});
////CLIENT-MODEL================================================================
function validatePaymentsForm()
{
//	Card Type--------------------------------
	if ($("#card_type").val().trim() == "")
	{
		return "Insert Card type As VISA or Master.";
	}
//	Name--------------------------------
	if ($("#Name").val().trim() == "")
	{
		return "Insert User Name.";
	}
	
//	PRICE-------------------------------
//	if ($("#itemPrice").val().trim() == "")
//	{
//		return "Insert Item Price.";
//	}
//	is numerical value
//	var tmpPrice = $("#itemPrice").val().trim();
//	if (!$.isNumeric(tmpPrice))
//	{
//		return "Insert a numerical value for Item Price.";
//	}
//	convert to decimal price
//	$("#itemPrice").val(parseFloat(tmpPrice).toFixed(2));
	
//  cardNo-------------------------------
	if ($("#cardNo").val().trim() == "")
	{
		return "Insert Card No With in 16 numbers.";
	}
	
//  ExpDate-------------------------------
	if ($("#exp_date").val().trim() == "")
	{
		return "Insert Expired Date.";
	}
	
//  cvc-------------------------------
	if ($("#cvc").val().trim() == "")
	{
		return "Insert CVC With in 3 numbers.";
	}
	
//	Password------------------------
	if ($("#monthly_amount").val().trim() == "")
	{
		return "Insert payment Amount.";
	}
	return true;
}

$(document).on("click", "#btnSave", function(event)
		{
		// Clear alerts---------------------
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide();
		// Form validation-------------------
		var status = validatePaymentsForm();
		if (status != true)
		 {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
		 }
		// If valid------------------------
		var type = ($("#hidpayment_idSave").val() == "") ? "POST" : "PUT";
		 $.ajax(
		 {
		 url : "PaymentAPI",
		 type : type,
		 data : $("#formPayment").serialize(),
		 dataType : "text",
		 complete : function(response, status)
		 {
			 onPaymentSaveComplete(response.responseText, status);
		 }
		 });
		});

function onPaymentSaveComplete(response, status)
{
if (status == "success")
 {
 var resultSet = JSON.parse(response);
 if (resultSet.status.trim() == "success")
 {
 $("#alertSuccess").text("Successfully saved.");
 $("#alertSuccess").show();
 $("#divPaymentGrid").html(resultSet.data);
 } else if (resultSet.status.trim() == "error")
 {
 $("#alertError").text(resultSet.data);
 $("#alertError").show();
 }
 } else if (status == "error")
 {
 $("#alertError").text("Error while saving.");
 $("#alertError").show();
 } else
 {
 $("#alertError").text("Unknown error while saving..");
 $("#alertError").show();
 }

 $("#hidpayment_idSave").val("");
 $("#formPayment")[0].reset();
}


$(document).on("click", ".btnRemove", function(event)
		{
		 $.ajax(
		 {
		 url : "PaymentAPI",
		 type : "DELETE",
		 data : "payment_id=" + $(this).data("itemid"),
		 dataType : "text",
		 complete : function(response, status)
		 {
		 onPaymentDeleteComplete(response.responseText, status);
		 }
		 });
		});

function onPaymentDeleteComplete(response, status)
{
if (status == "success")
 {
 var resultSet = JSON.parse(response);
 if (resultSet.status.trim() == "success")
 {
 $("#alertSuccess").text("Successfully deleted.");
 $("#alertSuccess").show();
 $("#divPaymentsGrid").html(resultSet.data);
 } else if (resultSet.status.trim() == "error")
 {
 $("#alertError").text(resultSet.data);
 $("#alertError").show();
 }
 } else if (status == "error")
 {
 $("#alertError").text("Error while deleting.");
 $("#alertError").show();
 } else
 {
 $("#alertError").text("Unknown error while deleting..");
 $("#alertError").show();
 }
}


