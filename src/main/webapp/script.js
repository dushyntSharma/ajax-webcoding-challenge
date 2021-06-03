/**
 * 
 */


function formData() {
	var firstname = $("#firstname").val();
	var lastname = $("#lastname").val();
	var email = $("#email").val();
	var address = $("#address").val();
	var gender = $("#gender").val();
	var mobile = $("#mobile").val();
	var password = $("#password").val();
	var cpassword = $("#cpassword").val();

	console.log(email);

	var fmdata = {
		firstname: firstname,
		lastname: lastname,
		email: email,
		address: address,
		gender: gender,
		mobile: mobile,
		password: password,
		cpassword: cpassword
	}
	console.log(fmdata);
	$.ajax({
		url: "RegisterMember",
		type: "post",
		data: { "data": JSON.stringify(fmdata) },
		success: function(data) {
			window.location.href = data;
		},
		error: function(data) {
			window.location.href = data;
		}
	});


}