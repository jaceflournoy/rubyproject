var updateWholesalePrice;
var updateTotalPrice;

var wholesalePrice;
var markupPrice;
var totalPrice;

updateWholesalePrice = function() {
    let selection_id;
    console.log('Got it');
    selection_id = $('#quote_car_id').val();
    console.log(selection_id);
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        console.log("we've gotten this far");
        return $('#wholesaleprice').text(json['wholesaleprice']);
    });
};

updateTotalPrice = function() {
    let selection_id;
    console.log('Got it 2');
    selection_id = $('#quote_car_id').val();
    console.log(selection_id);
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        console.log("round 2");
        wholesalePrice = parseFloat(json['wholesaleprice']);
        markupPrice = (wholesalePrice * 0.082) + wholesalePrice;
        return $('#totalprice').text(markupPrice);
    });
};

$(document).on('turbolinks:load', function() {
    console.log('cars loading');

    $('#quote_car_id').on('change', updateWholesalePrice);
    $('#quote_car_id').on('change', updateTotalPrice);
    $('#quote_car_id').trigger("change");
});