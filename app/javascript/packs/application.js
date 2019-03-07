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

import { slicker } from '../plugins/slicker';
slicker()
