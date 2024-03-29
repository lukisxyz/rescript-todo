// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Js_exn from "rescript/lib/es6/js_exn.js";

function setItem(key, data) {
  localStorage.setItem(key, data);
}

function getItem(key) {
  var v = localStorage.getItem(key);
  if (v !== null) {
    return v;
  } else {
    return Js_exn.raiseError("Key does not exist in localStorage");
  }
}

function editItem(key, newData) {
  var match = localStorage.getItem(key);
  if (match !== null) {
    localStorage.setItem(key, newData);
    return ;
  } else {
    return Js_exn.raiseError("Key does not exist in localStorage");
  }
}

function removeItem(key) {
  var match = localStorage.getItem(key);
  if (match !== null) {
    localStorage.removeItem(key);
    return ;
  } else {
    return Js_exn.raiseError("Key does not exist in localStorage");
  }
}

function clearAllItems() {
  localStorage.clear();
}

export {
  setItem ,
  getItem ,
  editItem ,
  removeItem ,
  clearAllItems ,
}
/* No side effect */
