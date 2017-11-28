// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-2.2.0.min
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(".details-btn").click(function(){
            alert("Comprou " + $(this).attr('id'));
        });

        $(".buy-btn").click(function(){
            alert("Comprou " + $(this).attr('id'));
        });
    })(jQuery);
}

function openNav() {
    document.getElementById("mySidenav").style.width = "70%";
    // document.getElementById("flipkart-navbar").style.width = "50%";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.body.style.backgroundColor = "rgba(0,0,0,0)";
}

$(function(){
    $(".details-btn").click(function(){
        window.location = "/produto/" + $(this).attr('data-product-id')
    });

    $("#wishlist").click(function(){
        var productId = $(this).attr('data-product-id');
        var uri = "/customer/add/" + productId;
        console.log(uri)
        $.ajax({
            url: uri,
            method: "POST"
        }).success(function( data, text ) {
            alert("Produto adicionado ao wishlist.");
        }).error(function (request, status, error) {
            console.log(error);
            alert("Error: " + request.responseText + " Status: " + status + " Error: " + error);
        });
    });

    $(".buy-btn").click(function(){
        var productId = $(this).attr('data-product-id');
        var uri = "/cart/add/" + productId;
        $.ajax({
            url: uri,
            method: "POST"
        }).success(function( data, text ) {
            window.location = "/carrinho";
        }).error(function (request, status, error) {
            alert("Error: " + request.responseText + " Status: " + status + " Error: " + error);
        });
    });

    $(".remove-from-cart").click(function() {
        var productId = $(this).attr('data-product-id');

        var uri = "/cart/remove/" + productId;

        $.ajax({
            url: uri,
            method: "POST"
        }).success(function( data, text ) {
            window.location = "/carrinho";
        }).error(function (request, status, error) {
            alert("Error: " + request.responseText + " Status: " + status + " Error: " + error);
        });
    })
});