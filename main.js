// Menu Toggle Functionality
const menuBtn = document.getElementById("menu-btn");
const navLinks = document.getElementById("nav-links");
const menuBtnIcon = menuBtn.querySelector("i");

menuBtn.addEventListener("click", () => {
  navLinks.classList.toggle("open");

  const isOpen = navLinks.classList.contains("open");
  menuBtnIcon.setAttribute("class", isOpen ? "ri-close-line" : "ri-menu-line");
});

navLinks.addEventListener("click", () => {
  navLinks.classList.remove("open");
  menuBtnIcon.setAttribute("class", "ri-menu-line");
});

// Scroll Reveal Options
const scrollRevealOption = {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
};

// Scroll Reveal Animations
ScrollReveal().reveal(".header__image img", {
  distance: "50px",
  origin: "right",
  duration: 1000,
});

ScrollReveal().reveal(".header__content h1", {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
  delay: 500,
});

ScrollReveal().reveal(".header__content p", {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
  delay: 1000,
});

ScrollReveal().reveal(".header__content form", {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
  delay: 1500,
});

ScrollReveal().reveal(".header__content .bar", {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
  delay: 2000,
});

ScrollReveal().reveal(".header_image_card", {
  duration: 1000,
  interval: 500,
  delay: 2500,
});
