<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
<style>


.wrapper {
height: auto;
width: 80%;
margin-left:auto;
margin-right: auto;
margin-top: 60px;
padding-right: 10px; /* 3 */
padding-left: 10px; /* 3 */
background-color: transparent;
}

.navbar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #e7e7e7;
  background-color: #f3f3f3;
}

.nav-line {
  float: left;
}

.nav-line a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.nav-line a:hover:not(.active) {
  background-color: #ddd;
}

.nav-line a.active {
  color: white;
  background-color: #04AA6D;
}
/*form-modal-css*/
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 8% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 60%; /* Could be more or less, depending on screen size */
  
}

/* The Close Button */
.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

/*Register modal form container*/
/* Add padding to containers */
.register-modal-form {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
#province{
	height: 40px;
    width: 20%;
}

#district{
	height: 40px;
    width: 20%;
}
/* The Modal (background) */
.loginModal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-contentLogin {
  background-color: #fefefe;
  margin: 6% auto; /* 15% from the top and centered */
  padding: 20px;
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* Add padding to containers */
.login-container {
  padding: 16px;
  background-color: white;
}

/* Set a style for the submit button */
.loginbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.loginbtn:hover {
  opacity: 1;
}

/* The Close Button */
.close-login {
  color: black;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close-login:hover,
.close-login:focus {
  color: gray;
  text-decoration: none;
  cursor: pointer;
}

</style>
<body>
	<div class="wrapper">
		<ul class="navbar">
		  <li class="nav-line"><a href="#home">Home</a></li>
		  <li class="nav-line"><a href="#news">News</a></li>
		  <li class="nav-line"><a href="#contact">Contact</a></li>
		  <li class="nav-line"><a href="#about">About</a></li>
		  <li class="nav-line" id="login-modal-button" style="float:right;cursor: pointer"><a>Sign in</a></li>
		  <li class="nav-line" id="sign-ip-modal" style="float:right;cursor: pointer"><a>Sign up</a></li>
		</ul>
		
		<!-- The Register Modal -->
		<div id="myModal" class="modal">
		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close">&times;</span>
		    <form name="form" action="addStudent" method="post">
			  <div class="register-modal-form">
			    <h1>Register</h1>
			    <p>Please fill in this form to create an account.</p>
			    <hr>
			
			    <label for="nic"><b>NIC</b></label>
			    <input type="text" placeholder="Enter NIC" name="nic" id="nic" required>
				<p id="nicvalidation" style="color: red"></p>
				<p id="nicvalidationok" style="color: green"></p>
			
				<label for="name"><b>Name</b></label>
			    <input type="text" placeholder="Enter Name" name="name" id="name" >
			    <p id="namevalidation" style="color: red"></p>
				<p id="namevalidationok" style="color: green"></p>
			    
			    
			    <label for="birthday"><b>Birthday</b></label><br>
  				<input type="date" id="birthday" name="birthday" >
  				<p id="birthdayvalidation" style="color: red"></p>
				<p id="birthdayvalidationok" style="color: green"></p>
				<br><br>
			    
			    <label for="address"><b>Address</b></label>
			    <input type="text" placeholder="Enter Address" name="address" id="address" >
				<p id="addressvalidation" style="color: red"></p>
				<p id="addressvalidationok" style="color: green"></p>
				
				
				<label><b>Province</b></label><br><br>
			    <select id="province" name="province">
				    <option>--SELECT--</option>
				  </select>
				<p id="provincevalidation" style="color: red"></p>
				<p id="provincevalidationok" style="color: green"></p>
				<br><br>
				
				<label><b>District</b></label><br><br>
			    <select id="district" name="district">
				    <option>--SELECT--</option>
				  </select>
				<p id="districtvalidation" style="color: red"></p>
				<p id="districtvalidationok" style="color: green"></p>
				<br><br>
				
			    <label for="email"><b>Email (Your User-name will be your email)</b></label>
			    <input type="text" placeholder="Enter Email" name="email" id="email" >
			    <p id="emailvalidation" style="color: red"></p>
				<p id="emailvalidationok" style="color: green"></p>
			
				<label for="password"><b>Password</b></label>
			    <input type="password" placeholder="Enter Password" name="password" id="password" >
			    <p id="passwordvalidation" style="color: red"></p>
				<p id="passwordvalidationok" style="color: green"></p>
			    
			    <label for="psw-repeat"><b>Repeat Password</b></label>
			    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" >
			    <p id="psw-repeatvalidation" style="color: red"></p>
				<p id="psw-repeatvalidationok" style="color: green"></p>
			    <hr>
			
			    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
			    <button type="submit" class="registerbtn">Register</button>
			  </div>
			
			  <div class="container signin">
			    <p>Already have an account? <a onclick="hasAccount()" style="cursor: pointer">Sign in</a>.</p>
			  </div>
			</form>
		  </div>
		</div>
		
		<!-- Login modal -->
		<!-- The Modal -->
		<div id="login-modal" class="loginModal">
		
		  <!-- Modal content -->
		  <div class="modal-contentLogin">
		  <span class="close-login">&times;</span>
		      <form id="loginForm">
				  <div class="login-container">
				    <h1>Login</h1>
				    <p>Please enter username and password to access your account.</p>
				    <hr>
				
				    <label for="email"><b>Email</b></label>
				    <input type="text" placeholder="Enter Email" name="email" id="email" >
					<p id="error"></p>
					
				    <label for="password"><b>Password</b></label>
				    <input type="password" placeholder="Enter Password" name="password" id="password" >
					<p id="error1"></p>
				  				
				    <button class="loginbtn" onclick="myFunction()">Login</button>
				    <div class="container signin">
			    		<p id="noAccount">You don't have an account? <a onclick="noAccount()" style="cursor: pointer">Sign up</a>.</p>
			  		</div>
				  </div>
			</form>
		 </div>
		
		</div>		
		
		
	</div>
<script>
	function hasAccount() {
	  document.getElementById("myModal").style.display = "none";
	  document.getElementById("login-modal").style.display = "block";
	}


	function noAccount() {
		  document.getElementById("login-modal").style.display = "none";
		  document.getElementById("myModal").style.display = "block";
	}


	//Get the modal
	var modal = document.getElementById("myModal");
	
	// Get the button that opens the modal
	var btn = document.getElementById("sign-ip-modal");
	
	//Get the modal
	var loginModal = document.getElementById("login-modal");
	
	// Get the button that opens the modal
	var loginBtn = document.getElementById("login-modal-button");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	
	//Get the <span> element that closes the modal
	var loginSpan = document.getElementsByClassName("close-login")[0];
	
	// When the user clicks on the button, open the modal
	btn.onclick = function() {
	  modal.style.display = "block";
	}

	
	//When the user clicks on the button, open the modal
	loginBtn.onclick = function() {
		loginModal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}
	
	//When the user clicks on <span> (x), close the modal
	loginSpan.onclick = function() {
		loginModal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}
	
	//When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == loginModal) {
		  loginModal.style.display = "none";
	  }
	}
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$.ajax({
		url: "ProvinceController",
		method: "GET",
		data: {operation: 'province'},
		success: function (data, textStatus, jqXHR){
			let obj = $.parseJSON(data);
			$.each(obj, function (key, value) {
				$('#province').append('<option value="' + value.provinceId+'">' + value.provinceName + '</option>')
			});
		},
		error: function (jqXHR, textStatus, errorThrown){
			$('#district').append('<option>Province Unavailable</option>');
		},
		cache: false
	});

	$('#province').change(function (){
		$('#district').find('option').remove();
		$('#district').append('<option>Select District</option>');

		let pId = $('#province').val();
		let districtData = {
				operation: "district",
				id: pId
		};

		
		$.ajax({
			url: "ProvinceController",
			method: "GET",
			data: districtData,
			success: function (data, textStatus, jqXHR){
				let obj = $.parseJSON(data);
				$.each(obj, function (key, value) {
					$('#district').append('<option value="' + value.districtId +'">' + value.districtName + '</option>')
				}); 
			},
			cache: false
		});
		});
});
</script>

<script>
function myFunction() {
	  let mail = document.getElementById("email").value;
	  let text;

	  if (isNaN(mail) || mail < 1 || mail > 10) {
	    text = "Input not valid";
	  } else {
	    text = "Input OK";
	  }
	  document.getElementById("error").innerHTML = text;

	  
	}	
</script>
</body>
</html>
