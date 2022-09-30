<%-- 
    Document   : bestSeller
    Created on : Sep 29, 2022, 10:14:33 PM
    Author     : Asus
--%>

<!-- Best Seller Start -->
<div class="container-fluid py-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BEST CHOICES</h4>
            <h1 class="display-4">Best Seller</h1>
        </div>
        <div class="owl-carousel testimonial-carousel">                      
            <c:forEach items="${BestSellerList}" var="item">
                <div class="testimonial-item">
                    <div class="d-flex align-items-center mb-3">
                        <img class="img-fluid" src="${item.getImage()}" alt="">
                        <div class="ml-3">
                            <h4>${item.getDrink_name()}</h4>
                            <i>${item.getKind_of_Drink()}</i>
                        </div>
                    </div>
                    <p class="m-0">${item.getDescription()}</p>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- Best Seller End -->
