document.querySelectorAll('[data-project-gallery]').forEach((gallery) => {
  const viewport = gallery.querySelector('.project-gallery-viewport');
  const slides = gallery.querySelectorAll('.project-gallery-slide');
  const previous = gallery.querySelector('[data-gallery-prev]');
  const next = gallery.querySelector('[data-gallery-next]');
  const count = gallery.querySelector('[data-gallery-count]');
  const reducedMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
  let current = 0;

  function update() {
    current = Math.max(0, Math.min(slides.length - 1, Math.round(viewport.scrollLeft / viewport.clientWidth)));
    count.textContent = `${current + 1} / ${slides.length}`;
    previous.disabled = current === 0;
    next.disabled = current === slides.length - 1;
  }

  function goTo(index) {
    viewport.scrollTo({
      left: Math.max(0, Math.min(slides.length - 1, index)) * viewport.clientWidth,
      behavior: reducedMotion.matches ? 'auto' : 'smooth',
    });
  }

  previous.addEventListener('click', () => goTo(current - 1));
  next.addEventListener('click', () => goTo(current + 1));
  viewport.addEventListener('keydown', (event) => {
    if (event.key === 'ArrowLeft' || event.key === 'ArrowRight') {
      event.preventDefault();
      goTo(current + (event.key === 'ArrowRight' ? 1 : -1));
    }
  });
  viewport.addEventListener('scroll', update, { passive: true });
  window.addEventListener('resize', () => goTo(current));
  update();
});
