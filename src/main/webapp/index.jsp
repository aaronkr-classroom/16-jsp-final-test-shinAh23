<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="학생 이름" />
    <meta name="description" content="UT-NodeJS 중간고사 페이지" />

    <!-- CSS 파일 link 태그 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link rel="stylesheet" media="(max-width: 768px)" href="${pageContext.request.contextPath}/public/css/style.small.css" />

    <!-- JS 파일 script 태그 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
  </head>

  <body id="index">
    <!-- HEADER -->
    <%@ include file="header.jsp" %>

    <!-- MAIN 페이지 내용 -->
    <main class="text-center cover-container">
      <div class="cover-content h-100 w-100 text-white">
        <div class="cover-box-2">
          <h1 class="page-title">
            <span class="ut-red">UT</span>-NodeJS 중간고사
          </h1>
          <p class="page-description lead">
            I changed this simple site to an Express site.
          </p>
        </div>
      </div>
    </main>

    <!-- FOOTER -->
    <%@ include file="footer.jsp" %>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
