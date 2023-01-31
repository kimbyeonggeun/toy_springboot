<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원관리</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./css/member_list.css" />
  </head>
  <body>
    <%-- <% ArrayList<HashMap> member = (ArrayList<HashMap>)request.getAttribute("member"); %> --%>
    <%@ include file="header_admin.jsp" %>
    <div class="container">
      <table class="table table-striped table-hover table-bordered">
        <thead>
          <tr class="text-center">
            <th>유저 ID</th>
            <th>유저 PW</th>
            <th>이름</th>
            <th>성별</th>
            <th>나이</th>
            <th>전화번호</th>
            <th>E-mail</th>
            <th>권한</th>
            <th>업데이트</th>
            <th>삭제</th>
          </tr>
        </thead>
        <tbody class="text-center">
          <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
            <tr>
              <td>
                <div>${resultData.USER_ID}</div>
              </td>
              <td>
                <div>${resultData.USER_PW}</div>
              </td>
              <td>
                <div>${resultData.USER_NAME}</div>
              </td>
              <td>
                <div>${resultData.USER_SEX}</div>
              </td>
              <td>
                <div>${resultData.AGE}세</div>
              </td>
              <td>
                <div>${resultData.PHONENUMBER}</div>
              </td>
              <td>
                <div>${resultData.EMAIL}</div>
              </td>
              <td>
                <div>${resultData.PRIVILEGES}</div>
              </td>
              <td>
                <form action="/commonCodeOur/edit/${resultData.COMMON_CODE_ID}" method="get">
                  <div class="btn btn-secondary">UPDATE</div>
						    </form>
              </td>
              <td>
                <form action="/commonCodeOur/edit/${resultData.COMMON_CODE_ID}" method="get">
                  <div class="btn btn-danger">DELETE</div>
                </form>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>


    <%-- <main class="d-flex align-items-center justify-content-center mt-5" style="height: 40rem">
      <div class="container">
        <div class="mb-3">
          <% for(int i=0;i<member.size();i++){ 
            HashMap<String, Object> member_list = member.get(i); %>
            <div id="task-list">
              <ul id="items">
                <li class="item">
                  <span class="ps-1"><%= member_list.get("USER_NAME") %></span>
                  <span class="pe-1">
                    <a href="/memberInfoServlet?username=<%= member_list.get('USER_NAME') %>" style="color: black; text-decoration: none;">info</a>
                  </span>
                </li>
              </ul>
            </div>

          <% } %>
        </div>
      </div>
    </main> --%>
    <%@ include file="footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
