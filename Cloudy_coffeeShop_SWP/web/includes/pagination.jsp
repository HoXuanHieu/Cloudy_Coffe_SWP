<%-- 
    Document   : pagination
    Created on : Sep 29, 2022, 10:20:04 PM
    Author     : Asus
--%>

<!-- Pagination start -->
<ul class="pagination justify-content-center">
    <li class="page-item disabled">
        <p class="page-link">|</p>
    </li>
    <c:forEach var="i" begin="1" step="1" end="${TotalPage}">  
        <li class="page-item"><a class="page-link" href="DataForIndexPage?PageNumber=${i}">${i}</a></li>             
    </c:forEach>
    <li class="page-item disabled">
        <p class="page-link">|</p>
    </li>
</ul>
<!-- Pagination end -->
