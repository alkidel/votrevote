const slicker = () => {
    $('.slider').slick({
    dots: true,
    infinite: true,
    speed: 300,
    slidesToShow: 1,
    adaptiveHeight: true,
    autoplay: false,
    autoplaySpeed: 2000,
    arrows: true
  });
};

export { slicker };
