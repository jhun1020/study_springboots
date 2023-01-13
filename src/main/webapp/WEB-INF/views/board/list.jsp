<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>list</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="text-center fs-1 mt-5 mb-3">list</div>
    <div class="container p-3">
    <hr>
      <div class="m-2">
        <nav class="nav d-flex justify-content-around fs-4">
          <form action="/board/view">
            <button class="nav-link text-dark border-0 bg-white">view</button>
          </form>
          <form action="/board/form">
            <button class="nav-link text-dark border-0 bg-white fs-4">form</button>
          </form>
          <form action="/board/edit">
            <button class="nav-link text-dark border-0 bg-white fs-4">edit</button>
          </form>
        </nav>
      </div>
      <hr>

    <div>
   <table class="table">
            <thead>
                <tr>
                    <th scope=>#</th>
                    <th scope=class="col-9">Title</th>
                    <th scope=>date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <%-- view로 넘어가는 서블렛(컨트롤러)의 파라미터에 @RequestParam String uid 추가해야 하낟. --%>
                    <th scope=>1</th>
                    <td><a href="/board/view?title=이정훈">Hello</a></td>
                    <td>23.01.01</td>
                </tr>
                <tr>
                    <th scope=>2</th>
                    <td><a href="/board/view?title=정훈이">Otto</a></td>
                    <td>23.01.02</td>
                </tr>
                <tr>
                    <th scope=>3</th>
                    <td><a href="/board/view?title=jhun">Jasco</a></td>
                    <td>23.01.03</td>
                </tr>
                
            </tbody>
        </table>
    </div>


    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
