// This javascript email is from https://smtpjs.com/

function sendEmail() {
    Email.send({
        Host: "smtp.gmail.com", // You can use "Elestic Email" and 1) setup your domain and 2) Create SMTP credentials for Testing too, just sign up and replace the smtp and the email
        Username: "yourgmail@gmail.com", // Here I'm using my Gmail with gmail smtp.
        Password: "Set/'AppPassword/'IfYouUse2FAinGoogleAccountSecurity", // Setup App Password if you use your gmail with 2FA
        To: 'yourother@gmail.com',
        From: document.getElementById("email").value,
        Subject: "WebBasic Complete Contact Us Form Testing",
        Body:   "Name " + document.getElementById("name").value
                + "<br>From: " + document.getElementById("email").value
                + "<br>Phone Number: " + document.getElementById("phone").value
                + "<br>Message: " + document.getElementById("message").value
    }).then(
        message => alert("We will reach you later! Have a Great Day!")
    );
}