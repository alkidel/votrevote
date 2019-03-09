import "bootstrap";

//= require jquery.slick
import 'slick-carousel'
import 'slick-carousel/slick/slick.scss'
import 'slick-carousel/slick/slick-theme.scss'
import slick from 'slick-carousel';

import Chartkick from "chartkick";
window.Chartkick = Chartkick;

// for Chart.js
import Chart from "chart.js";
Chartkick.addAdapter(Chart);

$(".alert" ).fadeOut(1000);

import { slicker } from '../plugins/slicker';
slicker()

const addToggleToNavbar = () => {
  document.querySelectorAll(".navbar-wagon-item").forEach((link) => {
  link.addEventListener("click", (event) => {
    document.querySelectorAll(".navbar-wagon-item").forEach((thing) => {
      thing.classList.remove("tab-active");
    });
    event.currentTarget.classList.toggle("tab-active");
  });
});
};

addToggleToNavbar()


const addToggleToCategories = () => {
  document.querySelectorAll(".category-btn").forEach((button) => {
  button.addEventListener("click", (event) => {
    document.querySelectorAll(".category-btn").forEach((otherButton) => {
      otherButton.classList.remove("active");
    });
    event.currentTarget.classList.add("active");
  });
});
};

addToggleToCategories()

// const categoryButtons = document.querySelectorAll('.category-btn');

// const displayClickedElement = (event) => {
//   event.currentTarget.classList.add("active");
// };

// const removeOtherElements = (event) => {
//   event.currentTarget.classList.remove("active");
// };

// categoryButtons.forEach((button) => {
//   let nonSelectedButtons = document.querySelectorAll('.category-btn');
//       nonSelectedButtons.forEach((nonSelectedButton) => {
//         nonSelectedButton.removeOtherElements;
//       });
//   button.addEventListener('click', displayClickedElement);
// });

  // categoryButtons.forEach((categoryButton) => {
  //   categoryButton.addEventListener("click", (event) => {

    // // let nonSelectedButtons = document.querySelectorAll('.category-btn');
    // // nonSelectedButtons.forEach((nonSelectedButton) => {
    // //   nonSelectedButton.style.backgroundColor = 'white';
    // //   nonSelectedButton.style.color = 'black';
    // });


  //   let borderColor = window.getComputedStyle(categoryButton).borderColor;
  //   categoryButton.style.backgroundColor = borderColor;
  //   categoryButton.style.color = 'white';

  //   });
  // });

// const buttons = document.querySelectorAll('.clickable');

// // when clicked, toggle active

// const displayClickedElement = (event) => {
//   event.currentTarget.classList.toggle("active");
// };

// buttons.forEach((button) => {
//   button.addEventListener('click', displayClickedElement);
// });


// when clicked, toggle active
// let categoryButton = document.querySelector('.culture');

// categoryButton.addEventListener("click", (event) => {
//   let borderColor = window.getComputedStyle(categoryButton).borderColor;
//   categoryButton.style.backgroundColor = borderColor;
//   });

// buttons.forEach((button) => {
//   button.addEventListener('click', displayClickedElement);
// });

// let finance = fff

// finance add event list
//  finance.style.border


// function dropdownBlackToggle() {
//   if(document.querySelector("#dropdown-black-btn")) {
//     const button = document.querySelector("#dropdown-black-btn");
//     button.addEventListener("click", (event) => {
//       document.querySelector("#dropdown-black-items").classList.toggle("dropdown-black-none");
//     });
//   }
// }

// dropdownBlackToggle()
