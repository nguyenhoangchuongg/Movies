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

</style>
</head>
<body>

	<%@include file="menuuser.jsp"%>
	<main>
		<div class="container">
			<div class="row">
				<form action="/ASM/watch/sendd" method="post"
					enctype="multipart/form-data">
					<article class="col-8" style="padding-top: 71px">
						<iframe src="https://www.youtube.com/embed/${form.poster}"
							name="poster" style="width: 1300px; height: 615px"> </iframe>
						<h4 value="${form.title}" name="title">${form.title}</h4>
						<p style="width: 790px;">${form.description}</p>


						<button type="button" class="btn btn-primary"
							data-bs-toggle="modal" data-bs-target="#exampleModals">
							Share</button>

						<!-- Modal -->
						<div class="modal fade" id="exampleModals" tabindex="-1"
							aria-labelledby="exampleModalLabels" aria-hidden="true">

							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabels">Send
											video your Friends</h5>
										<button type="button" class="btn-close"
											data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="form-floating">
											<input style="display: none;" name="email"
												value="${sessionScope.user.email}" type="email"
												class="form-control" id="floatingInput"
												placeholder="name@example.com"> <label
												for="floatingInput">Your Email</label>
										</div>
										<div class="form-floating">
											<input name="emailr" type="email" class="form-control"
												id="floatingInput" placeholder="name@example.com"> <label
												for="floatingInput">Your Friends Email</label>
										</div>
										<div class="form-floating">
											<input name="subject" type="text" class="form-control"
												id="floatingInput" placeholder="name@example.com"> <label
												for="floatingInput">Subject</label>
										</div>
										<div class="input-container">
											<textarea style="display: none;" name="body" id="area"
												style="width: 100%; height: 100px;">Enjoy your music
												From NHC With Love 
												https://www.youtube.com/embed/${form.poster}</textarea>
										</div>
										<input style="display: none;" type="date" id="todayDate" disabled>
										<p style="display: none;" name= "user">${sessionScope.user.id}</p>
										<p style="display: none;" name="video"> ${form.id}</p>
									</div>
									<div class="modal-footer">

										<button type="submit" class="btn "
											style="background-color: orange;">Send</button>
									</div>
								</div>
							</div>
						</div>
					</article>
				</form>
				<form action="${url}/index" method="post">

					<aside class="col-4" style="padding-top: 71px; left: 0px">
						<c:forEach var="item" items="${items}">
							<div style="padding-bottom: 10px;">
								<h6 class="text-center"
									style="position: absolute; padding-left: 180px;">${item.title}</h6>
								<a href="/ASM/watch/index/${item.id}"> <img
									src="http://i3.ytimg.com/vi/${item.poster}/hqdefault.jpg"
									class="d-block" width="40%" alt="...">
								</a>

							</div>
						</c:forEach>
					</aside>
				</form>
			</div>

		</div>

	</main>

	<h5 style="margin-left: 615px; padding-top: 20px">${message}</h5>

	<%@include file="footer.jsp"%>
	
</body>
<script>
//Lấy ngày hiện tại
var today = new Date();
var dd = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0');
var yyyy = today.getFullYear();

// Gán giá trị cho input date
document.getElementById("todayDate").value = yyyy + '-' + mm + '-' + dd;
</script>
</html>