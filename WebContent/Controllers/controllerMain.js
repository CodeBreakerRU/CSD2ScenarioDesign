//User -- Login -- controller

$(document).on("click", "#btnLogin", function()
{
		var result = isValidFormLogin(); //use client-Model
		if (result=="true")
			{
				$("#formLogin").submit();
			}
		else
			{
			$("#divStsMsgLogin").html(result);
			}
});

