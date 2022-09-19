<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="ko">

<head>
	<jsp:include page="../views/common/head.jsp" />

	<title>여수어때 : How about Yeosu?</title>
</head>

<body>
	<div class="lines-wrap">
		<div class="lines-inner">
			<div class="lines"></div>
		</div>
	</div>
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close">
					<span class="icofont-close js-menu-toggle"></span>
				</div>
			</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	
	<jsp:include page="../views/common/nav.jsp" />
  	
	<!-- 메인페이지 필터 -->
	<div class="hero">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-7">
					<div class="intro-wrap">
						<h1 class="px-3 mb-4 mt-2"><span class="small d-block mb-3">여행을 떠나고 싶을 때는?</span> 여수어때 #<span class="typed-words small"></span></h1>
						<!-- 메인페이지 필터 시작 -->
						<div class="row">
							<div class="col-12">
								<form class="form mt-1" action="/pension/list" name="filterFrm">
									<div class="row">
										<h4 class="ml-2 mt-1">
											<i class="far fa-calendar-alt"></i>
											예약날짜 선택
										</h4>
										<div class="col-sm-12 col-md-6 col-lg-7">
											<input type="text" class="form-control my-2 text-center" id="daterange" readonly>
											<input type="hidden" class="form-control my-2" name="startDate" readonly>
											<input type="hidden" class="form-control my-2" name="endDate" readonly>
										</div>
										<div class="col-sm-12 col-md-6 col-lg-5">
											<input type="submit" class="btn btn-primary btn-block my-2" value="Search">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 필터 슬라이드 이미지 -->
				<div class="col-xl-5 d-none d-xl-block">
					<div class="slides">
						<img src="/resources/images/여수_2.jpg" alt="Image">
						<img src="/resources/images/여수_3.jpg" alt="Image">
						<img src="/resources/images/여수_1.jpg" alt="Image">
						<img src="/resources/images/여수_4.jpg" alt="Image">
						<img src="/resources/images/여수_5.jpg" alt="Image">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 펜션 목록 -->
	<div class="untree_co-section2 bg-light">
		<!-- 이동 버튼 -->
		<div class="container">
			<div class="row align-items-center mb-3">
				<div class="col-6">
					<h2 class="heading-2">상위 10위 펜션(별점, 리뷰기준)</h2>
				</div>
				<div class="col-6 text-right properties-nav-direction">
					<a href="#" class="prev js-custom-prev-v2"><span class="icon-keyboard_backspace"></span></a>
					<a href="#" class="next js-custom-next-v2"><span class="icon-keyboard_backspace"></span></a>
				</div>
			</div>
		</div>
		<!-- 펜션 내용 -->
		<div class="owl-3-slider owl-carousel pensionlist">
			<c:forEach items="${pension}" var="p">
			<div class="item">
				<div class="property-entry">
					<img src="display?path=${p.attachs[0].path}&uuid=${p.attachs[0].uuid}" alt="Image" class="img-fluid">
					<div class="property-specs">
						<strong class="price ellipsis">${p.name}</strong>
						<ul class="list-unstyled specs">
							<li class="d-inline-flex align-items-center">
								<strong class="pt-1">
									<?xml version="1.0" ?><svg height="24" version="1.1" width="24" xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"><g transform="translate(0 -1028.4)"><path d="m66.36 1121.6-0.636-0.7v-1.2-1.2l0.39-2.2c0.214-1.3 0.39-2.3 0.39-2.4s-0.13-0.1-0.524-0.3l-0.525-0.3-0.544-1.3c-0.3-0.8-0.547-1.4-0.549-1.5s0.091-0.3 0.215-0.4c0.218-0.4 0.22-0.4 0.22-0.8v-0.4h-0.516-0.597c-0.045-0.1-0.181-0.3-0.302-0.5l-0.219-0.5h-0.335l-0.334 0.1-1.149-0.7-1.149-0.6-0.36-0.5c-0.198-0.2-0.394-0.4-0.435-0.4-0.042-0.1-0.259-0.1-0.482-0.1h-0.407l-1.231-1.6-1.23-1.6 0.053-0.9 0.053-0.8-0.381-0.5c-0.209-0.3-0.416-0.6-0.458-0.6-0.054-0.1-0.149-0.1-0.303 0h-0.275c-0.028 0-0.125-0.2-0.216-0.4-0.173-0.3-0.163-0.4 0.056-0.4h0.119c0-0.1-1.009-1.1-1.14-1.2-0.057 0-0.44-0.1-0.852-0.2l-0.748-0.1-1.88 1c-1.034 0.5-1.893 0.9-1.908 0.9-0.015-0.1 0.24-0.3 0.567-0.7 0.328-0.3 0.595-0.6 0.595-0.6s-0.209-0.2-0.464-0.4c-0.256-0.2-0.475-0.4-0.488-0.4-0.013-0.1-0.111-0.7-0.218-1.4-0.178-1.2-0.187-1.3-0.114-1.4 0.044 0 0.411-0.2 0.816-0.4l0.737-0.4 3.78 0.4c2.079 0.2 3.833 0.4 3.896 0.4 0.098 0 0.107 0 0.055-0.1-0.034 0-0.308-0.2-0.609-0.4-0.302-0.2-0.575-0.4-0.609-0.5-0.05 0-0.032-0.2 0.097-0.7 0.087-0.4 0.183-0.7 0.213-0.7s1.811-0.7 3.957-1.6l3.903-1.5 1.122 0.1c1.623 0.1 1.885 0.1 1.868 0.2-0.008 0-0.575 0.7-1.259 1.4-0.684 0.8-1.26 1.5-1.281 1.5s-0.004 0.1 0.04 0.1c0.042 0.1 0.832 0.7 1.756 1.5 0.924 0.7 1.68 1.4 1.68 1.4s-0.249 0.3-0.553 0.7l-0.553 0.5-1.02-0.1c-0.561-0.1-1.039-0.3-1.063-0.3-0.026 0 0.001-0.3 0.067-0.6 0.06-0.3 0.097-0.6 0.081-0.6-0.022-0.1-0.105-0.1-0.344-0.1-0.174 0-0.33 0-0.346 0.1-0.016 0-0.095 0.2-0.174 0.4l-0.145 0.4 0.106 0.4c0.058 0.2 0.092 0.4 0.075 0.4h-0.654c-1.028-0.1-0.91-0.2-1.326 0.4-0.198 0.3-0.37 0.5-0.381 0.6-0.013 0 0.08 0.2 0.255 0.3 0.212 0.2 0.371 0.3 0.698 0.3 0.233 0.1 0.494 0.2 0.579 0.2 0.108 0.1 0.302 0.2 0.634 0.6 0.264 0.3 0.51 0.6 0.548 0.6 0.064 0 0.394-0.9 0.394-1.1 0 0-0.043-0.1-0.097-0.2-0.086-0.1-0.098-0.2-0.098-0.7s0.008-0.6 0.091-0.6c0.24 0 2.477 0.4 2.524 0.5 0.03 0 0.489 0.5 1.02 1.2 0.825 1 0.955 1.1 0.897 1.2-0.038 0-0.671 0.4-1.409 0.8-0.737 0.5-1.351 0.8-1.365 0.8-0.015 0-0.037 0.2-0.05 0.5l-0.025 0.4h-0.246c-0.24 0-0.251 0-0.479 0.2-0.191 0.2-0.228 0.3-0.207 0.4 0.105 0.5 0.149 0.4-0.478 1-0.375 0.3-0.565 0.5-0.565 0.5 0.001 0.1 0.055 0.3 0.122 0.5 0.172 0.6 0.174 0.5-0.157 0.5-0.278 0-0.28 0-0.465-0.3-0.332-0.4-0.225-0.4-1.171-0.4h-0.895c-0.075 0.1-0.654 1.1-0.654 1.2s0.659 0.7 0.783 0.7c0.059 0 0.269-0.1 0.467-0.2l0.359-0.2 0.2 0.1 0.2 0.1-0.039 0.3c-0.021 0.2-0.039 0.4-0.041 0.5l-0.002 0.2h0.251c0.138 0 0.272 0 0.298 0.1 0.026 0 0.073 0.2 0.106 0.4 0.094 0.6 0.023 0.5 0.702 0.5h0.594l0.555-0.2 0.555-0.3 0.396 0.2c0.362 0.1 0.462 0.1 1.138 0.2h0.79c0.026 0.1 0.069 0.3 0.094 0.5 0.029 0.3 0.073 0.5 0.114 0.5h0.611c0.301 0 0.558 0.1 0.572 0.1 0.015 0 0.053 0.2 0.085 0.5 0.033 0.3 0.088 0.5 0.126 0.5 0.047 0.1 0.188 0.1 0.445 0.1h0.376l1.084 0.7c0.596 0.4 1.083 0.8 1.083 0.8s-0.142 0.2-0.317 0.4c-0.174 0.2-0.317 0.4-0.318 0.4s-0.042 0.4-0.089 0.8l-0.087 0.6-0.246 0.3c-0.317 0.3-4.549 4.8-4.663 5-0.079 0.1-0.08 0.1-0.012 0.3 0.041 0.1 0.074 0.3 0.074 0.5v0.3l-0.317 0.4c-0.174 0.1-0.317 0.3-0.317 0.3s0.109 0.2 0.243 0.3c0.134 0.2 0.244 0.4 0.244 0.4 0.001 0.1-0.378 0.6-0.441 0.6-0.023 0-0.328-0.4-0.678-0.8zm44.99-1.2c-0.07-0.1-0.11-0.2-0.16-0.4-0.1-0.5-0.12-0.4 0.66-1.3 0.38-0.4 0.7-0.8 0.7-0.8 0-0.1-0.12-0.3-0.27-0.5-0.14-0.2-0.26-0.4-0.26-0.4 0-0.1 0.29-0.5 0.34-0.5 0.03 0.1 0.16 0.2 0.3 0.4l0.24 0.4 0.07 0.7c0.11 1 0.15 0.9-0.52 1.7l-0.59 0.7h-0.2-0.31zm-4.61-2.2c-0.18 0-0.33 0-0.44-0.1-0.09-0.1-0.57-0.5-1.07-0.8-0.51-0.4-0.94-0.7-0.97-0.7s-0.05 0.1-0.05 0.2c0 0-0.03 0.1-0.06 0.1-0.09 0.1-2.59 0.6-2.64 0.6-0.02 0 0.02-0.3 0.09-0.5 0.07-0.3 0.12-0.5 0.12-0.5 0-0.1-0.11-0.2-0.25-0.2l-0.26-0.2-0.01-0.6-0.02-0.7 0.14-0.1c0.28-0.2 3.39-2.2 3.43-2.2 0.01 0 0.37 0.2 0.78 0.4 0.42 0.3 0.78 0.5 0.81 0.5 0.04 0 0.07-0.1 0.09-0.3 0.02-0.3 0.06-0.4 0.09-0.5h0.26 0.22l0.99 1.5c0.55 0.8 1 1.5 1 1.6 0 0-1.21 2.4-1.33 2.5-0.05 0.1-0.42 0.1-0.92 0zm-22.783-1c-0.394-0.1-0.737-0.1-0.761-0.1-0.024-0.1-0.346-0.9-0.716-1.9l-0.672-1.9 0.202-0.3 0.201-0.2v-0.5-0.6l-0.227-0.2c-0.124-0.2-0.381-0.5-0.571-0.7l-0.344-0.4 0.218-0.2c0.119-0.1 0.206-0.2 0.193-0.2-0.014 0-0.255-0.2-0.537-0.3l-0.512-0.4h-1.18c-1.169-0.1-1.181-0.1-1.317-0.2-0.075-0.1-0.357-0.3-0.625-0.6-0.268-0.2-0.502-0.4-0.519-0.4-0.018-0.1-0.048-0.7-0.068-1.4l-0.035-1.2 1.485-1.3 1.486-1.2 0.821-0.1 0.82-0.1 0.2 0.2c0.183 0.2 0.2 0.2 0.2 0.4v0.3l0.586 0.2c0.322 0.1 0.611 0.2 0.642 0.2s0.185-0.1 0.341-0.3c0.157-0.1 0.314-0.2 0.35-0.2s0.164 0.1 0.286 0.2l0.222 0.1 0.88 0.1h0.881l0.187-0.2 0.186-0.1v-0.4c0-0.3-0.017-0.4-0.061-0.4-0.033 0-0.19 0.1-0.347 0.3-0.158 0.3-0.312 0.4-0.342 0.4s-0.23-0.2-0.445-0.5c-0.403-0.6-0.549-0.7-0.495-0.4 0.016 0.1 0.044 0.3 0.063 0.5 0.027 0.4 0.022 0.4-0.036 0.4-0.038 0-0.237-0.2-0.443-0.3-0.276-0.2-0.381-0.3-0.4-0.4-0.014-0.1-0.051-0.3-0.082-0.5-0.054-0.3-0.071-0.4-0.411-0.8-0.701-0.8-0.735-0.8-0.824-0.8-0.043 0.1-0.079 0.1-0.079 0.2 0 0 0.186 0.3 0.413 0.6 0.364 0.5 0.407 0.6 0.358 0.7-0.099 0.2-0.448 0.6-0.486 0.6-0.04 0-0.099-0.1-0.191-0.6-0.059-0.3-0.147-0.3-0.79-0.8l-0.277-0.2-0.275 0.3c-0.262 0.2-0.281 0.2-0.431 0.1h-0.209c-0.028 0-0.441 0.3-0.916 0.8-0.476 0.4-0.894 0.8-0.93 0.8-0.063 0-0.093-0.1-0.466-1.1-0.251-0.7-0.25-0.7 0.041-0.6h0.62 0.389l0.111-0.2c0.153-0.3 0.141-0.3-0.086-0.6-0.11-0.1-0.19-0.2-0.18-0.3 0.01 0 0.187-0.2 0.392-0.3 0.308-0.3 0.417-0.3 0.617-0.3 0.217-0.1 0.292-0.1 0.684-0.5 0.243-0.2 0.441-0.4 0.441-0.5 0 0-0.044-0.1-0.098-0.3-0.053-0.1-0.097-0.2-0.097-0.2 0-0.1 0.352-0.3 0.435-0.3 0.027 0 0.122 0.1 0.21 0.2l0.16 0.3 0.78-0.1h0.83c0.026-0.1 0.071-0.2 0.099-0.3l0.051-0.2 0.848-0.3c0.466-0.2 0.855-0.4 0.865-0.4s-0.046-0.1-0.124-0.2l-0.142-0.1-0.519 0.1c-0.286 0.1-0.55 0.2-0.587 0.2-0.069-0.1-0.321-0.6-0.321-0.7 0 0 0.165-0.2 0.366-0.3 0.201-0.2 0.366-0.3 0.366-0.4 0 0-0.38-0.4-0.455-0.4-0.066 0.1-1.008 1.3-1.008 1.3s0.079 0.1 0.176 0.2l0.176 0.2-0.042 0.4-0.042 0.4-0.406 0.1c-0.633 0.2-0.646 0.2-0.768-0.1-0.058-0.1-0.126-0.2-0.151-0.3-0.029 0-0.235 0-0.555 0.1h-0.541c-0.041-0.1 0.031-0.9 0.083-1 0.094-0.2 1.704-2.3 1.796-2.4 0.076-0.1 0.353-0.2 1.054-0.3 0.523-0.2 1.003-0.3 1.066-0.3s0.772 0.2 1.575 0.4c0.804 0.2 1.471 0.3 1.483 0.3 0.101 0-0.421 0.8-0.528 0.8-0.084 0.1-0.062 0.1-0.584 0h-0.475c0 0.1 0.151 0.3 0.337 0.4l0.337 0.4 0.187-0.1c0.103-0.1 0.632-0.4 1.175-0.8l0.987-0.6 0.741-0.1h0.758c0.01-0.1-0.191-0.3-0.446-0.6-0.256-0.3-0.465-0.6-0.465-0.6 0.001 0 0.269-0.3 0.597-0.6l0.597-0.7 0.848-0.3c0.814-0.4 0.851-0.4 0.916-0.3 0.086 0.1 0.187 0.5 0.148 0.5-0.016 0-0.338 0.1-0.716 0.3-0.378 0.1-0.739 0.2-0.802 0.3-0.121 0-0.907 0.9-0.907 0.9 0 0.1 0.161 0.2 0.969 0.7 0.385 0.2 0.714 0.4 0.731 0.4s-0.019-0.1-0.079-0.2c-0.059-0.1-0.108-0.2-0.108-0.2 0-0.1 1.014-1 1.105-1 0.031 0 0.503 0.1 1.048 0.2 0.607 0.1 1.011 0.2 1.039 0.2 0.025 0 0.113-0.2 0.195-0.3l0.149-0.3 1.847-0.7 1.846-0.7 0.813 0.2c0.45 0.1 1 0.2 1.24 0.2 0.23 0.1 0.42 0.1 0.42 0.2 0 0-0.37 0.2-0.83 0.5-0.48 0.3-0.81 0.5-0.79 0.5s1.23 0.2 2.68 0.3c1.44 0.2 2.71 0.3 2.82 0.3 0.18 0 0.2 0 0.66-0.4 0.26-0.3 0.49-0.5 0.52-0.5s0.14 0.2 0.26 0.4c0.11 0.2 0.23 0.4 0.26 0.4s0.67 0.1 1.42 0.2l1.36 0.1 0.38 0.2c0.45 0.2 0.46 0.2 1.58 0.1 0.46-0.1 0.9-0.1 0.99-0.1h0.16v1.5c0 0.8-0.02 1.5-0.04 1.6-0.02 0-0.51 0-1.08 0.1-0.58 0-1.08 0.1-1.11 0.1-0.04 0.1-0.05 0.2-0.03 0.5l0.02 0.4-0.64 0.8c-0.35 0.5-0.66 0.9-0.68 0.9-0.03 0-0.06-0.1-0.07-0.1-0.04-0.2-0.23-1.4-0.23-1.5 0 0 0.15-0.2 0.32-0.4 0.18-0.3 0.32-0.5 0.32-0.5 0-0.1 0.01-0.1-1.36 0.1l-1.18 0.1-0.75 0.4c-0.41 0.2-0.77 0.4-0.8 0.4-0.07 0.1-0.16 0.6-0.12 0.6 0.02 0 0.24 0 0.48-0.1 0.25 0 0.47-0.1 0.5-0.1 0.03 0.1 0.07 0.4 0.08 0.8l0.04 0.7-0.12 0.1h-0.27c-0.31 0-0.38 0.1-0.47 0.4-0.05 0.2-0.12 0.4-0.16 0.4s-0.38 0.3-0.75 0.5c-0.38 0.3-0.68 0.5-0.68 0.5 0 0.1 0.04 0.2 0.1 0.3 0.07 0.2 0.08 0.3 0.04 0.4-0.09 0.1-0.82 0.5-0.88 0.5-0.03 0-0.12-0.2-0.19-0.5-0.08-0.2-0.16-0.4-0.18-0.5-0.06 0-0.58 0.2-0.62 0.3-0.01 0.1 0.01 0.6 0.05 1.2 0.07 0.9 0.07 1.1 0.01 1.1-0.03 0.1-0.65 0.4-1.37 0.8-0.72 0.5-1.3 0.8-1.3 0.9 0 0 0.14 0.2 0.32 0.5s0.31 0.5 0.29 0.5c-0.04 0.1-1.076 0.7-1.145 0.7-0.029 0-0.152-0.2-0.274-0.4-0.168-0.4-0.243-0.5-0.319-0.5-0.155 0-0.162 0.1-0.04 0.6l0.113 0.5 0.44 0.3c0.243 0.2 0.459 0.3 0.482 0.3 0.057 0.1-0.038 0.3-0.18 0.3-0.104 0.1-0.143 0.1-0.351 0.1-0.324-0.1-0.332-0.1-0.298 0.1s0.138 0.3 0.337 0.3c0.244 0 0.314 0 0.477 0.5 0.087 0.2 0.188 0.5 0.218 0.5 0.04 0 0.37 0.2 0.74 0.3 0.45 0.2 0.68 0.3 0.7 0.4 0.05 0.1 0.06 0.4 0.01 0.4-0.02 0-0.39-0.1-0.82-0.2s-0.79-0.1-0.806-0.1c-0.053 0-2.337-2.6-2.337-2.6 0-0.1 0.115-0.1 0.415 0 0.322 0 0.415 0 0.415-0.1 0 0-0.302-0.7-0.67-1.5l-0.669-1.4-0.018-0.4c-0.016-0.4-0.032-0.5-0.112-0.5-0.203-0.1-0.277 0-0.366 0.4l-0.086 0.4-0.61 0.4c-0.336 0.3-0.644 0.5-0.686 0.6-0.057 0-0.082 0.2-0.101 0.5l-0.024 0.5-0.439 0.2c-0.241 0-0.481 0.1-0.533 0.1-0.071 0-0.143-0.2-0.306-0.6-0.476-1.3-0.437-1.2-0.664-1.3l-0.204-0.1v-0.5c0-0.4-0.02-0.6-0.049-0.6-0.206-0.1-3.76-0.7-3.787-0.7-0.031 0.1 0.417 0.9 0.528 1 0.024 0 0.185 0 0.371-0.1l0.328-0.1 0.341 0.4c0.188 0.1 0.341 0.3 0.341 0.4 0 0-0.62 0.8-0.749 0.9-0.058 0-0.444 0.2-0.858 0.3-0.499 0.2-0.777 0.3-0.822 0.2-0.037 0-0.445-0.7-0.907-1.6-0.461-0.9-0.868-1.7-0.904-1.7-0.071-0.1-0.327-0.1-0.441 0-0.048 0-0.078 0.1-0.091 0.3l-0.019 0.4 0.591 1.2c0.581 1.1 0.596 1.1 0.888 1.4 0.469 0.3 0.688 0.5 0.771 0.4h0.658 0.551c-0.016 0.1-0.568 0.9-1.227 1.8-0.658 1-1.197 1.8-1.197 1.8 0 0.1 0.055 0.2 0.123 0.3 0.102 0.1 0.13 0.2 0.169 0.6 0.079 0.8 0.118 0.7-0.603 1.2-0.071 0.1-0.1 0.2-0.133 0.6-0.023 0.2-0.06 0.4-0.083 0.5-0.295 0.4-1.891 2.3-1.952 2.3h-0.8zm5.998-14.2c0.127 0 0.208-0.1 0.208-0.1 0-0.1-0.085-0.3-0.189-0.5-0.285-0.5-0.284-0.5-0.058-0.8 0.224-0.3 0.228-0.3 0.117-0.5-0.114-0.1-0.17-0.1-0.389 0.1l-0.193 0.2 0.044 0.8c0.043 0.8 0.078 0.9 0.196 0.9 0.031 0 0.15-0.1 0.264-0.1zm-4.519-1.1c0.344-0.3 0.324-0.3 1.41-0.2 0.389 0.1 0.725 0.1 0.747 0.1s-0.077-0.2-0.22-0.5c-0.269-0.4-0.379-0.5-0.681-0.5-0.129 0-0.139 0-0.139 0.2s-0.05 0.2-0.309 0.2c-0.125 0-0.197 0-0.378-0.2l-0.224-0.3-0.349 0.5c-0.193 0.2-0.35 0.4-0.35 0.5 0.001 0.1 0.102 0.4 0.149 0.4 0.025 0 0.18-0.1 0.344-0.2zm6.226-0.1c0.026 0 0.035-0.2 0.018-0.3l-0.03-0.2h-0.194c-0.223 0-0.249 0-0.197 0.4 0.03 0.2 0.04 0.2 0.193 0.2 0.089 0 0.184-0.1 0.21-0.1zm-36.658 13.7c-0.168-0.1-0.305-0.2-0.305-0.3 0 0 0.194-0.2 0.338-0.3l0.138-0.1 0.3 0.1c0.165 0.2 0.314 0.3 0.33 0.3 0.034 0.1-0.304 0.5-0.421 0.5-0.041 0-0.212-0.1-0.38-0.2zm33.196-0.5c-0.261-0.2-0.484-0.4-0.496-0.4-0.022-0.1 0.218-1 0.286-1.1 0.055-0.1 1.005-0.8 1.063-0.8 0.108 0 0.378 0.2 0.378 0.3s-0.635 2.2-0.699 2.2c-0.044 0.1-0.17 0-0.532-0.2zm-34.574-0.4c-0.174-0.1-0.314-0.3-0.311-0.3 0.008-0.1 0.455-0.7 0.51-0.7 0.063 0 0.731 0.9 0.704 0.9-0.04 0.1-0.451 0.3-0.521 0.3-0.036 0-0.208-0.1-0.382-0.2zm52.644-2.7c-0.84-0.2-1.55-0.4-1.57-0.4-0.05-0.1-0.14-1.1-0.1-1.1 0.04-0.1 3.1 0.7 3.18 0.7 0.05 0.1 0.29 0.9 0.29 1 0 0.2-0.09 0.1-1.8-0.2zm-3.61-0.7c-0.06 0-0.11-0.1-0.11-0.1s0.5-1.1 0.54-1.1c0.05-0.1 0.56 0 0.61 0.1 0.02 0-0.11 0.3-0.28 0.6-0.3 0.5-0.3 0.5-0.47 0.5h-0.29zm-1.53-0.2c-0.26-0.1-0.48-0.1-0.49-0.2-0.01 0 0-0.2 0.02-0.5l0.04-0.5 0.5-0.5c0.27-0.2 0.53-0.4 0.56-0.4 0.07 0 0.74 0.9 0.74 1 0 0-0.14 0.3-0.31 0.6-0.36 0.7-0.33 0.7-1.06 0.5zm-34.155-4-0.969-0.3 0.028-0.2c0.015-0.1 0.048-0.2 0.072-0.2 0.027 0 0.416 0.1 0.99 0.4 0.52 0.2 1.019 0.4 1.11 0.4 0.142 0.1 0.156 0.1 0.097 0.2-0.154 0.1-0.343 0.1-1.328-0.3zm-16.687-0.3c-0.285-0.2-0.543-0.3-0.573-0.3s-0.193 0-0.361 0.1c-0.167 0.1-0.341 0.2-0.384 0.2-0.109 0-1.734-1-1.766-1-0.029-0.1 0.066-0.4 0.126-0.5 0.021 0 0.474 0.2 1.007 0.4 0.532 0.2 0.997 0.4 1.032 0.4s0.217-0.1 0.403-0.2c0.187-0.1 0.369-0.2 0.404-0.2 0.095 0 0.962 0.9 0.962 0.9 0 0.1-0.233 0.5-0.29 0.5-0.023 0-0.275-0.1-0.56-0.3zm14.462-0.3c-0.307-0.1-0.576-0.2-0.598-0.2-0.046 0 0.046-0.5 0.107-0.5 0.046-0.1 1.175 0.3 1.238 0.3 0.05 0.1-0.046 0.4-0.13 0.4-0.036 0.1-0.264 0.1-0.617 0zm41.63-1.3c-0.12-0.4-0.21-0.8-0.19-0.8h0.16c0.09 0 0.22 0.2 0.48 0.6 0.19 0.2 0.35 0.5 0.35 0.5 0.01 0-0.46 0.4-0.52 0.4-0.03 0-0.15-0.3-0.28-0.7zm-40.766 0.4c-0.223-0.2-0.232-0.2-0.232-0.4 0-0.1 0.019-0.2 0.043-0.2 0.04 0 0.413 0.4 0.474 0.6 0.04 0.1-0.01 0.1-0.285 0zm-19.976-0.4c-0.062-0.1-0.402-0.8-0.402-0.9s0.13 0 0.706 0.2c0.311 0.1 0.558 0.2 0.549 0.2-0.016 0.1-0.707 0.5-0.774 0.5h-0.079zm58.792-1c-0.12-0.2-0.22-0.3-0.21-0.3 0.01-0.1 0.37-0.3 0.79-0.5 0.43-0.3 0.8-0.5 0.83-0.5 0.04 0 0.18-0.4 0.32-0.8s0.28-0.8 0.31-0.8c0.05 0 0.16 0 0.5 0.2 0.24 0.2 0.44 0.3 0.45 0.3 0.02 0.1-0.85 1.5-1.01 1.7-0.06 0.1-1.65 0.9-1.73 0.9-0.01 0-0.12-0.1-0.25-0.2zm-22.397-1.2c-0.057 0-0.118-0.1-0.135-0.1-0.033 0 0.165-0.4 0.229-0.4 0.044 0 0.106 0.2 0.155 0.4 0.029 0.1 0.021 0.1-0.055 0.1h-0.194zm25.757-1.9c-0.11-0.1-0.12-0.2-0.06-0.2 0.08-0.1 1.04-0.5 1.12-0.5s0.43 0.3 0.43 0.3c0 0.1-1.17 0.6-1.3 0.6-0.03 0-0.12-0.1-0.19-0.2zm-30.06-1.4c-0.138-0.1-0.25-0.3-0.25-0.3 0-0.1 0.388-0.7 0.453-0.7 0.032 0 0.173 0.1 0.312 0.3 0.183 0.2 0.241 0.3 0.211 0.4-0.067 0.1-0.395 0.5-0.437 0.5-0.021 0-0.151-0.1-0.289-0.2zm1.086 0c-0.014 0 0.03-0.2 0.099-0.3 0.159-0.3 0.158-0.4-0.025-0.5-0.083-0.1-0.24-0.3-0.349-0.4l-0.198-0.2 0.26-0.3c0.18-0.2 0.278-0.3 0.317-0.2 0.031 0 0.116 0.2 0.19 0.4 0.121 0.3 0.172 0.3 0.501 0.6l0.366 0.3-0.034 0.3c-0.019 0.2-0.06 0.3-0.09 0.3-0.031 0.1-0.271 0.1-0.533 0.1-0.365 0-0.484 0-0.504-0.1zm-34.816-2.5c-0.052 0-0.039-3 0.013-3 0.026 0 0.778 0.3 1.671 0.6l1.625 0.7 0.18 0.2c0.099 0.2 0.182 0.3 0.183 0.4h-1.229c-1.176 0-1.242 0-1.463 0.1-0.128 0-0.232 0.1-0.232 0.1s0.113 0.2 0.251 0.3c0.139 0.1 0.239 0.3 0.225 0.3s-0.267 0.1-0.58 0.2c-0.611 0.2-0.598 0.2-0.644 0.1zm26.812 0c-0.143 0-0.204-0.1-0.737-0.9-0.32-0.5-0.596-1-0.612-1-0.017 0-0.139-0.6-0.272-1.3-0.132-0.6-0.252-1.2-0.266-1.2-0.054-0.1-0.95-0.8-1.016-0.8-0.038 0-0.264 0.1-0.502 0.2-0.239 0.1-0.46 0.1-0.493 0.1-0.075 0-0.556-0.6-0.556-0.7s1.683-2.2 1.774-2.2c0.075-0.1 7.17-0.9 7.32-0.9 0.137 0 1.808 1.3 1.808 1.4s-0.186 0.3-0.414 0.5-0.43 0.3-0.447 0.4c-0.018 0-0.069 0.5-0.113 1s-0.101 1-0.126 1c-0.025 0.1-0.366 0.6-0.757 1.2-0.655 1.1-0.725 1.1-0.89 1.2-0.099 0-0.63 0.2-1.18 0.4l-1 0.3-0.288 0.7-0.288 0.6h-0.395-0.55zm4.94-0.8c-0.235-0.4-0.398-0.7-0.375-0.7 0.065 0 1.53-0.4 1.588-0.4 0.138 0.1 0.661 0.6 0.661 0.7 0 0-1.234 0.9-1.385 1-0.051 0-0.195-0.2-0.489-0.6z"/><g fill="#e67e22"><path d="m22 1038.2c0 0.2-0.104 0.4-0.312 0.6l-4.363 4.2 1.033 6.1c0.008 0 0.012 0.1 0.012 0.2 0 0.2-0.044 0.3-0.132 0.4-0.08 0.1-0.2 0.2-0.361 0.2-0.152 0-0.312 0-0.48-0.1l-5.397-2.9-5.3966 2.9c-0.1763 0.1-0.3366 0.1-0.4808 0.1-0.1683 0-0.2965-0.1-0.3846-0.2-0.0802-0.1-0.1202-0.2-0.1202-0.4 0 0 0.008-0.1 0.024-0.2l1.0337-6.1-4.375-4.2c-0.2003-0.2-0.3005-0.4-0.3005-0.6 0-0.3 0.2244-0.5 0.6731-0.5l6.0336-0.9 2.7043-5.5c0.152-0.3 0.349-0.5 0.589-0.5s0.437 0.2 0.589 0.5l2.704 5.5 6.034 0.9c0.449 0 0.673 0.2 0.673 0.5" fill="#e67e22"/></g><g fill="#f1c40f"><path d="m22 1037.2c0 0.2-0.104 0.4-0.312 0.6l-4.363 4.2 1.033 6.1c0.008 0 0.012 0.1 0.012 0.2 0 0.2-0.044 0.3-0.132 0.4-0.08 0.1-0.2 0.2-0.361 0.2-0.152 0-0.312 0-0.48-0.1l-5.397-2.9-5.3966 2.9c-0.1763 0.1-0.3366 0.1-0.4808 0.1-0.1683 0-0.2965-0.1-0.3846-0.2-0.0802-0.1-0.1202-0.2-0.1202-0.4 0 0 0.008-0.1 0.024-0.2l1.0337-6.1-4.375-4.2c-0.2003-0.2-0.3005-0.4-0.3005-0.6 0-0.3 0.2244-0.5 0.6731-0.5l6.0336-0.9 2.7043-5.5c0.152-0.3 0.349-0.5 0.589-0.5s0.437 0.2 0.589 0.5l2.704 5.5 6.034 0.9c0.449 0 0.673 0.2 0.673 0.5" fill="#f1c40f"/></g></g></svg>
									${p.starRate} 점
								</strong>
							</li>
							<li class="d-inline-flex align-items-center">
								<strong>
									<?xml version="1.0" ?><!DOCTYPE svg  PUBLIC '-//W3C//DTD SVG 1.1//EN'  'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'><svg enable-background="new 0 0 80 80" height="35px" id="Icons" version="1.1" viewBox="0 0 80 80" width="35px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g><path d="M15,15v38h14v13l12.919-13h23V15H15z M41.919,48h-2.071l-1.464,1.464l-4.464,4.464V53v-5h-5h-9V20H60v28H41.919z"/><circle cx="27.919" cy="34" r="4"/><circle cx="39.919" cy="34" r="4"/><circle cx="51.919" cy="34" r="4"/></g></svg>
									${p.replyCnt} 개
								</strong>
							</li>
							<li class="d-inline-flex align-items-center float-end">
							<strong class="pt-1"><fmt:formatNumber type="number" maxFractionDigits="3" value="${p.price}" /> 원</strong>
							</li>
						</ul>
						<div class="location d-flex justify-content-between align-items-center">
							<div class="pt-2">
								<h3><a><span>${p.address}</span></a></h3>
							</div>
							<div class="more">
								<a href="pension/detail?pensionid=${p.pensionid}">
									<span class="icon-keyboard_backspace"></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>    
	</div>

	<!-- 펜션 광고 -->
	<div class="untree_co_slider-wrap">
		<div class="nav-direction">
			<a href="#" class="js-nav-right nav-right"><span class="icon-keyboard_arrow_right"></span></a>
			<a href="#" class="js-nav-left nav-left"><span class="icon-keyboard_arrow_left"></span></a>
		</div>
	
		<div class="untree_co_slider">
			<c:forEach items="${pensions}" var="ps">
			<div class="item" style="background-image:url(/resources/assets/images/ad_back.jpg); background-size: 100%;">
				<img src="display?path=${ps.attachs[0].path}&uuid=${ps.attachs[0].uuid}" alt="Image" class="img-fluid">
				<div class="property-contents p-3">
					<strong class="current-price ellipsis mb-1 ml-2">${ps.name}</strong>
					<span class="old-price text-right"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ps.price}"/> 원</span>
					<h5 class="text-right small">
						<a href="pension/detail?pensionid=${ps.pensionid}" style="text-decoration-color:white;"><span class="text-white">예약하러 가기</span></a>
					</h5>
				</div>
			</div>
			</c:forEach> 
		</div>
	</div>
	
	<!-- 카운트 -->
	<div class="text-center">
		<div class="row section-counter my-5">
			<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos-delay="300">
				<div class="counter-wrap mb-5 mb-lg-0">
					<span class="number"><span class="countup text-primary">2917</span></span>
					<span class="caption text-black-50"># 전체 펜션 개수</span>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos-delay="400">
				<div class="counter-wrap mb-5 mb-lg-0">
					<span class="number"><span class="countup text-primary">3918</span></span>
					<span class="caption text-black-50"># 전체 숙소 개수</span>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos-delay="500">
				<div class="counter-wrap mb-5 mb-lg-0">
					<span class="number"><span class="countup text-primary">38928</span></span>
					<span class="caption text-black-50"># 전체 예약 건수</span>
				</div>
			</div>
			<div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos-delay="600">
				<div class="counter-wrap mb-5 mb-lg-0">
					<span class="number"><span class="countup text-primary">1291</span></span>
					<span class="caption text-black-50"># 전체 댓글 개수</span>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../views/common/footer.jsp" />
	
	<script src="/resources/js/pension.js" ></script>
	<script>
		$(function() {
			var slides = $('.slides'),
			images = slides.find('img');
	
			images.each(function(i) {
				$(this).attr('data-id', i + 1);
			})
	
			var typed = new Typed('.typed-words', {
				strings: [" 여수밤바다"," 야경맛집"," 여수엑스포", " 수상레저", " 섬마을여수"],
				typeSpeed: 80,
				backSpeed: 80,
				backDelay: 4000,
				startDelay: 1000,
				loop: true,
				showCursor: true,
				preStringTyped: (arrayPos, self) => {
					arrayPos++;
					$('.slides img').removeClass('active');
					$('.slides img[data-id="'+arrayPos+'"]').addClass('active');
				}
			});
		})
	</script>
</body>
</html>
