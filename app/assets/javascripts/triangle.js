function legalTriangle(a, b, c) {
  var numbers = [a, b, c];
  var sortedNumbers = numbers.sort(function(a, b) {
    return a - b;
  });
  if (sortedNumbers[0] + sortedNumbers[1] > sortedNumbers[2]) {
    return true;
  } else {
    return false;
  }
}

function triangleType(a, b, c) {
  if(legalTriangle(a, b, c)) {
    if (a === b && a === c) {
      return "an equilateral";
    } else if ( a === b || a === c || b === c) {
      return "an isosceles";
    } else  {
      return "a scalene";
    }
  } else {
    return "an invalid triangle";
  }
}


$(function() {
  $("form#length_form").submit(function() {

    var x = parseFloat($("input#length_one").val());
    var y = parseFloat($("input#length_two").val());
    var z = parseFloat($("input#length_three").val());

    var triangleSides = triangleType(x, y, z);
    $("div#output").fadeIn();    
    
    $("span#tri_type").empty().append(triangleSides);      

    if (legalTriangle(x, y, z)) {
      $("#triangle").fadeIn();
    } else {
      $("#triangle").hide();
    }

    if (triangleType(x, y, z) === "an equilateral") {
      $("#triangle").css({
        "border-width": "0 125px 216.5px 125px",
        "border-color": "transparent transparent #2383ea transparent"
      });
      $(".info").hide();
      $("#equ_info").show();
    } else if (triangleType(x, y, z) === "an isosceles") {
      $("#triangle").css({
        "border-width": "0 225px 200px 225px",
        "border-color": "transparent transparent #2383ea transparent"
      });
      $(".info").hide();
      $("#iso_info").show();
    } else if (triangleType(x, y, z) === "a scalene") {
      $("#triangle").css({
        "border-width": "0 200px 200px 300px",
        "border-color": "transparent transparent #2383ea transparent"
      });
      $(".info").hide();
      $("#sca_info").show();
    } else {
      $(".info").hide();
      $("#ill_info").show();
    }
    return false;
  });

  $("#aboutTab").click(function() {
    $('#myModal').modal('toggle');
  });
});
