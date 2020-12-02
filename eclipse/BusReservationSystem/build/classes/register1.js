function validate()
{
var n=new RegExp("^[A-Za-z]{1,45}$","g");
var p=new RegExp("^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,}$" ,"g");
var ph=new RegExp("[0-9]{10}","g");
//var mail=new RegExp("^([a-zA-Z0-9\d\.-]+)@([a-z\d-]+)\.([a-z]{2,8})$","g");
na=document.getElementById('uid').value;
pa=document.getElementById('pwd').value;
rpa=document.getElementById('rpwd').value;
pho=document.getElementById('mno').value;
ma=document.getElementById('email').value;
sex=document.getElementById('gender').value;
//var add=document.getElementById('adid').value;

if(!(na.match(n))){
alert("invalid user name");
return false;}
if(!(pa.match(p))){
alert("password must include uppercase,lowercase,numbers,special characters");
return false;}
if(!(rpa==pa)){
alert(" password don't match'");
return false;}
if(!(pho.match(ph))){
alert("invalid phone number");
return false;}
/*if(!(ma.match(mail))){
alert("invalid mail id");
return false;}*/
//if(add=="")
//alert("invalid address");
return true;
}