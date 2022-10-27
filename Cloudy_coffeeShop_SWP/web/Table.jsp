<%-- 
    Document   : Table
    Created on : Oct 24, 2022, 1:44:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Table booking</title>
        <link rel=stylesheet" href="css/cssForTable.css" />
        <script>
            
        </script>
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
        <form action="BookingServlet" method="POST">
            <input type="hidden" name="time" value=${requestScope.time}/>
            <input type="hidden" name="people" value=${requestScope.people}/>
            <div class="container">
                <div class="row">
                    <input id="button" type="button" onclick="alert('Hello');" name="A1" value="0">
                    <button type="button" onclick='chooseTable(this.name)' name="A2" value="0">A2</button>
                    <button type="button" onclick="chooseTable()" name="A3" value="0">A3</button>
                    <button type="button" onclick="chooseTable()" name="A4" value="0">A4</button>
                </div>
                <div class="row">
                    <button type="button" onclick="chooseTable()" name="A5" value="0">A5</button>
                    <button type="button" onclick="chooseTable()" name="A6" value="0">A6</button>
                    <button type="button" onclick="chooseTable()" name="A7" value="0">A7</button>
                    <button type="button" onclick="chooseTable()" name="A8" value="0">A8</button>
                </div>
                <div class="row">
                    <button type="button" onclick="chooseTable()" name="A9" value="0">A9</button>
                    <button type="button" onclick="chooseTable()" name="A10" value="0">A10</button>
                    <button type="button" onclick="chooseTable()" name="A11" value="0">A11</button>
                    <button type="button" onclick="chooseTable()" name="A12" value="0">A12</button>
                </div>
                <div class="row">
                    <button type="button" onclick="chooseTable()" name="A13" value="0">A13</button>
                    <button type="button" onclick="chooseTable()" name="A14" value="0">A14</button>
                    <button type="button" onclick="chooseTable()" name="A15" value="0">A15</button>
                    <button type="button" onclick="chooseTable()" name="A16" value="0">A16</button>
                </div>
                <div class="row">
                    <button type="button" onclick="chooseTable()" name="A17" value="0">A17</button>
                    <button type="button" onclick="chooseTable()" name="A18" value="0">A18</button>
                    <button type="button" onclick="chooseTable()" name="A19" value="0">A19</button>
                    <button type="button" onclick="chooseTable()" name="A20" value="0">A20</button>
                </div>
                <div class="row">
                    <button type="button" onclick="chooseTable()" name="A21" value="0">A21</button>
                    <button type="button" onclick="chooseTable()" name="A22" value="0">A22</button>
                    <button type="button" onclick="chooseTable()" name="A23" value="0">A23</button>
                    <button type="button" onclick="chooseTable()" name="A24" value="0">A24</button>
                </div>
                <button id="submit-button" style="margin-left: 450px; padding: 0;" name="action" value="ChooseTable">Choose Table</button>
            </div>
        </form>
            <input type="button" onclick="chooseTable();" value="A4">
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
                perspective: 1000px;
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
