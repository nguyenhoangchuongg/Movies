<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
</style>
</head>
<body>
	<%@include file="menuadmin.jsp"%>
	<main>
		<div class="container" style="padding-top: 71px;">
			<div class="tab">
				<button class="tablinks active">Share Friends</button>
				<button class="tablinks">Favorite Users</button>
				<button class="tablinks">Favorite</button>
			</div>
						<div id="Share Friends" class="tabcontent">
			<form action="/ASM/favorite" method="post">
				<label for="namevideo"
					style="margin-left: 20px; margin-right: 40px; font-size: 24px;">Video
					Title</label> <select name="video" id="namevideo" style="width: 400px;">
					<c:forEach var="item" items="${items}">
					<option value="${item.title}">${item.title}</option>
					</c:forEach>
					
				</select>
					<button role="button" class="button-name">Search</button>
				</form>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Sender Name</th>
							<th scope="col">Sender Email</th>
							<th scope="col">Reciever Email</th>
							<th scope="col">Sent Day</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="item" items="${year}">
						<tr>
									<td>${item[0]}</td>
									<td>${item[1]}</td>
									<td>${item[2]}</td>
									<td>${item[3]}</td>
								</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
				<div id="Favorite" class="tabcontent">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Video Title</th>
								<th scope="col">Favorite Count</th>
								<th scope="col">Newest Day</th>
								<th scope="col">Oldest Day</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${report}">
								<tr>
									<td>${item.group}</td>
									<td>${item.likes}</td>
									<td>${item.newest}</td>
									<td>${item.oldest}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			<div id="Favorite Users" class="tabcontent">
			
				<label for="namevideo"
					style="margin-left: 20px; margin-right: 40px; font-size: 24px;">Video
					Title</label>
					 <select name="namevideo" id="namevideo" style="width: 400px;">
					<c:forEach var="item" items="${items}">
					<option value="${item.title}">${item.title}</option>
					</c:forEach>
				</select>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">User Name</th>
							<th scope="col">FullName</th>
							<th scope="col">Email</th>
							<th scope="col">Favorite Day</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Chuong</td>
							<td>NguyenHoangChuong</td>
							<td>chuongnhps22027@fpt.edu.vn</td>
							<td>28/11/2022</td>
						</tr>
					</tbody>
				</table>
			</div>


		</div>
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
            buttons[i].addEventListener("click", function () {
                var id = this.textContent;
                for (var i = 0; i < buttons.length; i++) {
                    buttons[i].classList.remove("active");
                }
                this.className += " active";
                showContent(id);
            });
        }
        showContent('Share Friends');
    </script>

</body>
</html>