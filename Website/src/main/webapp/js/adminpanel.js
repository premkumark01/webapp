



function validateForm() {

  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  var x = document.forms["logval"]["email"].value;
  if (mailformat.test(x) == false)
            {
                alert('Invalid Email Address');
                return (false);
            }
  var letters = /^[A-Za-z]+$/;
  if(document.forms["logval"]["fname"].value.match(letters))
  {
  return true;
  }
  else
  {
  alert('Invalid First Name');
  return false;
  }
  if(document.forms["logval"]["lname"].value.match(letters))
  {
  return true;
  }
  else
  {
  alert('Invalid First Name');
  return false;
  }
 
};

document.addEventListener('DOMContentLoaded', function(event){

	var tbl = document.getElementById('userdata');

	var xhr = new XMLHttpRequest();
	var url = "/userdata";
	xhr.open("POST", url, true);
	xhr.setRequestHeader("Content-Type", "application/json");
	xhr.onreadystatechange = function() {
		if(xhr.readyState === 4 && xhr.status === 200)
		{
			var json = JSON.parse(xhr.responseText);
			//alert(json.email[0]);

			for(i = 0; i < json.id.length; i++)
			{
				var tr = document.createElement("tr");
				tr.id = json.id[i];
				var trinfo = document.getElementById(json.id[i]);

				var editlink = document.createElement("a");
        var deletelink = document.createElement("a");
				var tdemail = document.createElement("td");
				var tdid = document.createElement("td");
				var tdfname = document.createElement("td");
				var tdlname = document.createElement("td");
				var tdmobile = document.createElement("td");
				var tdedit = document.createElement("td");
				var tddelete = document.createElement("td");

				tdemail.innerHTML = json.email[i];
				tdid.innerHTML = json.id[i];
				tdfname.innerHTML = json.fname[i];
				tdlname.innerHTML = json.lname[i];
				tdmobile.innerHTML = json.mobile[i];

        deletelink.innerHTML = "delete";
        deletelink.href = "";
        deletelink.id = json.id[i];
        deletelink.setAttribute('onclick', 'deleteclick(this.id)');
				tddelete.appendChild(deletelink);

				editlink.href = "edit.jsp";
				editlink.innerHTML = "edit";
				editlink.id = json.id[i];
        editlink.setAttribute('onclick','editclick(this.id)');
				tdedit.appendChild(editlink);

				tr.appendChild(tdid);
				tr.appendChild(tdemail);
				tr.appendChild(tdfname);
				tr.appendChild(tdlname);
				tr.appendChild(tdmobile);
				tr.appendChild(tdedit);
				tr.appendChild(tddelete);
				tbl.appendChild(tr);

			}

		}
	};
	var data = JSON.stringify({});
	xhr.send(data);

});

function editclick(id) {
  localStorage.setItem("userkey", id);
}
function deleteclick(id) {
    var xhr = new XMLHttpRequest();
  	var url = "/deletedata";
  	xhr.open("POST", url, true);
  	xhr.setRequestHeader("Content-Type", "application/json");
  	xhr.onreadystatechange = function() {
  		if(xhr.readyState === 4 && xhr.status === 200)
  		{
  			var json = JSON.parse(xhr.responseText);
  			//alert(json.email[0]);
  		}
  	};
  	var data = JSON.stringify({"id": id});
  	xhr.send(data);
}
