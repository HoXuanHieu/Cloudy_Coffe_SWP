<%-- 
    Document   : menu
    Created on : Sep 29, 2022, 10:15:51 PM
    Author     : Asus
--%>

<!-- Menu Start -->
<div class="container-fluid pt-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
            <h1 class="display-4">Competitive Pricing</h1>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <c:forEach var="i" begin="0" step="1" end="${maxItems/2 - 1}">
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                            <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>${List.get(i).getDrink_name()}</h4>
                            <p class="m-0">${List.get(i).getDescription()}</p>
                        </div>
                    </div>
                </c:forEach>                                        
            </div>
            <div class="col-lg-6">
                <c:forEach var="i" begin="${maxItems/2}" step="1" end="${maxItems-1}">
                    <div class="row align-items-center mb-5">
                        <div class="col-4 col-sm-3">
                            <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                            <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                        </div>
                        <div class="col-8 col-sm-9">
                            <h4>${List.get(i).getDrink_name()}</h4>
                            <p class="m-0">${List.get(i).getDescription()}</p>
                        </div>
                    </div>
                </c:forEach>                                        
            </div>
        </div>
    </div>
    <%@include file="pagination.jsp" %>
</div>
<!-- Menu End -->
