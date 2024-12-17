<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <!-- CSS 파일에 대한 link테그를 수정하십시오 -->
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
    />

    <!-- JS 파일에 대한 script테그를 수정하십시오 -->
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

    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
