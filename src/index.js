import _ from "lodash";
import "./css/index.css";
import IconSinlov from "./img/ic_sinlov.jpg";
import DataXML from "./data/data.xml";
// Only the default export of JSON modules can be used without warning.
// not use  import { DataJson } from "./data/data.json";
import DataJson from "./data/data.json";

function component() {
  var element = document.createElement("div");

  // Lodash, now imported by this script
  element.innerHTML = _.join(["Hello", "webpack"], " ");
  // add css
  element.classList.add("hello");

  // add img
  const myIcon = new Image();
  myIcon.src = IconSinlov;
  element.appendChild(myIcon);

  // load data
  console.log("DataXML", DataXML);
  console.log("DataJson", DataJson);

  return element;
}

document.body.appendChild(component());
