/**
 * 
 */
function validate()
{
	var id=new RegExp("[0-9]{12}","g");
	upi=document.getElementById('upiId').value;
	if(!(upi.match(id))){
	alert("invalid upi id");
	return false;}
	return true;
}