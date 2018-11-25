var updateWholesalePrice;

updateWholesalePrice = function() {
    var selection_id;
    console.log('Got it');
    selection_id = $('#car_wholesale_id').val();
    return $.getJSON('/cars/' + selection_id + '/wholesale_price', {}, function(json, response) {
        return $('#wholesale_price').text(json['wholesaleprice'])
    });
};

$(document).on('turbolinks:load', function() {
    console.log('cars loading');
    if ($('#car_wholesale_id').length) {
        updateWholesalePrice;
    }
    $('#car_wholesale_id').on('change', updateWholesalePrice);
});