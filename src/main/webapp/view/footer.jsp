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
		.backtotop {
		position: fixed;
		bottom: 30px;
		right: 30px;
		z-index: 0;
	}

	.backtotop a {
		bottom: 20px;
		padding: 10px;
		text-align: center;
		border-radius: 50%;
		font-size: 20px;
		color: white;
		background-color: #f8f8f8;
	}

	.backtotop .icon {
		bottom: 100px;
		bottom: 40px;
	}
		.aboutus h3 {
		position: relative;
		color: black;
		font-weight: 500;
		margin-bottom: 15px;
	}

	.aboutus p {
		color: #999;
	}

	.lienket h3 {
		position: relative;
		color: black;
		font-weight: 500;
		margin-bottom: 15px;
		margin-left: 30px;
	}

	.lienket {
		position: relative;

	}

	.lienket ul li {
		list-style: none;
	}

	.lienket ul li a {
		color: #999;
		text-decoration: none;
		margin-bottom: 5px;
		display: inline-block;
	}

	.lienket ul li a:hover {
		color: black;
	}

	.contact h3 {
		position: relative;
		color: black;
		font-weight: 500;
		margin-bottom: 15px;
		margin-left: 30px;
	}

	.contact {
		position: relative;
	}

	.contact ul li {
		list-style: none;
	}

	.contact ul li p {
		color: #999;
		text-decoration: none;
		margin-bottom: 10px;
		display: inline-block;
	}

	.end {
		font-family: 'Gentium Basic', serif;
		height: 70px;
		background: whitesmoke;
		line-height: 70px;
		color: black;
		text-align: center;
	}
	</style>
