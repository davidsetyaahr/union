const nav = () => {
  let body = window.scrollY;
  let mainNav = document.querySelector(".main-nav");
  let img = document.getElementById("logo");
  let dir = "assets/images/common/";
  if (body > 0) {
    img.src = dir + "logo.png";
    mainNav.classList.add("nav-white");
  } else {
    img.src = dir + "logo-white.png";
    mainNav.classList.remove("nav-white");
  }
};
nav();
window.addEventListener("scroll", function() {
  nav();
});
