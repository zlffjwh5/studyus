<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>StudyUs : 스터디룸</title>
    <!-- 타이틀을 개별 스터디룸 이름으로 해줘도 좋을듯 ! 'StudyUs : 삼팔광땡' 이러케 -->
</head>
<body>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-theme="light" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="fixed" data-header-position="fixed" data-boxed-layout="full">
        
        <!-- menubar -->
	    <jsp:include page="../common/studyMenubar.jsp"/>
	    <!-- 선택된 메뉴에 selected / active 추가해주기 -->
	    <script>
	    	$("#sidebarnav>li:first-child").addClass("selected");
	    	$("#sidebarnav>li:first-child a").addClass("active");
	    </script>
        
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
            	<div class="row">
                    <div class="col-9 align-self-center">
                        <h4 class="page-title text-truncate text-dark font-weight-medium mb-1">${ study.studyName }</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="#">Dashboard</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
				<div class="col-md-3 align-self-center d-none d-lg-block">
                    	<form>
	                    	<div class="customize-input">
                            	<input class="form-control custom-shadow custom-radius border-0 bg-white"
                                           type="search" placeholder="Search" aria-label="Search">
                            	<i class="form-control-icon" data-feather="search"></i>
	                    	</div>
                    	</form>
                	</div>
            	</div>
            </div>

            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
            
            	<!-- *************************************************************** -->
                <!-- 공지사항 & 날짜 -->
                <!-- *************************************************************** -->
                <div class="row">
                	<!-- 공지사항 -->
                    <div class="col-md-7 col-lg-9">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-start">
                                    <h5 class="card-title">공지사항</h5>
                                </div>
                                <hr>
                                <div class="">
                                	<p class="text-muted font-14 mb-3">공지사항 그으으으으ㅡ으으으으ㅡ으으을</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 날짜 -->
                    <div class="col-md-5 col-lg-3">
                        <div class="card">
                            <div class="card-body">
                            	<div class="d-flex align-items-start">
                                	<h5 class="card-title">날짜</h5>
                                </div>
                                <div class="">
                                	<p class="font-18 mb-3">5/20</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
            	<!-- *************************************************************** -->
                <!-- Start Top Leader Table -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            	<div class="row">
	                                <div class="col-md-1">
	                                    <h5 class="card-title">출석율</h5>
	                                </div>
	                                <div class="col-md-8">
	                                	<div class="progress mb-2">
	                                    	<div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
	                                    </div>
	                                </div>
	                                <div class="col-md-3 d-flex flex-row-reverse">
	                                	<button class="btn btn-primary btn-rounded btn-sm">출석확인</button>
	                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
                <!-- *************************************************************** -->
                <!-- 과제 -->
                <!-- *************************************************************** -->
                <div class="row">
                    <div class="col-md-6 col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-start">
                                    <h5 class="card-title">진행중인 과제</h5>
                                </div>
                                <div class="pl-4 mb-5">
                                    <div class="stats ct-charts position-relative" style="height: 315px;"></div>
                                </div>
                                <ul class="list-inline text-center mt-4 mb-0">
                                    <li class="list-inline-item text-muted font-italic">Earnings for this month</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">과제 진행율</h5>
                                <div id="campaign-v2" class="mt-2" style="height:283px; width:100%;"></div>
                                <ul class="list-style-none mb-0">
                                    <li>
                                        <i class="fas fa-circle text-primary font-10 mr-2"></i>
                                        <span class="text-muted">Direct Sales</span>
                                        <span class="text-dark float-right font-weight-medium">$2346</span>
                                    </li>
                                    <li class="mt-3">
                                        <i class="fas fa-circle text-danger font-10 mr-2"></i>
                                        <span class="text-muted">Referral Sales</span>
                                        <span class="text-dark float-right font-weight-medium">$2108</span>
                                    </li>
                                    <li class="mt-3">
                                        <i class="fas fa-circle text-cyan font-10 mr-2"></i>
                                        <span class="text-muted">Affiliate Sales</span>
                                        <span class="text-dark float-right font-weight-medium">$1204</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

            <!-- footer -->
			<jsp:include page="../common/studyFooter.jsp"/>
        </div>
    </div>
   
   <!--This page JavaScript -->
   <script src="/resources/css/study/dist/js/pages/dashboards/dashboard1.min.js"></script>
</body>
</html>