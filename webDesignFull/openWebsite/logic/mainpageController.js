var menuBtn = document.getElementById("menuBtn");
var sideNav = document.getElementById("sideNav");

menuBtn.onclick = menuControl();

function menuControl() {
  sideNav.style.right = "-250px";
  if (sideNav.style.right == "-250px") {
    alert("Open!");
    sideNav.style.right = "0";
  } else {
    alert("Close!");
    sideNav.style.right = "-250px";
  }
}