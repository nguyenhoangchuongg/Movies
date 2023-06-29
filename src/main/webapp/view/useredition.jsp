<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous">
	
</script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous">
	
</script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
<style>
.form-signin {
	width: 100%;
	max-width: 430px;
	padding: 15px;
	margin: auto;
}

.form-signin .checkbox {
	font-weight: 400;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}

<
style type ="text /css ">div.container {
	width: 60%;
	margin: auto;
}

/* định dạng thẻ div chưa các button tab */
div.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* định dạng các button tab */
div.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* đổi màu khi một button tab được hover */
div.tab button:hover {
	background-color: #ddd;
}

/* đổi màu nền cho tab đang được hiển thị nội dung */
div.tab button.active {
	background-color: #ccc;
}

/* định dạng nội dung hiển thị */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}

.click {
	margin-left: 60px;
	padding: 15px 25px;
	border: unset;
	border-radius: 15px;
	color: #212121;
	z-index: 1;
	background: #e8e8e8;
	position: relative;
	font-weight: 1000;
	font-size: 17px;
	-webkit-box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
	box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
	transition: all 250ms;
	overflow: hidden;
}

.click::before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 0;
	border-radius: 15px;
	background-color: #212121;
	z-index: -1;
	-webkit-box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
	box-shadow: 4px 8px 19px -3px rgba(0, 0, 0, 0.27);
	transition: all 250ms
}

.click:hover {
	color: #e8e8e8;
}

.click:hover::before {
	width: 100%;
}

.table a {
	text-decoration: none;
	color: black;
}

.table a:hover {
	color: gray;
}
</style>
</head>
<body>

	<%@include file="menuadmin.jsp"%>
	<c:if test="${not empty message}">
		<div class="alert m-auto" style="text-align: center; width: 300px;"
			role="alert">${message}</div>
	</c:if>

	<c:url var="url" value="/user" />
	<main>
		<div class="container" style="padding-top: 71px;">

			<div class="tab">
				<button class="tablinks active">User Edition</button>
				<button class="tablinks">User List</button>
			</div>

			<div id="User Edition" class="tabcontent">
				<main class="form-signin" style="padding-top: 71px;">
					<div>
						<form action="${url}/index" method="post">
							<h1 class="h3 mb-3 fw-normal text-center">CUSTOMER
								INFORMATION</h1>
							<div class="form-floating" style="padding-bottom: 10px;">
								<input value="${form.id}" name="id" type="text"
									class="form-control" id="floatingInput"
									placeholder="name@example.com"> <label
									for="floatingInput">User Name</label>
							</div>

							<div class="form-floating" style="padding-bottom: 10px;">
								<input value="${form.fullname}" name="fullname" type="text"
									class="form-control" id="floatingInput"
									placeholder="name@example.com"> <label
									for="floatingInput">FullName</label>
							</div>
							<div class="form-floating" style="padding-bottom: 10px;">
								<input value="${form.email}" name="email" type="email"
									class="form-control" id="floatingInput"
									placeholder="name@example.com"> <label
									for="floatingInput">Email address</label>
							</div>
							<div class="form-floating" style="padding-bottom: 10px;">
								<input value="${form.password}" name="password" type="password"
									class="form-control" id="floatingPassword"
									placeholder="Password"> <label for="floatingPassword">Password</label>
							</div>
							<input ${form.admin?'checked':''} name="admin" type="radio"
								value="true">Admin <input ${form.admin?'':'checked'}
								name="admin" type="radio" value="false">User<br>
							<button class="click" formaction="${url}/update">Update</button>
							<button class="click" formaction="${url}/delete">Delete</button>
						</form>
					</div>
				</main>
			</div>

			<div id="User List" class="tabcontent">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">User Name</th>
							<th scope="col">FullName</th>
							<th scope="col">Password</th>
							<th scope="col">Email</th>
							<th scope="col">Role</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<c:forEach var="item" items="${items}">
						<tr>
							<td>${item.id}</td>
							<td>${item.fullname}</td>
							<td>${item.password}</td>
							<td>${item.email}</td>
							<td>${item.admin?'Admin':'User'}</td>
							<td><a href="/ASM/user/edit/${item.id}">Edit</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
		<c:forEach begin="1" end="${endPage}" var="i">
			<li class="page-item px-1"><a
				href="/ASM/user/index?index=${i}">${i}</a></li>
		</c:forEach>
		<li class="page-item px-1">
		<a class="page-link"
			href="/ASM/user/index?index=${index+1}"> <svg
					xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="black" class="bi bi-chevron-right" viewBox="0 0 16 16">
  						<path fill-rule="evenodd"
						d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
					</svg>
		</a></li> 
	</main>

	<%@include file="footer.jsp"%>
	<script type="text/javascript">
		var buttons = document.getElementsByClassName('tablinks');
		var contents = document.getElementsByClassName('tabcontent');
		function showContent(id) {
			for (var i = 0; i < contents.length; i++) {
				contents[i].style.display = 'none';
			}
			var content = document.getElementById(id);
			content.style.display = 'block';
		}
		for (var i = 0; i < buttons.length; i++) {
			buttons[i].addEventListener("click", function() {
				var id = this.textContent;
				for (var i = 0; i < buttons.length; i++) {
					buttons[i].classList.remove("active");
				}
				this.className += " active";
				showContent(id);
			});
		}
		showContent('User Edition');
	</script>
</body>
</html>