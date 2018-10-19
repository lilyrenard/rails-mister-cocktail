import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Create your cocktails.", "Reinvent yourself."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
