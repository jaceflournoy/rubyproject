var updateWholesalePrice;
var updateSubTotalPrice;
var updateTotalPrice;

var wholesalePrice;
var subtotalPrice;
var totalPrice;

updateTotalPrice = function() {
    car_id = $('#quote_car_id').val();
    loan_id = $('#quote_loan_id').val();
    return $.getJSON('/quotes/final_price', {car: car_id, loan: loan_id}, function(json, response) {
        console.log(json['price']);
        return $('#totalprice').val(json['price']);
    });
};

updateSubTotalPrice = function() {
    let selection_id;
    selection_id = $('#quote_car_id').val();
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        wholesalePrice = parseFloat(json['wholesaleprice']);
        subtotalPrice = (wholesalePrice * 0.082) + wholesalePrice;
        return $('#subtotalprice').text(subtotalPrice.toFixed(2));
    });
};

updateWholesalePrice = function() {
    let selection_id;
    selection_id = $('#quote_car_id').val();
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        wholesalePrice = parseFloat(json['wholesaleprice']);
        return $('#wholesaleprice').val(wholesalePrice.toFixed(2));
    });
};

$(document).on('turbolinks:load', function() {
    console.log('cars loading');


    $('#quote_car_id').on('change', updateTotalPrice);
    $('#quote_loan_id').on('change', updateTotalPrice);
    $('#quote_car_id').on('change', updateSubTotalPrice);
    $('#quote_car_id').on('change', updateWholesalePrice);
    $('#quote_car_id').trigger("change");
});