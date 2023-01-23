<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/commons.css" />
  </head>
  <body>
    <%@ include file= "header.jsp" %>

    <div class="container mt-5 pt-5 pb-5 pl-5 pr-5 card">
      <form action="" method="post">
        <!-- title -->
        <div class="fs-3">회원가입</div>
        <!-- input-group -->
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">이름</label>
          <div class="col-sm-9">
            <input
              name="userName"
              type="text"
              class="form-control"
              id="inputPassword"
              placeholder="이름을 입력하세요"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">아이디</label>
          <div class="col-sm-9">
            <input
              name="userID"
              type="text"
              class="form-control"
              id="inputID"
              placeholder="아이디를 입력하세요"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">비밀번호</label>
          <div class="col-sm-9">
            <input
              name="userPW"
              type="password"
              class="form-control"
              id="inputPassword"
              placeholder="비밀번호를 입력하세요"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2"
            >비밀번호확인</label
          >
          <div class="col-sm-9">
            <input
              name="userPWcheck"
              type="password"
              class="form-control"
              id="inputPassword"
              placeholder="비밀번호를 한번 더 입력하세요"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">생년월일</label>
          <div class="col-sm-2">
            <select name="birthdayYear" id="" class="form-control">
              <option value="1990">1990</option>
              <option value="1991">1991</option>
              <option value="1992">1992</option>
              <option value="1993">1993</option>
              <option value="1994">1994</option>
              <option value="1995">1995</option>
              <option value="1996">1996</option>
              <option value="1997">1997</option>
              <option value="1998">1998</option>
              <option value="1999">1999</option>
              <option value="2000">2000</option>
            </select>
          </div>
          <div class="col-sm-1">년</div>
          <div class="col-sm-2">
            <select name="birthdayMonth" id="" class="form-control">
              <option value="01">1</option>
              <option value="02">2</option>
              <option value="03">3</option>
              <option value="04">4</option>
              <option value="05">5</option>
              <option value="06">6</option>
              <option value="07">7</option>
              <option value="08">8</option>
              <option value="09">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select>
          </div>
          <div class="col-sm-1">월</div>
          <div class="col-sm-2">
            <select name="birthdayDay" id="" class="form-control">
              <option value="01">1</option>
              <option value="02">2</option>
              <option value="03">3</option>
              <option value="04">4</option>
              <option value="05">5</option>
              <option value="06">6</option>
              <option value="07">7</option>
              <option value="08">8</option>
              <option value="09">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
              <option value="13">13</option>
              <option value="14">14</option>
              <option value="15">15</option>
              <option value="16">16</option>
              <option value="17">17</option>
              <option value="18">18</option>
              <option value="19">19</option>
              <option value="20">20</option>
              <option value="21">21</option>
              <option value="22">22</option>
              <option value="23">23</option>
              <option value="24">24</option>
              <option value="25">25</option>
              <option value="26">26</option>
              <option value="27">27</option>
              <option value="28">28</option>
              <option value="29">29</option>
              <option value="30">30</option>
              <option value="31">31</option>
            </select>
          </div>
          <div class="col-sm-1">일</div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">이메일 주소</label>
          <div class="col-sm-4">
            <input
              name="emailAddress"
              type="text"
              class="form-control"
              id="inputPassword"
              placeholder="ID"
            />
          </div>
          <div class="col-sm-1">@</div>
          <div class="col-sm-4">
            <input
              name="domain"
              class="form-control"
              type="text"
              name=""
              id=""
              placeholder="domain.com"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="" class="col-sm-3 col-form-label mt-2">전화번호</label>
          <div class="col-sm-9 mt-2">
            <input
              name="userPhoneNumber"
              type="text"
              class="form-control"
              id="phoneNumber"
              placeholder="연락처를 입력하세요"
            />
          </div>
        </div>
        <!-- Ad receive check -->
        <div class="form-group row mt-2">
          <div class="col-sm-3">광고수신여부 :</div>
          <div class="col-sm-9">
            SMS <input type="checkbox" name="smsAd" class="" id="" /> / Email
            <input type="checkbox" name="emailAd" id="" /> 로 수신하겠습니다
          </div>
        </div>
        <!-- btn -->
        <div class="d-flex justify-content-end">
        
          <button type="submit" onclick="alert('회원가입이 완료되었습니다!');" class="btn btn-primary w-25 mt-3">
            Sign UP
          </button>
        </div>
      </form>
    </div>

  <%@ include file= "footer.jsp" %>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
