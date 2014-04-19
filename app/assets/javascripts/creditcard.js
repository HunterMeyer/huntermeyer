function createNumForCheckSum(acctNumber) {
  var digits = ("" + acctNumber).split("");
  for (var i = digits.length - 2; i >= 0; i -= 2) {
    digits[i] *= 2;
    if (digits[i] >= 10) {
      digits[i] = 1 + (digits[i] % 10);
    }
  }; 
  var result = parseInt(digits.join(""));
  return result;
};

function checkSum(convertedNum) {
  var digits = ("" + convertedNum).split("");
  var sum = 0;
  for (var i = 0; i < digits.length; i++) {
    var digitInt = parseInt(digits[i]);
    sum += digitInt;
  }
  return sum;
};

function accountNumberCheck(acctNumber) {
  var digits = createNumForCheckSum(acctNumber);
  var sum = checkSum(digits);
  return sum % 10 === 0;
};

$(function() {
  $("form#account-number").submit(function() {
    var accountNumber = parseInt($("#user-input").val());
    $("#user-input").val("")
    if (accountNumberCheck(accountNumber)) {
      $("#output h2#invalid").hide();
      $("#output h2#valid").slideDown();
    } else {
      $("#output h2#valid").hide();
      $("#output h2#invalid").slideDown();
    }
    return false;
  });
});