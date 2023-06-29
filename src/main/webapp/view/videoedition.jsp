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
<style type="text/css">
div.container {
	width: 100%;
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

.click {
	margin-left: 20px;
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
    <div class="alert m-auto" style="text-align: center;  width: 300px; " role="alert">
        ${message}
    </div>
</c:if>
	<main>
		<c:url var="url" value="/video" />
		<div class="container" style="padding-top: 71px;">
			<div class="tab">
				<button class="tablinks active">Video Editon</button>
				<button class="tablinks">Video List</button>
			</div>
			<div id="Video Editon" class="tabcontent">
				<h3></h3>
				<div>
					<form action="${url}/index" method="post">
						<div class="row">
							<article class="col-5" style="padding-bottom: 10px;">

								Hình ảnh:
								<div class="form-floating" style="padding-bottom: 10px;">
									<input value="${form.poster}" name="poster" type="text"
										class="form-control" id="floatingPassword"
										placeholder="Password"> <label for="floatingPassword">ID
										Picture</label>
								</div>
								<iframe src="https://www.youtube.com/embed/${form.poster}"
									name="poster" style="width: 510px; height: 300px"> </iframe>
								<br>

							</article>
							<aside class="col-7" style="padding-bottom: 10px;">
								<div class="form-floating" style="padding-bottom: 10px;">
									<input value="${form.id}" name="id" type="text"
										class="form-control" id="floatingPassword"
										placeholder="Password"> <label for="floatingPassword">Video
										ID</label>
								</div>
								<div class="form-floating" style="padding-bottom: 10px;">
									<input value="${form.title}" name="title" type="text"
										class="form-control" id="floatingPassword"
										placeholder="Password"> <label for="floatingPassword">Video
										Tilte</label>
								</div>
								<div class="form-floating" style="padding-bottom: 10px;">
									<input value="${form.views}" name="views" type="text"
										class="form-control" id="floatingPassword"
										placeholder="Password"> <label for="floatingPassword">Video
										count</label>
								</div>
								<div class="form-floating check1">
									<div class="form-check ">
										<input ${form.active?'checked':''} name="admin"
											class="form-check-input" type="radio" name="flexRadioDefault"
											id="flexRadioDefault2" checked> <label
											class="form-check-label" for="flexRadioDefault2">
											Active </label>
									</div>
									<div class="form-check ">
										<input ${form.active?'':'checked'} name="admin"
											class="form-check-input" type="radio" name="flexRadioDefault"
											id="flexRadioDefault1"> <label
											class="form-check-label" for="flexRadioDefault1">
											Inactive </label>
									</div>
								</div>
							</aside>
							<div>
								<div class="form-floating" style="padding-bottom: 10px;">
									<input value="${form.description}" name="description"
										type="text" class="form-control" id="floatingPassword"
										placeholder="Password"> <label for="floatingPassword">Description</label>
								</div>
							</div>
							<div style="padding-left: 375px">
								<button formaction="${url}/create" class="click">
									Create</button>
								<button formaction="${url}/update" class="click">
									Update</button>
								<button formaction="${url}/delete" class="click">
									Delete</button>
								<button href="${url}/index" class="click">Reset</button>
							</div>
						</div>
					</form>
				</div>
			</div>

			<div id="Video List" class="tabcontent">

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Video ID</th>
							<th scope="col">Video Tilte</th>
							<th scope="col">Video Count</th>
							<th scope="col">Status</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${items}">
							<tr>
								<th>${item.id}</th>
								<td>${item.title}</td>
								<td>${item.views}</td>
								<td>${item.active?'Active':'Inactive'}</td>
								<td><a href="/ASM/video/edit/${item.id}" style="">Edit</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
							<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
			</div>

		</div>
	</main>
	<%@include file="footer.jsp"%>


	<script type="text/javascript">
    var buttons = document.getElementsByClassName('tablinks');
    var contents = document.getElementsByClassName('tabcontent');
    function showContent(id){
        for (var i = 0; i < contents.length; i++) {
            contents[i].style.display = 'none';
        }
        var content = document.getElementById(id);
        content.style.display = 'block';
    }
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener("click", function(){
            var id = this.textContent;
            for (var i = 0; i < buttons.length; i++) {
                buttons[i].classList.remove("active");
            }
            this.className += " active";
            showContent(id);
        });
    }
    showContent('Video Editon');
</script>
</body>
</html>