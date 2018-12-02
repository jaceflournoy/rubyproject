var updateWholesalePrice;
var updateSubTotalPrice;
var updateTotalPrice;

updateTotalPrice = function() {
    car_id = $('#quote_car_id').val();
    loan_id = $('#quote_loan_id').val();
    return $.getJSON('/quotes/final_price', {car: car_id, loan: loan_id}, function(json, response) {
        console.log(json['price']);
        totalPrice = parseFloat(json['price']);
        return $('#totalprice').val(totalPrice.toFixed(2));
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



function roundNumber(num, scale) {
    if(!("" + num).includes("e")) {
        return +(Math.round(num + "e+" + scale)  + "e-" + scale);
    } else {
        var arr = ("" + num).split("e");
        var sig = ""
        if(+arr[1] + scale > 0) {
            sig = "+";
        }
        return +(Math.round(+arr[0] + "e" + sig + (+arr[1] + scale)) + "e-" + scale);
    }
}

function e(b,n){return Math.pow(b,n);}
//compound 1 for yearly, 4 for quarterly, 12 for monthly, 24 for bimonthly

function getPayment(principal,rate,years,compound) {
    let r = rate / compound;
    let n = years * compound;
    document.getElementById("payment").innerText = roundNumber(principal*r/(1-e(1/(1+r),n)),2);
}

function getSchedule(period,principal,rate,years,compound){
    let r = rate / compound;
    let n = years * compound;
    let payment = principal*r/(1-e(1/(1+r),n));
    n = n - period + 1;
    let begbal = payment*(1-e(1/(1+r),n))/r;
    n--;
    let endbal = payment*(1-e(1/(1+r),n))/r;
    let paymentOnPrincipal = begbal - endbal;
    return {
        "begbal":roundNumber(begbal,2),
        "interest":roundNumber(payment - paymentOnPrincipal,2),
        "principal":roundNumber(paymentOnPrincipal,2),
        "endbal":roundNumber(endbal,2)
    }
}

function buildSchedule(principal, rate, years, compound) {
  var body = document.getElementsByTagName('body')[0];
  var tbl = document.createElement('table');
  tbl.className = 'tbl';
  tbl.setAttribute('border', '1');
  var tbdy = document.createElement('tbody');
  var hdr = document.createElement('tr');
  var head = document.createElement('th');
    head.innerText = "Period";
    hdr.appendChild(head);
    head = document.createElement('th');
  head.innerText = "Beginning Balance";
  hdr.appendChild(head);
  head = document.createElement('th');
  head.innerText = "Interest Payment";
  hdr.appendChild(head);
  head = document.createElement('th');
  head.innerText = "Principal Payment";
  hdr.appendChild(head);
  head = document.createElement('th');
  head.innerText = "Ending Balance";
  hdr.appendChild(head);
  tbdy.appendChild(hdr);

  for (let i=1;i<years*compound+1;i++) {
    let data = getSchedule(i,principal,rate,years,compound);
    var tr = document.createElement('tr');
    var td = document.createElement('td');
    td.innerText = i.toString();
    tr.appendChild(td);
      td = document.createElement('td');
      td.innerText = data.begbal.toLocaleString();
    tr.appendChild(td);
    td = document.createElement('td');
    td.innerText = data.interest.toLocaleString();
    tr.appendChild(td);
    td = document.createElement('td');
    td.innerText = data.principal.toLocaleString();
    tr.appendChild(td);
    td = document.createElement('td');
    td.innerText = data.endbal.toLocaleString();
    tr.appendChild(td);
    tbdy.appendChild(tr);
  }

  tbl.appendChild(tbdy);
  body.appendChild(tbl)
}