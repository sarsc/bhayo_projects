const updateNavbarOnScroll = () => {
const navbar = document.querySelector('.navbar-b')
window.addEventListener('scroll', ()=> {
  if (window.scrollY >= window.innerHeight) {
    navbar.classList.add('navbar-color');
  } else {
    navbar.classList.remove('navbar-color');
  }
})
};

export { updateNavbarOnScroll }
