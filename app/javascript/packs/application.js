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

function dropdownBlackToggle() {
  if(document.querySelector("#dropdown-black-btn")) {
    const button = document.querySelector("#dropdown-black-btn");
    button.addEventListener("click", (event) => {
      document.querySelector("#dropdown-black-items").classList.toggle("dropdown-black-none");
    });
  }
}

dropdownBlackToggle()

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

$(".alert" ).fadeOut(1000);

import { slicker } from '../plugins/slicker';
slicker()

let categoryButtons = document.querySelectorAll('.category-btn');
  categoryButtons.forEach((categoryButton) => {
    categoryButton.addEventListener("click", (event) => {

    let nonSelectedButtons = document.querySelectorAll('.category-btn');
    nonSelectedButtons.forEach((nonSelectedButton) => {
      nonSelectedButton.style.backgroundColor = 'white';
      nonSelectedButton.style.color = 'black';
    });


    let borderColor = window.getComputedStyle(categoryButton).borderColor;
    categoryButton.style.backgroundColor = borderColor;
    categoryButton.style.color = 'white';

    });
  });

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
