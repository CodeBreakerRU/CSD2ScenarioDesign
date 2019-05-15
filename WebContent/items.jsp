<%@ page import="com.CSD2ScenarioDesign.models.User" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Items </title>

<script type="text/javascript" src="Controllers/jquery.js"> </script>
<script type="text/javascript" src="Controllers/controllerMain.js"></script>
</head>
<body>

	<form id="formItems" action="items.jsp" method="post">
	<input id="hidMode" name="hidMode" type="hidden" value="save">
	<input id="hidID" name="hidID" type ="hidden" value="0">
	Item Name: <input id ="txtItemName" type="text" name="txtItemName"> <br>
	Item Description: <input id="txtItemDesc" type="text" name="txtItemDesc"> <br>
	<Input id="btnSave" type="button" name="btnSave" value="Save"><br><br>


	</form>
	<br>
</body>
</html>

<script>


$(document).on("click","btnSave", function()
{
	var result = isValidFormItem(); //user client-model
	if(result=="true")
		{
			$("#formItems").html(result);
		}
});

// edit

$(document).on("click", "#btnRemove", function()
{
	$("#hidMode").val("update");
	$("#hidID").val($(this).attr("param"));
	
	$("#txtItemName").val($(this).closest("tr").find('td:eq(1)').text());
	$("#txtItemDesc").val($(this).closest("tr").find('td:eq(2)').text());
});

// remove

$(document).on("click","#btnRemove", function()
{
	$("#hideMode").val("remove");
	$("#hidID").val($(this).attr("param"));
	
	var res = confirm ("Are you sure");
	if(res == true)
	{
		$("#formItems").submit();
	}
});
</script>