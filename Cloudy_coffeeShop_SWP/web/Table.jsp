<%-- 
    Document   : Table
    Created on : Oct 24, 2022, 1:44:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Table booking</title>
        <link rel=stylesheet" href="css/cssForTable.css" />
    </head>
    <body>
        <p class="text">
            TABLE MENU
        </p>
        <ul class="showcase">
            <li>
                <div class="table"></div>
                <small>N/A</small>
            </li>
            <li>
                <div class="table selected"></div>
                <small>Selected</small>
            </li>
            <li>
                <div class="table occupied"></div>
                <small>Ocuppied</small>
            </li>
        </ul>
        <form action="BookingServlet" method="POST" onsubmit="return check()" >
            <input id="date" type="hidden" name="date" value='${requestScope.date}'/>
            <input id="time" type="hidden" name="time" value='${requestScope.time}'/>
            <input id="people" type="hidden" name="people" value='${requestScope.people}'/>
            <input id="information" type="hidden" name="information" value='' />
            <div class="container">
                <c:set var="tables" value="${requestScope.tables}"/>
                <c:forEach var="i" items="${tables}" varStatus="count">
                    <c:choose>
                        <c:when test="${i.getCheck_Available() == 0}">
                            <button style="background-color: white;" id="${i.getTable_id()}" type="button" onclick="chooseTable(this.id)" name="${i.getCheck_Available()}" value="${i.getTable_id()}" disabled>${count.count}</button>
                        </c:when>
                        <c:otherwise>
                            <button id="${i.getTable_id()}" type="button" onclick="chooseTable(this.id)" name="${i.getCheck_Available()}" value="${i.getTable_id()}">${count.count}</button>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <!--                <div class="row">
                                    <button id="A1" type="button" onclick="chooseTable(this.id)" name="4" value="1">A1</button>
                                    <button id="A2" type="button" onclick="chooseTable(this.id)" name="4" value="1">A2</button>
                                    <button id="A3" type="button" onclick="chooseTable(this.id)" name="4" value="1">A3</button>
                                    <button id="A4" type="button" onclick="chooseTable(this.id)" name="4" value="1">A4</button>
                                </div>
                                <div class="row">
                                    <button id="A5" type="button" onclick="chooseTable(this.id)" name="4" value="1">A5</button>
                                    <button id="A6" type="button" onclick="chooseTable(this.id)" name="4" value="1">A6</button>
                                    <button id="A7" type="button" onclick="chooseTable(this.id)" name="4" value="1">A7</button>
                                    <button id="A8" type="button" onclick="chooseTable(this.id)" name="4" value="">A8</button>
                                </div>
                                <div class="row">
                                    <button id="A9" type="button" onclick="chooseTable(this.id)" name="4" value="1">A9</button>
                                    <button id="A10" type="button" onclick="chooseTable(this.id)" name="4" value="1">A10</button>
                                    <button id="A11" type="button" onclick="chooseTable(this.id)" name="4" value="1">A11</button>
                                    <button id="A12" type="button" onclick="chooseTable(this.id)" name="4" value="1">A12</button>
                                </div>
                                <div class="row">
                                    <button id="A13" type="button" onclick="chooseTable(this.id)" name="4" value="1">A13</button>
                                    <button id="A14" type="button" onclick="chooseTable(this.id)" name="4" value="1">A14</button>
                                    <button id="A15" type="button" onclick="chooseTable(this.id)" name="4" value="1">A15</button>
                                    <button id="A16" type="button" onclick="chooseTable(this.id)" name="4" value="1">A16</button>
                                </div>
                                <div class="row">
                                    <button id="A17" type="button" onclick="chooseTable(this.id)" name="4" value="1">A17</button>
                                    <button id="A18" type="button" onclick="chooseTable(this.id)" name="4" value="1">A18</button>
                                    <button id="A19" type="button" onclick="chooseTable(this.id)" name="4" value="1">A19</button>
                                    <button id="A20" type="button" onclick="chooseTable(this.id)" name="4" value="1">A20</button>
                                </div>
                                <div class="row">
                                    <button id="A21" type="button" onclick="chooseTable(this.id)" name="4" value="1">A21</button>
                                    <button id="A22" type="button" onclick="chooseTable(this.id)" name="4" value="1">A22</button>
                                    <button id="A23" type="button" onclick="chooseTable(this.id)" name="4" value="1">A23</button>
                                    <button id="A24" type="button" onclick="chooseTable(this.id)" name="4" value="1">A24</button>
                                </div>-->
                
                <button id="action" style="margin-left: 450px; padding: 0;" name="action" value="ChooseTable">Choose Table</button>
            </div>
        </form>

        <style>
            @import url('https://fonts.googleapis.com/css?family=Lato&display=swap');
            *{
                box-sizing: border-box;
            }
            body
            {
                background-color: #FFFBF2;
                display: flex;
                flex-direction: column;
                color: white;
                align-items: center;
                justify-content: center;
                height: 100vh;
                font-family: 'Lato', 'sans-serif';
            }
            .table
            {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;
            }
            .row
            {
                display: flex;
            }
            .menu-container select {
                background-color: rgba(0, 0, 0, 0.1);
                border: 0;
                border-radius: 5px;
                font-size: 14px;
                margin-left: 10px;
                padding: 5px 15px 5px 15px;
                -moz-appearance: none;
                -webkit-appearance: none;
                appearance: none;
            }
            .table.selected
            {
                background-color: #765852;
            }
            .table.occupied
            {
                background-color: #fff;
            }

            .table:not(.occupied):hover
            {
                cursor: pointer;
                transform: scale(1.2);
            }
            .showcase .table.table:not(.occupied):hover
            {
                cursor: default;
                transform: scale(1);
            }
            .showcase {
                background-color: rgba(0, 0, 0, 0.1);
                padding: 5px 10px;
                border-radius: 5px;
                font-size: 20px;
                color: #111;
                list-style-type: none;
                display: flex;
                justify-content: space-between;
                font-style: bold;
            }
            .showcase li {
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 10px;
            }
            .showcase li small {
                margin-left: 10px;
            }
            .container
            {
                margin: auto;
                width: 55%;
                margin-bottom: 30px;
            }
            p.text {
                margin: 5px 0;
                font-size: 80px;
                color: #111;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
            button {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;
            }
            button:hover {
                cursor: default;
                transform: scale(1.2);
            }
            input {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;
                text-decoration: none;
            }
            input:hover {
                cursor: default;
                transform: scale(1.2);
            }
        </style>

        <script src="js/TableJS.js"></script>

    </body>
</html>
