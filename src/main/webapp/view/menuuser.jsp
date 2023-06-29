
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
.menu {
	text-align: center;
	background: black;
	padding: 0.5px;
}

.menu .nav li {
	position: relative;
	list-style: none;
	z-index: 5;
}

.menu .nav>li {
	display: inline-block;
	margin-right: 30px;
}

.menu .nav li a {
	color: white;
	text-decoration: none;
}

.menu .nav li a {
	padding: 10px;
	line-height: 20px;
	display: inline-block;
}

.menu .nav>li>a:hover {
	color: #999;
}

.menu .nav .sub-menu {
	display: none;
	position: absolute;
	top: 0;
	left: 100%;
	width: 200px;
	background-color: #f8f8f8;
	padding: 0px;
	top: 40px;
	left: 0;
	text-align: left;
	color: black;
}

.menu .nav .sub-menu>li>a {
	text-decoration: none;
	color: black;
}

.menu .nav .sub-menu>li:hover {
	background-color: gray;
}

.menu .nav li:hover>.sub-menu {
	display: block;
}
</style>
</head>
<body>
	<nav class="menu">
		<header class="p-3 bg-dark text-white">
			<div class="container">
				<div
					class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
					<ul
						class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0 nav1">
						<!-- <ul class="nav"> -->
						<li><a href="/ASM/home/index" class="nav-link px-2 ">NHC
								ENTERTAINMENT</a></li>
						<li><a href="/ASM/asm/favorite" class="nav-link px-2 ">My
								Favorite</a></li>

						<li><a href="/ASM/home/index" class="nav-link px-2 ">TV Shows</a></li>

						<li><a href="/ASM/home/index" class="nav-link px-2 ">Movies</a></li>

						<li><a href="" class="nav-link px-2 ">My Account</a>
							<ul class="sub-menu">
								<c:if test="${empty sessionScope.user }">
									<li><a href="/ASM/asm/sign-in">Login</a></li>
								</c:if>
								<c:if test="${not empty sessionScope.user }">
									<li><a href="">${sessionScope.user.fullname}</a></li>
								</c:if>
								<li><a href="/ASM/asm/forgot-password">Forgot Password</a></li>
								<c:if test="${empty sessionScope.user }">
									<li><a href="/ASM/asm/sign-up">Sign up</a></li>
								</c:if>
								<li><a href="/ASM/asm/sign-out">Log off</a></li>
								<li><a href="/ASM/asm/change-password">Change Pasword</a></li>
								<li><a href="/ASM/asm/edit-profile">Edit Profile</a></li>
							</ul></li>
					</ul>
					<form action="/ASM/search/keyword" method="get">
					<input required="" type="text" class="input" name="keyword">
					<button role="button" class="button-name">Search</button></form>
					<div class="text-end">
						<a href="/ASM/asm/sign-in"><button type="button"
								class="btn btn-outline-light me-2">Login</button></a>
					</div>
				</div>
			</div>
		</header>
	</nav>
</body>
</html>