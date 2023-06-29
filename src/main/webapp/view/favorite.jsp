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
    	.btn-cssbuttons {
		--btn-color: #275efe;
		position: relative;
		padding: 16px 12px;
		font-family: Roboto, sans-serif;
		font-weight: 500;
		font-size: 16px;
		line-height: 1;
		color: white;
		background: none;
		border: none;
		outline: none;
		overflow: hidden;
		cursor: pointer;
		filter: drop-shadow(0 2px 8px rgba(255, 255, 255, 0.32));
		transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
	}

	.btn-cssbuttons::before {
		position: absolute;
		content: "";
		top: 0;
		left: 0;
		z-index: -1;
		width: 100%;
		height: 100%;
		background: var(--btn-color);
		border-radius: 24px;
		transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
	}

	.btn-cssbuttons span,
	.btn-cssbuttons span span {
		display: inline-flex;
		vertical-align: middle;
		transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
	}

	.btn-cssbuttons span {
		transition-delay: 0.05s;
	}

	.btn-cssbuttons span:first-child {
		padding-right: 7px;
	}

	.btn-cssbuttons span span {
		margin-left: 8px;
		transition-delay: 0.1s;
	}

	.btn-cssbuttons ul {
		position: absolute;
		top: 50%;
		left: 0;
		right: 0;
		display: flex;
		margin: 0;
		padding: 0;
		list-style-type: none;
		transform: translateY(-50%);
	}

	.btn-cssbuttons ul li {
		flex: 1;
	}

	.btn-cssbuttons ul li a {
		display: inline-flex;
		vertical-align: middle;
		transform: translateY(55px);
		transition: 0.3s cubic-bezier(0.215, 0.61, 0.355, 1);
	}

	.btn-cssbuttons ul li a:hover {
		opacity: 0.5;
	}

	.btn-cssbuttons:hover::before {
		transform: scale(1.2);
	}

	.btn-cssbuttons:hover span,
	.btn-cssbuttons:hover span span {
		transform: translateY(-55px);
	}

	.btn-cssbuttons:hover ul li a {
		transform: translateY(0);
	}

	.btn-cssbuttons:hover ul li:nth-child(1) a {
		transition-delay: 0.15s;
	}

	.btn-cssbuttons:hover ul li:nth-child(2) a {
		transition-delay: 0.2s;
	}

	.btn-cssbuttons:hover ul li:nth-child(3) a {
		transition-delay: 0.25s;
	}
