const updateNavbarOnScroll = () => {
const navbar = document.querySelector('.navbar-b')
const logo = document.getElementById('logo')
window.addEventListener('scroll', ()=> {
  if (window.scrollY >= window.innerHeight) {
    navbar.classList.add('navbar-home');
    logo.classList.remove('d-none');
  } else {
    navbar.classList.remove('navbar-home');
    logo.classList.add('d-none');
  }
})
};

export { updateNavbarOnScroll }
