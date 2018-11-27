var updateWholesalePrice;
var updateSubTotalPrice;
var updateTotalPrice;

var wholesalePrice;
var subtotalPrice;
var totalPrice;

updateWholesalePrice = function() {
    let selection_id;
    selection_id = $('#quote_car_id').val();
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        wholesalePrice = parseFloat(json['wholesaleprice']);
        return $('#wholesaleprice').val(wholesalePrice.toFixed(2));
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

updateTotalPrice = function() {
    let selection_id;
    selection_id = $('#quote_car_id').val();
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        wholesalePrice = parseFloat(json['wholesaleprice']);
        subtotalPrice = (wholesalePrice * 0.082) + wholesalePrice;
        totalPrice = subtotalPrice + (subtotalPrice * 0.043);
        return $('#totalprice').val(totalPrice.toFixed(2));
    });
};

$(document).on('turbolinks:load', function() {
    console.log('cars loading');

    $('#quote_car_id').on('change', updateSubTotalPrice);
    $('#quote_car_id').on('change', updateWholesalePrice);
    $('#quote_car_id').on('change', updateTotalPrice);
    $('#quote_car_id').trigger("change");
});