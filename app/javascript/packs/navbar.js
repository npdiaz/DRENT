const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-wagon');
  const logo = document.querySelector('#nav-logo')
  const new_img = document.querySelector('#other-img').innerText
  const old_img = document.querySelector('#init-img').innerText
  const searchBar = document.querySelector('#search-bar')

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-wagon-white');
        navbar.querySelectorAll('a').forEach((a) => {
          a.style.color = 'gray'; })
        searchBar.classList.remove('search-bar');
        searchBar.classList.add('search-bar-main');
        logo.src = new_img
      } else {
        navbar.classList.remove('navbar-wagon-white');
        searchBar.classList.remove('search-bar-main');
        searchBar.classList.add('search-bar');
        logo.src = old_img
        navbar.querySelectorAll('a').forEach((a) => {
          a.style.color = 'white';
        })


      }
    });
  }
};

export { initUpdateNavbarOnScroll };