</style>
</head>
<body>
<%@include file="menuuser.jsp"%>
	<div class="container" style="padding-top: 71px;">
        <h5 style="margin-top:20px ;margin-bottom: 20px;border-left: 5px solid gray ;padding-left: 20px;"> My favorite
		</h5>
        <div class="row">
            <div class="col-md-3">
                <a href="">
                    <img src="https://upload.wikimedia.org/wikipedia/vi/thumb/a/a4/M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg/250px-M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg"
                        class="d-block" width="300px" alt="...">
                </a>
                <h4 class="text-center" style="padding-top: 10px ;">Our Beloved Summer</h4>

                <button class="btn-cssbuttons">
                    <span>Unlike</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                            style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                            <path
                                d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24"
                                style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                <path
                                    d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                                </path>
                            </svg></a>
                        </li>

                    </ul>
                </button>

                <button class="btn-cssbuttons">
                    <span>Share</span><span>
                        <svg height="16" width="16" xmlns="http://www.w3.org/2000/svg" version="1.1"
                            viewBox="0 0 1024 1024" class="icon">
                            <path fill="#ffffff"
                                d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg"
                                    width="18" height="18" viewBox="0 0 24 24"
                                    style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                    <path
                                        d="m18.73 5.41-1.28 1L12 10.46 6.55 6.37l-1.28-1A2 2 0 0 0 2 7.05v11.59A1.36 1.36 0 0 0 3.36 20h3.19v-7.72L12 16.37l5.45-4.09V20h3.19A1.36 1.36 0 0 0 22 18.64V7.05a2 2 0 0 0-3.27-1.64z">
                                    </path>
                                </svg></a>
                        </li>

                    </ul>
                </button>
                <button class="btn-cssbuttons" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <span>More Info</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg></a>
                        </li>

                    </ul>
                </button>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="https://upload.wikimedia.org/wikipedia/vi/thumb/a/a4/M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg/250px-M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg"
                        class="d-block" width="300px" alt="...">
                </a>
                <h4 class="text-center" style="padding-top: 10px ;">Our Beloved Summer</h4>

                <button class="btn-cssbuttons">
                    <span>Unike</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                            style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                            <path
                                d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24"
                                style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                <path
                                    d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                                </path>
                            </svg></a>
                        </li>

                    </ul>
                </button>

                <button class="btn-cssbuttons">
                    <span>Share</span><span>
                        <svg height="16" width="16" xmlns="http://www.w3.org/2000/svg" version="1.1"
                            viewBox="0 0 1024 1024" class="icon">
                            <path fill="#ffffff"
                                d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg"
                                    width="18" height="18" viewBox="0 0 24 24"
                                    style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                    <path
                                        d="m18.73 5.41-1.28 1L12 10.46 6.55 6.37l-1.28-1A2 2 0 0 0 2 7.05v11.59A1.36 1.36 0 0 0 3.36 20h3.19v-7.72L12 16.37l5.45-4.09V20h3.19A1.36 1.36 0 0 0 22 18.64V7.05a2 2 0 0 0-3.27-1.64z">
                                    </path>
                                </svg></a>
                        </li>

                    </ul>
                </button>
                <button class="btn-cssbuttons" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <span>More Info</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg></a>
                        </li>

                    </ul>
                </button>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="https://upload.wikimedia.org/wikipedia/vi/thumb/a/a4/M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg/250px-M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg"
                        class="d-block" width="300px" alt="...">
                </a>
                <h4 class="text-center" style="padding-top: 10px ;">Our Beloved Summer</h4>

                <button class="btn-cssbuttons">
                    <span>Unlike</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                            style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                            <path
                                d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24"
                                style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                <path
                                    d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                                </path>
                            </svg></a>
                        </li>

                    </ul>
                </button>

                <button class="btn-cssbuttons">
                    <span>Share</span><span>
                        <svg height="16" width="16" xmlns="http://www.w3.org/2000/svg" version="1.1"
                            viewBox="0 0 1024 1024" class="icon">
                            <path fill="#ffffff"
                                d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg"
                                    width="18" height="18" viewBox="0 0 24 24"
                                    style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                    <path
                                        d="m18.73 5.41-1.28 1L12 10.46 6.55 6.37l-1.28-1A2 2 0 0 0 2 7.05v11.59A1.36 1.36 0 0 0 3.36 20h3.19v-7.72L12 16.37l5.45-4.09V20h3.19A1.36 1.36 0 0 0 22 18.64V7.05a2 2 0 0 0-3.27-1.64z">
                                    </path>
                                </svg></a>
                        </li>

                    </ul>
                </button>
                <button class="btn-cssbuttons" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <span>More Info</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg></a>
                        </li>

                    </ul>
                </button>
            </div>
            <div class="col-md-3">
                <a href="">
                    <img src="https://upload.wikimedia.org/wikipedia/vi/thumb/a/a4/M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg/250px-M%C3%B9a_h%C3%A8_y%C3%AAu_d%E1%BA%A5u_c%E1%BB%A7a_ch%C3%BAng_ta_Poster.jpg"
                        class="d-block" width="300px" alt="...">
                </a>
                <h4 class="text-center" style="padding-top: 10px ;">Our Beloved Summer</h4>

                <button class="btn-cssbuttons">
                    <span>Unlike</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"
                            style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                            <path
                                d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                viewBox="0 0 24 24"
                                style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                <path
                                    d="M20.205 4.791a5.938 5.938 0 0 0-4.209-1.754A5.906 5.906 0 0 0 12 4.595a5.904 5.904 0 0 0-3.996-1.558 5.942 5.942 0 0 0-4.213 1.758c-2.353 2.363-2.352 6.059.002 8.412L12 21.414l8.207-8.207c2.354-2.353 2.355-6.049-.002-8.416z">
                                </path>
                            </svg></a>
                        </li>

                    </ul>
                </button>

                <button class="btn-cssbuttons">
                    <span>Share</span><span>
                        <svg height="16" width="16" xmlns="http://www.w3.org/2000/svg" version="1.1"
                            viewBox="0 0 1024 1024" class="icon">
                            <path fill="#ffffff"
                                d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z">
                            </path>
                        </svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg"
                                    width="18" height="18" viewBox="0 0 24 24"
                                    style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;">
                                    <path
                                        d="m18.73 5.41-1.28 1L12 10.46 6.55 6.37l-1.28-1A2 2 0 0 0 2 7.05v11.59A1.36 1.36 0 0 0 3.36 20h3.19v-7.72L12 16.37l5.45-4.09V20h3.19A1.36 1.36 0 0 0 22 18.64V7.05a2 2 0 0 0-3.27-1.64z">
                                    </path>
                                </svg></a>
                        </li>

                    </ul>
                </button>
                <button class="btn-cssbuttons" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <span>More Info</span><span>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg>
                    </span>
                    <ul>
                        <li>
                            <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(255, 255, 255, 1);transform: ;msFilter:;"><path d="M12 2C6.486 2 2 6.486 2 12s4.486 10 10 10 10-4.486 10-10S17.514 2 12 2zm0 18c-4.411 0-8-3.589-8-8s3.589-8 8-8 8 3.589 8 8-3.589 8-8 8z"></path><path d="M11 11h2v6h-2zm0-4h2v2h-2z"></path></svg></a>
                        </li>

                    </ul>
                </button>
            </div>
        </div>
    </div>
    <%@include file="footer.jsp"%>
</body>
</html>