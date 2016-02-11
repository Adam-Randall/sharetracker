function hideLoginPage() {
  $('.modal-body').hide();
  $('#login-heading').hide();
  $('#registration-page').show();
  $('#registration-heading-1').show();
  $('#registration-heading-2').show();
}

function hideRegistrationPage() {
  $('.modal-body').hide();
  $('#registration-heading-1').hide();
  $('#registration-heading-2').hide();
  $('#login-page').show();
  $('#login-heading').show();
}

function hidePasswordPage() {
  $('.modal-body').hide();
  $('#password-page').show();
}