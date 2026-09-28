document.querySelectorAll('.project-hero-video').forEach((hero) => {
  const poster = hero.querySelector('.project-hero-video-poster');
  const iframe = hero.querySelector('iframe[data-src]');

  poster.addEventListener('click', () => {
    iframe.src = `${iframe.dataset.src}&autoplay=1`;
    hero.classList.add('is-playing');
  });
});
