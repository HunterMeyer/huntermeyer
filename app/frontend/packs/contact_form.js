$(document).ready(function() {
  const contact = {
    form: $('.js-contact-form'),
    name: $('.js-contact-form #contact_name'),
    email: $('.js-contact-form #contact_email'),
    content: $('.js-contact-form #contact_content'),
    button: $('.js-contact-form #contact_submit'),
    humanCheck: $('.js-contact-form #human_check'),
    success: $('.js-contact-form #contact_success'),
    failure: $('.js-contact-form #contact_failure'),
    hasInput: function(field) {
      return field.val().length > 0;
    },
    toggleSubmit: function() {
      if (this.valid()) {
        this.button.attr('disabled', false);
      } else {
        this.button.attr('disabled', true);
      }
    },
    onFailure: function(message) {
      this.success.hide();
      this.failure.html(message).show();
    },
    onSuccess: function(message) {
      this.failure.hide();
      this.success.html(message).show();
    },
    valid: function() {
      return this.hasInput(this.name) && this.hasInput(this.email) &&
              this.hasInput(this.content) && !this.hasInput(this.humanCheck);
    }
  }

  contact.name.keyup(function() { contact.toggleSubmit(); });
  contact.email.keyup(function() { contact.toggleSubmit(); });
  contact.content.keyup(function() { contact.toggleSubmit(); });
  contact.humanCheck.keyup(function() { contact.toggleSubmit(); });

  contact.form.submit(function(event) {
    event.preventDefault();
    if (contact.valid()) {
      let data = contact.form.serialize();
      $.post(contact.form[0].action, data, function(res) {
        if (res.success === true) {
          contact.onSuccess(res.message);
        } else {
          contact.onFailure(res.message);
        }
      }, 'json');
      return false
    }
  });
});
