<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사 | Register</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="학생 이름" />
    <meta name="description" content="UT-NodeJS 중간고사 등록 페이지" />

    <!-- CSS 파일 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link rel="stylesheet" media="(max-width: 768px)" href="${pageContext.request.contextPath}/public/css/style.small.css" />
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/confetti.css" />
    
    <!-- JS 파일 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>

    <script>
      // 폼 검증 함수
      function validateForm() {
        const name = document.getElementById("floatingName").value.trim();
        const email = document.getElementById("floatingEmail").value.trim();
        const phone = document.getElementById("floatingPhone").value.trim();
        const password = document.getElementById("password").value.trim();
        const confirmPassword = document.getElementById("confirmPassword").value.trim();

        // 이름 검증
        if (name === "") {
          alert("Name field cannot be empty.");
          return false;
        }

        // 전화번호 검증 (숫자만)
        const phoneRegex = /^[0-9]{10,12}$/;
        if (!phoneRegex.test(phone)) {
          alert("Phone number must be 10-12 digits.");
          return false;
        }

        // 이메일 검증
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
          alert("Please enter a valid email address.");
          return false;
        }

        // 비밀번호 확인 검증
        if (password === "" || confirmPassword === "") {
          alert("Password fields cannot be empty.");
          return false;
        }

        if (password !== confirmPassword) {
          alert("Passwords do not match.");
          return false;
        }

        return true; // 폼 제출 진행
      }
    </script>
  </head>

  <body>
    <!-- HEADER -->
    <jsp:include page="header.jsp"></jsp:include>

    <!-- MAIN 페이지 내용 -->
    <main>
      <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-3">
          <div class="col-lg-7 text-center text-lg-start mb-3">
            <figure>
              <img
                src="https://cdn.pixabay.com/photo/2015/08/07/06/28/transportation-879026_960_720.jpg"
                alt="Transportation Image"
                class="img-fluid"
              />
            </figure>
            <h1 class="display-4">Contact Us</h1>
            <p class="lead col-lg-10 fs-4">Get in touch to find out more.</p>
          </div>

          <div class="col-md-10 mx-auto col-lg-5 mb-5">
            <!-- Form 시작 -->
            <form
              class="p-4 p-md-5 border rounded-3 bg-light"
              action="./thanks.jsp"
              method="POST"
              onsubmit="return validateForm();"
            >
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingName"
                  name="name"
                  placeholder="Name"
                  required
                />
                <label for="floatingName">Name</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="email"
                  class="form-control"
                  id="floatingEmail"
                  name="email"
                  placeholder="name@example.com"
                  required
                />
                <label for="floatingEmail">Email address</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="tel"
                  class="form-control"
                  id="floatingPhone"
                  name="phone"
                  placeholder="Phone"
                  required
                />
                <label for="floatingPhone">Phone</label>
              </div>

              <hr />

              <div class="mb-3">
                <label>Gender</label><br />
                <input type="radio" id="male" name="gender" value="Male" required />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
              </div>

              <div class="mb-3">
                <label>Hobbies</label><br />
                <input type="checkbox" id="cricket" name="hobbies" value="Cricket" />
                <label for="cricket">Cricket</label>
                <input type="checkbox" id="football" name="hobbies" value="Football" />
                <label for="football">Football</label>
                <input type="checkbox" id="chess" name="hobbies" value="Chess" />
                <label for="chess">Chess</label>
              </div>

              <div class="row mb-3">
                <div class="col">
                  <input
                    type="password"
                    class="form-control"
                    id="password"
                    name="password"
                    placeholder="Password"
                    required
                  />
                </div>
                <div class="col">
                  <input
                    type="password"
                    class="form-control"
                    id="confirmPassword"
                    name="confirm_password"
                    placeholder="Confirm Password"
                    required
                  />
                </div>
              </div>

              <button class="w-100 btn btn-lg btn-primary ut-red" type="submit">
                Submit
              </button>
              <hr />
            </form>
          </div>
        </div>
      </div>
    </main>

    <!-- FOOTER -->
    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
