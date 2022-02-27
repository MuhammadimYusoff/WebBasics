// create variable for each errors
var nameError = document.getElementById('name-error');
var phoneError = document.getElementById('phone-error');
var emailError = document.getElementById('email-error');
var messageError = document.getElementById('message-error');
var submitError = document.getElementById('submit-error');


// Function to validate the form
function validateName() {
    var name = document.getElementById('contact-name').value;

    if(name.length == 0) {
        nameError.innerHTML = 'Full name is required';
        return false;
    }
    // Below checking for the firstName<space>lastName
    if (!name.match(/^[A-Za-z]*\s{1}[A-Za-z]*$/)) {
        nameError.innerHTML = 'FirstName {space} LastName';
        return false;
    }

    // If no error for name part then it will return true
    nameError.innerHTML = '<i class="fa-solid fa-check-circle"></i>';
    return true;
}

function validatePhone() {
    var phone = innerHTML.getElementById('contact-phone').value;

    if(phone.length == 0) {
        phoneError.innerHTML = 'Phone number is required';
        return false;
    }
    if(phone.length !== 10) {
        phoneError.innerHTML = 'Phone number should be 10 digits';
        return false;
    }
    if(!phone.match(/^[0-9]{10}$/)) {
        phoneError.innerHTML = 'Only digits allowed';
        return false;
    }

    // If no error for phone part then it will return true
    phoneError.innerHTML = '<i class="fa-solid fa-check-circle"></i>';
    return true;
}


function validateEmail() {
    var email = innerHTML.getElementById('contact-email').value;

    if(email.length == 0) {
        emailError.innerHTML = 'Email is required';
        return false;
    }
    if(!phone.match(/^[A-Za-z]\._\-[0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)) {
        emailError.innerHTML = 'Email is required';
        return false;
    }

    // If no error for email part then it will return true
    emailError.innerHTML = '<i class="fa-solid fa-check-circle"></i>';
    return true;
}

function validateMessage() {
    var message = innerHTML.getElementById('contact-message').value;
    var requiredCharacters = 30;
    var left = requiredCharacters - message.length;

    if(left > 0 ) {
        messageError.innerHTML = 'You have ' + left + ' more characters required';
        return false;
    }

    // If no error for message part then it will return true
    messageError.innerHTML = '<i class="fa-solid fa-check-circle"></i>';
    return true;
}

function validateForm() {
    if(!validateName() || !validatePhone() || !validateEmail() || !validateMessage()) {
        submitError.style.display = 'block';
        submitError.innerHTML = 'Please fill all the fields correctly';
        setTimeout(function() {submitError.style.display = 'none';}, 5000);
        return false;
    }
}