</head>
<body>
<div class="album py-2 bg-light" style="margin-top: 40px;">
		<div class="container">
			<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-3">
				<div class="col-3">
					<div class="">
						<div class="footer-icon aboutus hi">
							<h3>About Us</h3>
							<p>Nguyen Hoang Chuong<i class='bx bx-x'></i> </p>
							<ul class="social-icon" style="margin-left:-50px ; display: flex; list-style: none;">
								<li><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48"
											viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M13.397 20.997v-8.196h2.765l.411-3.209h-3.176V7.548c0-.926.258-1.56 1.587-1.56h1.684V3.127A22.336 22.336 0 0 0 14.201 3c-2.444 0-4.122 1.492-4.122 4.231v2.355H7.332v3.209h2.753v8.202h3.312z">
											</path>
										</svg></a></li>
								<li><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48"
											viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M19.633 7.997c.013.175.013.349.013.523 0 5.325-4.053 11.461-11.46 11.461-2.282 0-4.402-.661-6.186-1.809.324.037.636.05.973.05a8.07 8.07 0 0 0 5.001-1.721 4.036 4.036 0 0 1-3.767-2.793c.249.037.499.062.761.062.361 0 .724-.05 1.061-.137a4.027 4.027 0 0 1-3.23-3.953v-.05c.537.299 1.16.486 1.82.511a4.022 4.022 0 0 1-1.796-3.354c0-.748.199-1.434.548-2.032a11.457 11.457 0 0 0 8.306 4.215c-.062-.3-.1-.611-.1-.923a4.026 4.026 0 0 1 4.028-4.028c1.16 0 2.207.486 2.943 1.272a7.957 7.957 0 0 0 2.556-.973 4.02 4.02 0 0 1-1.771 2.22 8.073 8.073 0 0 0 2.319-.624 8.645 8.645 0 0 1-2.019 2.083z">
											</path>
										</svg></a></li>
								<li><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48"
											viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M11.999 7.377a4.623 4.623 0 1 0 0 9.248 4.623 4.623 0 0 0 0-9.248zm0 7.627a3.004 3.004 0 1 1 0-6.008 3.004 3.004 0 0 1 0 6.008z">
											</path>
											<circle cx="16.806" cy="7.207" r="1.078"></circle>
											<path
												d="M20.533 6.111A4.605 4.605 0 0 0 17.9 3.479a6.606 6.606 0 0 0-2.186-.42c-.963-.042-1.268-.054-3.71-.054s-2.755 0-3.71.054a6.554 6.554 0 0 0-2.184.42 4.6 4.6 0 0 0-2.633 2.632 6.585 6.585 0 0 0-.419 2.186c-.043.962-.056 1.267-.056 3.71 0 2.442 0 2.753.056 3.71.015.748.156 1.486.419 2.187a4.61 4.61 0 0 0 2.634 2.632 6.584 6.584 0 0 0 2.185.45c.963.042 1.268.055 3.71.055s2.755 0 3.71-.055a6.615 6.615 0 0 0 2.186-.419 4.613 4.613 0 0 0 2.633-2.633c.263-.7.404-1.438.419-2.186.043-.962.056-1.267.056-3.71s0-2.753-.056-3.71a6.581 6.581 0 0 0-.421-2.217zm-1.218 9.532a5.043 5.043 0 0 1-.311 1.688 2.987 2.987 0 0 1-1.712 1.711 4.985 4.985 0 0 1-1.67.311c-.95.044-1.218.055-3.654.055-2.438 0-2.687 0-3.655-.055a4.96 4.96 0 0 1-1.669-.311 2.985 2.985 0 0 1-1.719-1.711 5.08 5.08 0 0 1-.311-1.669c-.043-.95-.053-1.218-.053-3.654 0-2.437 0-2.686.053-3.655a5.038 5.038 0 0 1 .311-1.687c.305-.789.93-1.41 1.719-1.712a5.01 5.01 0 0 1 1.669-.311c.951-.043 1.218-.055 3.655-.055s2.687 0 3.654.055a4.96 4.96 0 0 1 1.67.311 2.991 2.991 0 0 1 1.712 1.712 5.08 5.08 0 0 1 .311 1.669c.043.951.054 1.218.054 3.655 0 2.436 0 2.698-.043 3.654h-.011z">
											</path>
										</svg></a></li>
								<li><a href=""><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48"
											viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M21.593 7.203a2.506 2.506 0 0 0-1.762-1.766C18.265 5.007 12 5 12 5s-6.264-.007-7.831.404a2.56 2.56 0 0 0-1.766 1.778c-.413 1.566-.417 4.814-.417 4.814s-.004 3.264.406 4.814c.23.857.905 1.534 1.763 1.765 1.582.43 7.83.437 7.83.437s6.265.007 7.831-.403a2.515 2.515 0 0 0 1.767-1.763c.414-1.565.417-4.812.417-4.812s.02-3.265-.407-4.831zM9.996 15.005l.005-6 5.207 3.005-5.212 2.995z">
											</path>
										</svg></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="">
						<div class="footer-icon lienket hi">
							<h3 class="ket">Navigation</h3>
							<ul>
								<li><a href="index3.html">Home</a></li>
								<li><a href="index1.html">About Us</a></li>
								<li><a href="index1.html">Contact Details</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="">
						<div class="footer-icon lienket hi">
							<h3 class="ket">Discover</h3>
							<ul>
								<li><a href="index3.html">Help</a></li>
								<li><a href="index1.html">Privacy Policy </a></li>
								<li><a href="index1.html">Terms & Conditions</a></li>
								<li><a href="index1.html"> Customer Support</a></li>
								<li><a href="index1.html">FAQs</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-3">
					<div class="">
						<div class="footer-icon contact hi">
							<h3>CONTACT</h3>
							<ul>
								<li>
									<p><i class='bx bxs-map'></i><svg xmlns="http://www.w3.org/2000/svg" width="24"
											height="24" viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M12 14c2.206 0 4-1.794 4-4s-1.794-4-4-4-4 1.794-4 4 1.794 4 4 4zm0-6c1.103 0 2 .897 2 2s-.897 2-2 2-2-.897-2-2 .897-2 2-2z">
											</path>
											<path
												d="M11.42 21.814a.998.998 0 0 0 1.16 0C12.884 21.599 20.029 16.44 20 10c0-4.411-3.589-8-8-8S4 5.589 4 9.995c-.029 6.445 7.116 11.604 7.42 11.819zM12 4c3.309 0 6 2.691 6 6.005.021 4.438-4.388 8.423-6 9.73-1.611-1.308-6.021-5.294-6-9.735 0-3.309 2.691-6 6-6z">
											</path>
										</svg> FPT Polytechnic, Quận 12, HCM</p>
								</li>
								<li>
									<p><i class='bx bxs-phone-call'></i><svg xmlns="http://www.w3.org/2000/svg"
											width="24" height="24" viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="M17.707 12.293a.999.999 0 0 0-1.414 0l-1.594 1.594c-.739-.22-2.118-.72-2.992-1.594s-1.374-2.253-1.594-2.992l1.594-1.594a.999.999 0 0 0 0-1.414l-4-4a.999.999 0 0 0-1.414 0L3.581 5.005c-.38.38-.594.902-.586 1.435.023 1.424.4 6.37 4.298 10.268s8.844 4.274 10.269 4.298h.028c.528 0 1.027-.208 1.405-.586l2.712-2.712a.999.999 0 0 0 0-1.414l-4-4.001zm-.127 6.712c-1.248-.021-5.518-.356-8.873-3.712-3.366-3.366-3.692-7.651-3.712-8.874L7 4.414 9.586 7 8.293 8.293a1 1 0 0 0-.272.912c.024.115.611 2.842 2.271 4.502s4.387 2.247 4.502 2.271a.991.991 0 0 0 .912-.271L17 14.414 19.586 17l-2.006 2.005z">
											</path>
										</svg>123456789</p>
								</li>
								<li>
									<p><i class='bx bxl-gmail'></i> <svg xmlns="http://www.w3.org/2000/svg" width="24"
											height="24" viewBox="0 0 24 24"
											style="fill: rgba(77, 77, 77, 1);transform: ;msFilter:;">
											<path
												d="m18.73 5.41-1.28 1L12 10.46 6.55 6.37l-1.28-1A2 2 0 0 0 2 7.05v11.59A1.36 1.36 0 0 0 3.36 20h3.19v-7.72L12 16.37l5.45-4.09V20h3.19A1.36 1.36 0 0 0 22 18.64V7.05a2 2 0 0 0-3.27-1.64z">
											</path>
										</svg>Gmail: SPRING@gmail.com</p>
								</li>
								<form class="form">
									<input type="email" class="form__field" placeholder="" />
									<button style="color: gray;" type="button"
										class="btn btn--primary  uppercase">Gửi</button>
								</form>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="container ">
		<p class="text-center" style="text-align: center; margin-top: 20px;">Copyright © 2023 SPRING. Powered by NHC</p>
	</footer>
	<div class="backtotop float-end">
		<a href="#top"><svg class="icon" xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 1 24 24"
				style="fill: rgba(0, 0, 0, 1)">
				<path d="m6.293 13.293 1.414 1.414L12 10.414l4.293 4.293 1.414-1.414L12 7.586z"></path>
			</svg></a>
	</div>
</body>
</html>