/* 
 *  To change this license header, choose License Headers in Project Properties.
 *  To change this template file, choose Tools | Templates
 *  and open the template in the editor.
 */
//const container = document.querySelector('.container');
//const table = document.querySelectorAll('.row .table:not(.occupied');
//const count = document.getElementById('count');
//const total = document.getElementById('total');
//const timeSelect = document.getElementById('time');
//
//for (var i = 0; i < 24; i++) {
//    
//}
//
//container.addEventListener('click', (e) => {
//    if (e.target.classList.contains('table') && !e.target.classList.contains('occupied')) {
//        e.target.classList.toggle('selected');
//        updateSelectedCount();
//    }
//});
//
//function updateSelectedCount() {
//    const selectedTables = document.querySelectorAll('.row .table.selected');
//    const selectedTablesCount = selectedTables.length;
//}
//
//$(document).ready(function(){
//  $("table").click(function(){
//    alert("Text");
//  });
//});

function chooseTable(id) {
    var table = document.getElementById(id);
    var information = document.getElementById('information');
    if (table.name == 1) {
        table.name = 2;
        table.style.backgroundColor = '#765852';
        information.value += table.value + " ";
    } else {
        table.name = 1;
        table.style.backgroundColor = '#614504';
        information.value = information.value.replace(table.value + " ", "");
    }
}

function check() {
    var people = document.getElementById('people').value;
    var num = 0;
    var buttons = document.getElementsByTagName('button');
    for (var i = 0, len = buttons.length; i < len; i++) {
        if (buttons[i].name == 2) {
            num += 4;
        }
    }
    if (num < people) {
        if (confirm("Don't book enough seat for " + people + " people\nDo you want to continue?")) {
//            for (var i = 0, len = buttons.length; i < len; i++) {
//                buttons[i].name = buttons[i].id;
//            }
        }
    } else {
//        for (var i = 0, len = buttons.length; i < len; i++) {
//            buttons[i].name = buttons[i].id;
//        }
        this.form.submit();
    }
}
