import "bootstrap";
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
