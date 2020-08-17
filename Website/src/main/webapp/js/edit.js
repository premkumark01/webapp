
document.addEventListener('DOMContentLoaded', function(event){

  var id = localStorage.getItem("userkey");

  var xhr = new XMLHttpRequest();
	var url = "/editdata";
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.onreadystatechange = function() {
		if(xhr.readyState === 4 && xhr.status === 200)
		{
			var json = JSON.parse(xhr.responseText);
			//alert(json.email[0]);
      document.getElementById("userid").value = json.id;
      document.getElementById("fname").value = json.fname;
      document.getElementById('lname').value = json.lname;
      document.getElementById('email').value = json.email;
      document.getElementById("mobile").value = json.mobile;
		}
	};
	var data = JSON.stringify({"id": id});
	xhr.send(data);
});

function updatedata()
{
  var id = document.getElementById("userid").value;
  var fname = document.getElementById("fname").value;
  var lname = document.getElementById("lname").value;
  var email = document.getElementById("email").value;
  var mobile = document.getElementById("mobile").value;
  var xhr = new XMLHttpRequest();
	var url = "/updatedata";
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.onreadystatechange = function() {
		if(xhr.readyState === 4 && xhr.status === 200)
		{
			var json = JSON.parse(xhr.responseText);
			//alert(json.email[0]);
      window.location = "expadminpanel.jsp";
		}
	};
	var data = JSON.stringify({"id": id, "fname": fname, "lname": lname, "email": email, "mobile": mobile});
	xhr.send(data);
}
