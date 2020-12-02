function onLoaderFunc() {
	$(".seatStructure *").prop("disabled", true);
	$(".displayerBoxes *").prop("disabled", false);
}
function takeData() {
	if (($("#Numseats").val().length == 0)) {
		alert("Please Enter your Name and Number of Seats");
	}
	else if (($("#Numseats").val() > 8)) {
		alert("Can't select more than 8 seats");
	}
	else {
		$(".inputForm *").prop("disabled", true);
		$(".seatStructure *").prop("disabled", false);
		document.getElementById("notification").innerHTML = "<b style='margin-bottom:0px;background:yellow;'>Please Select your Seats NOW!</b>";
	}
}


function updateTextArea() {

	if ($("input:checked").length == ($("#Numseats").val())) {
		$(".seatStructure *").prop("disabled", false);

		var amountVals = $("#Numseats").val() * 90;
		var allNumberVals = [];
		var allSeatsVals = [];

		//Storing in Array
		allNumberVals.push($("#Numseats").val());
		$('#seatsBlock :checked').each(function() {
			allSeatsVals.push($(this).val());
		});

		//Displaying 
		$('#amountDisplay').val(amountVals);
		$('#NumberDisplay').val(allNumberVals);
		$('#seatsDisplay').val(allSeatsVals);
	}
	else {
		alert("Please select " + ($("#Numseats").val()) + " seats")
	}
}

/*
function myFunction() {
  alert($("input:checked").length);
}
function validate()
{
	var id=new RegExp("[0-9]{12}","g");
	upi=document.getElementById('upiId').value;
	if(!(upi.match(id))){
	alert("invalid upiId");
	return false;}
	return true;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}*/



$(":checkbox").click(function() {
	if ($("input:checked").length == ($("#Numseats").val())) {
		$(":checkbox").prop('disabled', true);
		$(':checked').prop('disabled', false);
	}
	else {
		$(":checkbox").prop('disabled', false);
	}
});