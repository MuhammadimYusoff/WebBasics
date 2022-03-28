const parallax = document.getElementById('parallax');

// Add EventListener
window.addEventListener("scroll", function () {
    let offset = window.scrollY;
    console.log('Offset: ' + offset);
    parallax.style.backgroundPositionY = offset * 0.8 + "px"; // The Parallax Effect based on the Div
})