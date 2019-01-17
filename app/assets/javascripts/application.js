// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .


//logic for drop down

var burger = document.querySelector('#ham_burger');
var show_burger = document.querySelector('#show_burger');
var show_icon = document.querySelector('.show_icon');
var close_icon = document.querySelector('.close_icon');
var nav_bar = document.querySelector('#my_nav_bar');
var close_burger = document.querySelector('#close_burger');
var dropdown = document.querySelector('#drop_down_lists');
var shadow = document.querySelector('#shadow');
var right_drop_down = document.querySelector('#right_drop_down');

function dropdowndisplayRight(){
    shadow.style.display = 'none';
    // right_drop_down.zIndex = '1';
    // shadow.style.zIndex = '0';
    closemenu();
}
shadow.addEventListener('click', dropdowndisplayRight);

function showmenu(){

    right_drop_down.style.zIndex = '0';
    show_burger.style.display = 'none';
    close_burger.style.left ='0';
    close_burger.style.display = 'inline';
    close_icon.style.animation = 'rotateburger .5s linear'
    dropdown.style.left = '0px';
    close_burger.style.backgroundColor = 'purple';
    // dropdown.style.zIndex = '1'
    show_burger.style.zIndex = '1';
    close_burger.style.zIndex = '2';
    nav_bar.style.zIndex = '0';
    shadow.style.display = 'inline';
    dropdown.style.animation = 'moveRight .5s';
}
show_burger.addEventListener('click', showmenu);

function closemenu(){
    right_drop_down.style.zIndex = '1';
    close_burger.style.display = 'none';
    show_burger.style.display = 'inline';
    show_burger.style.left ='0';
    dropdown.style.left = '-250px';
    show_icon.style.animation = 'rotateburger .5s linear'
    show_burger.style.backgroundColor = 'orange';
    // dropdown.style.zIndex = '1'
    show_burger.style.zIndex = '0';
    close_burger.style.zIndex = '1';
    nav_bar.style.zIndex = '2';
    shadow.style.display = 'none';
    dropdown.style.animation = 'moveLeftt .5s';
}
close_burger.addEventListener('click', closemenu);



