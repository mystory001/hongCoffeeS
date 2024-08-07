<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<style>
.detail1 {
    margin: 1.2em;
}
.detail2 {
    table-layout: fixed;
}
table {
    width: 100%;
    text-align: center;
    border-color: #6C7383;
    border-collapse: collapse;
    margin: 20px, 20px;
}
th{
	background-color: #EFBDBC;
     color: #fff; 
	text-align: -webkit-match-parent;

}

th, td{
width: 300px;
height: 45px;
font-size: 16px;
}
</style>
<head>
<meta charset="UTF-8">
<title>홍커피</title>
</head>
<body>
<div class="detail1">
<h3>재료 상세</h3>
<div class="detail2">
<table border="1">
<tr>
	<th>재료 번호</th><td>${itemDTO.item_num} </td> <th>재료명</th><td>${itemDTO.item_name}</td>
</tr>
<tr>
	<th>유형</th><c:if test="${itemDTO.item_type eq 0}">
   	  			<td style=" color:#4E342E;">식품</td>
   	  	</c:if>
   	  	 <c:if test="${itemDTO.item_type eq 1}">
   	  		<td style="color:#FF3D00;" >비식품</td>
   	  	</c:if>
   	  	 <th>단가</th>
   	  	 <td>${itemDTO.item_price}</td>
</tr>
<tr>
	<th>상태</th>	
	<c:if test="${itemDTO.item_state eq 0}">
      <td style="color:green;"colspan="3">취급</td>
  	</c:if>
  	<c:if test="${itemDTO.item_state eq 1}">
      <td style="color:red;" colspan="3">미취급</td>
  	</c:if>
 
</tr>
<tr>
	<th>적요</th><td colspan="3">${itemDTO.item_note }</td>
</tr>
</table>
</div>
</div>
<!-- <div id="buttons" style="text-align:center;"></div> -->


</body>
</html>