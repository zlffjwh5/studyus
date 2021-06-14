<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${study.studyName} : StudyUs</title>
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
						<h4 style="display: inline;"
							class="page-title text-truncate text-dark font-weight-medium mb-1">${ study.studyName }</h4>
						&nbsp;&nbsp;
						<!-- 프리미엄 결제한 경우 프리미엄 표시 -->
						<c:if test="${study.maxPersonnel eq 20 }">
							<span class="btn btn-danger btn-sm btn-rounded">프리미엄</span>
						</c:if> 
						<div class="d-flex align-items-center">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb m-0 p-0">
									<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
								</ol>
							</nav>
						</div>
					</div>
					<div class="float-right"></div>
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
                    <div class="col-md-7 col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex align-items-start">
                                    <h4 class="card-title">최신 공지사항</h4>
                                </div>
                                <hr>
                                <div class="">
	                                	<c:forEach items="${recentNotice }" var="notice" >
    	                            		<c:if test="${notice.noContents ne null }">
											<div class="card-body">
													${notice.noContents }
											</div>
											</c:if>
										<c:if test="${notice.noContents eq null }">
											&nbsp;
										</c:if>
									</c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 날짜 -->
                    <div class="col-md-5 col-lg-4">
                        <div class="card">
                            <div class="card-body" style="padding:0;">
                            	<div class="text-center"
									style="margin-top: 10%; margin-bottom: 5%;">
									<small>출석 인원 / 스터디원 수</small>
									<h1 style=" color: #683FF7;">
										${printAttMember }
										/ ${printAllMember }
									</h1>
								</div>
                                <div class="text-center">
                                		<!-- 월  -->
                                		<c:if test="${ study.monday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">월</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.monday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">월</span>
	                              	 </c:if>
	                              	 <!-- 화 -->
									<c:if test="${ study.tuesday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">화</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.tuesday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">화</span>
	                              	 </c:if>
	                              	 <!-- 수 -->
									<c:if test="${ study.wednesday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">수</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.wednesday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">수</span>
	                              	 </c:if>
	                              	 <!-- 목 -->
									<c:if test="${ study.thursday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">목</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.thursday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">목</span>
	                              	 </c:if>
	                              	 <!-- 금 -->
									<c:if test="${ study.friday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">금</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.friday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">금</span>
	                              	 </c:if>
	                              	 <!-- 토 -->
									<c:if test="${ study.saturday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">토</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.saturday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">토</span>
	                              	 </c:if>
	                              	 <!-- 일 -->
									<c:if test="${ study.sunday eq 0 }">
	                              	  <span class="btn btn-light btn-sm mr-1" style="border-radius: 50%;">일</span>
	                              	 </c:if>
	                              	 <c:if test="${ study.sunday eq 1 }">
	                              	  <span class="btn btn-primary btn-sm mr-1" style="border-radius: 50%;">일</span>
	                              	 </c:if>
                                </div>
                                <div class="text-center" style="margin-top:5%;">
                                		<p>${study.start } ~ ${study.end } </p>
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
	                                <div class="col-md-2">
	                                    <h4 class="card-title">최근 30일 출석율</h4>
	                                </div>
	                                <div class="col-md-6"> 
	                                	<div class="progress mb-2">
	                                    	<div class="progress-bar bg-info" role="progressbar" style="width: ${studyAttendanceRate}%" aria-valuenow="${studyAttendanceRate}" aria-valuemin="0" aria-valuemax="100"></div>
	                                    </div>
	                                </div>
	                                <div class="col-md-1">
	                                    <h4>${studyAttendanceRate }%</h4>
	                                </div>
	                                <div class="col-md-3 d-flex flex-row-reverse">
	                                <c:if test="${attendanceStatus eq 0  }">
	                                	<button id="attendance-check-button" class="btn btn-light btn-rounded btn-sm" disabled>출석확인</button>
	                                	<span id="attendance-help" class="pr-4">출석시간이 아닙니다.</span>
                                	</c:if>
	                                <c:if test="${attendanceStatus eq 1 }">
	                                	<button id="attendance-check-button" class="btn btn-primary btn-rounded btn-sm" onclick="insertAttendance(${loginUser.mbNo}, ${sessionScope.study.studyNo })">출석확인</button>
                                	</c:if>
	                                <c:if test="${attendanceStatus eq 2  }">
	                                	<button id="attendance-check-button" class="btn btn-primary btn-rounded btn-sm" disabled>출석확인</button>
	                                	<span id="attendance-help" class="pr-4">오늘 출석체크 완료</span>
                                	</c:if>
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
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">출석률 Top 5</h4>
                                <div>
                                    <canvas id="bar-chart-horizontal" height="120"> </canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">프로젝트 현황</h4>
                                <p>프로젝트별 과제 개수</p>
								<div>
									<canvas id="group-chart"></canvas> 
								</div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>

            <!-- footer -->
			<jsp:include page="../common/studyFooter.jsp"/>
        </div>
    </div>
    
   <!-- 비동기 통신용 변수. Javascript 보다 위에 있어야함 -->
    <input type="hidden" id="studyUrl" value="${sessionScope.study.url }">
    <input type="hidden" id="studyNo" value="${sessionScope.study.studyNo }">
    <input type="hidden" id="memberNo" value="${sessionScope.loginUser.mbNo }">
    
   <!--This page JavaScript -->
   <script src="https://cdn.jsdelivr.net/npm/chart.js@3.3.2/dist/chart.min.js"></script>
   <script src="/resources/css/study/dist/js/pages/dashboards/dashboard1.min.js"></script>
   <script src="/resources/js/study.js"></script>
   
</body>
</html>