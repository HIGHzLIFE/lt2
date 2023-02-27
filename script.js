// Smooth scrolling when clicking on navigation links because why not
<div class="button-container">
  <a href="#">Privacy Policy</a>
  <a href="#">Terms of Service</a>
  <a href="#">Contact Us</a>
</div>

const navLinks = document.querySelectorAll('.nav__link');

for (const link of navLinks) {
  link.addEventListener('click', clickHandler);
}

function clickHandler(e) {
  e.preventDefault();
  const href = this.getAttribute('href');
  const offsetTop = document.querySelector(href).offsetTop;

  scroll({
    top: offsetTop,
    behavior: 'smooth'
  });
}

function scrollToTop() {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
}

function scrollToBottom() {
  window.scrollTo({
    top: document.body.scrollHeight,
    behavior: 'smooth'
  });
}
