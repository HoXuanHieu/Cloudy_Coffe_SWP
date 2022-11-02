<%-- 
    Document   : reservation
    Created on : Sep 29, 2022, 10:26:26 PM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Reservation Start -->
<div class="container-fluid my-5">
    <div class="container">
        <div class="section-title">
            <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BOOKING</h4>
            <h1 class="display-4">Booking Your Table</h1>
        </div>
        <div class="reservation position-relative overlay-top overlay-bottom">
            <div class="row align-items-center">
                <div class="col-lg-6 my-5 my-lg-0">
                    <div class="p-5">
                        <div class="mb-4">
                            <h1 class="display-4 text-primary">Cloudy Coffee</h1>
                            <h1 class="text-white">For Online Reservation</h1>
                        </div>
<!--                        <p class="text-white">Lorem justo clita erat lorem labore ea, justo dolor lorem ipsum ut sed eos, ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea</p>
                        <ul class="list-inline text-white m-0">
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                            <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                        </ul>-->
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.863795476089!2d108.25836811442196!3d15.968487746372366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421827994aae11%3A0x60c5bf1be85ba629!2sFPT%20School%20DaNang!5e0!3m2!1sen!2s!4v1667377989483!5m2!1sen!2s" width="450" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
                        <h1><br></h1>
                        <h1 class="text-white mb-4 mt-5">Book Your Table</h1>
                        <form action="" class="mb-5">

                            <c:if test="${empty Email}">
                                <div class="form-group">
                                    <input type="text" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Email" required="required" />
                                </div>
                            </c:if>
                            <c:if test="${not empty Email}">
                                <div class="form-group">
                                    <input type="text" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Name" value="${Name}" required="required" />
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Email" value="${Email}" required="required" />
                                </div>
                            </c:if>
                            <div class="form-group">
                                <div class="date" id="date" data-target-input="nearest">
                                    <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input text-white" placeholder="Date" data-target="#date" data-toggle="datetimepicker"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <select class="custom-select bg-transparent border-primary px-4" style="height: 49px;" required>                                    
                                    <option value="06:00:00">06:00 AM</option>
                                    <option value="06:30:00">06:30 AM</option>
                                    <option value="07:00:00">07:00 AM</option>
                                    <option value="07:30:00">07:30 AM</option>
                                    <option value="08:00:00">08:00 AM</option>
                                    <option value="08:30:00">08:30 AM</option>
                                    <option value="09:00:00">09:00 AM</option>
                                    <option value="09:30:00">09:30 AM</option>
                                    <option value="10:00:00">10:00 AM</option>
                                    <option value="10:30:00">10:30 AM</option>
                                    <option value="11:00:00">11:00 AM</option>
                                    <option value="11:30:00">11:30 AM</option>
                                    <option value="12:00:00">00:00 AM</option>
                                    <option value="12:30:00">00:30 PM</option>
                                    <option value="13:00:00">01:00 PM</option>
                                    <option value="13:30:00">01:30 PM</option>
                                    <option value="14:00:00">02:00 PM</option>
                                    <option value="14:30:00">02:30 PM</option>
                                    <option value="15:00:00">03:00 PM</option>
                                    <option value="15:30:00">03:30 PM</option>
                                    <option value="16:00:00">04:00 PM</option>
                                    <option value="16:30:00">04:30 PM</option>
                                    <option value="17:00:00">05:00 PM</option>
                                    <option value="17:30:00">05:30 PM</option>
                                    <option value="18:00:00">06:00 PM</option>
                                    <option value="18:30:00">06:30 PM</option>
                                    <option value="19:00:00">07:00 PM</option>
                                    <option value="19:30:00">07:30 PM</option>
                                    <option value="20:00:00">08:00 PM</option>
                                    <option value="20:30:00">08:30 PM</option>
                                    <option value="21:00:00">09:00 PM</option>
                                    <option value="21:30:00">09:30 PM</option>
                                </select>
                            </div>
                            <!--                            <div class="form-group">
                                                            <div class="time" id="time" data-target-input="nearest">
                                                                <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input text-white" placeholder="Time" data-target="#time" data-toggle="datetimepicker"/> 
                                                            </div>
                                                        </div>-->
                            <div class="form-group">
                                <input type="number" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Number Of Person" required="required" min="1" max ="20"/>                         
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block font-weight-bold py-3" type="submit">Book Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Reservation End -->
