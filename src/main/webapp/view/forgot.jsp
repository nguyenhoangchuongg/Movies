<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
		</script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
		</script>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
	<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
	<style>
	.main_div {
    color: white;
    background-color: black;
    --color: #3992e6;
    position: relative;
    z-index: 1;
    padding: 10px;
}

.main_div::before {
    content: '';
    position: absolute;
    width: 30px;
    height: 30px;
    background: transparent;
    top: -7px;
    left: -7px;
    z-index: -5;
    border-top: 3px solid var(--color);
    border-left: 3px solid var(--color);
    transition: 0.5s;
}

.main_div::after {
    content: '';
    position: absolute;
    width: 30px;
    height: 30px;
    background: transparent;
    bottom: -7px;
    right: -7px;
    z-index: -5;
    border-right: 3px solid var(--color);
    border-bottom: 3px solid var(--color);
    transition: 0.5s;
}

.main_div:hover::before {
    width: 100%;
    height: 100%;
}

.main_div:hover::after {
    width: 100%;
    height: 100%;
}

.main_div button {
    padding: 0.7em 2em;
    font-size: 16px;
    background: #222222;
    color: #fff;
    border: none;
    cursor: pointer;
    font-family: inherit;
}
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
.sig {
    text-decoration: none;
    color: gray;
}

.sig:hover {
    color: black;
}
	</style>
</head>
<body>
<%@include file="menuuser.jsp"%>
    <main class="form-signin">
        <div>
            <form action="/ASM/asm/forgot-password" method="post">
                <h1 class="h3 mb-3 fw-normal text-center">FORGOT PASSWORD</h1>
                <div class="form-floating" style="padding-bottom:10px">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Password">
                    <label for="floatingPassword">User Name</label>
                </div>
                <div class="form-floating" style="padding-bottom:10px">
                    <input type="email" class="form-control" id="floatingEmail" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                

<!--                 <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div> -->
                <button class="w-100 main_div btn-lg " type="submit">Forgot</button>
                <hr>
<!--                 <a href="" class="sig text-center" style="padding-top: 20px; padding-left: 140px;">Forgot Password?</a>
                <p class="mt-5 mb-3 text-muted sig " style="padding-left: 90px ;">Not a member<i class='bx bx-x'></i>? <a class="sig" href="">SIGN UP NOW</a></p> -->
            </form>
        </div>
    </main>
    <%@include file="footer.jsp"%>
</body>
</html>