// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Utils from "../../lib/Utils.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Title(props) {
  var task = props.task;
  var now = new Date();
  var match = now.getDay();
  var today = match < 3.0 ? (
      match !== 0.0 ? (
          match !== 1.0 ? (
              match !== 2.0 ? "Unknown" : "Tuesday"
            ) : "Monday"
        ) : "Sunday"
    ) : (
      match < 5.0 ? (
          match !== 3.0 ? (
              match !== 4.0 ? "Unknown" : "Thursday"
            ) : "Wednesday"
        ) : (
          match !== 5.0 ? (
              match !== 6.0 ? "Unknown" : "Saturday"
            ) : "Friday"
        )
    );
  var todayDate = now.getDate();
  var match$1 = now.getMonth();
  var month = match$1 < 6.0 ? (
      match$1 < 3.0 ? (
          match$1 !== 0.0 ? (
              match$1 !== 1.0 ? (
                  match$1 !== 2.0 ? "Invalid month number" : "March"
                ) : "February"
            ) : "January"
        ) : (
          match$1 !== 3.0 ? (
              match$1 !== 4.0 ? (
                  match$1 !== 5.0 ? "Invalid month number" : "June"
                ) : "May"
            ) : "April"
        )
    ) : (
      match$1 < 9.0 ? (
          match$1 !== 6.0 ? (
              match$1 !== 7.0 ? (
                  match$1 !== 8.0 ? "Invalid month number" : "September"
                ) : "August"
            ) : "July"
        ) : (
          match$1 !== 9.0 ? (
              match$1 !== 10.0 ? (
                  match$1 !== 11.0 ? "Invalid month number" : "December"
                ) : "November"
            ) : "October"
        )
    );
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsxs("h2", {
                      children: [
                        JsxRuntime.jsx("span", {
                              children: today,
                              className: "font-semibold text-2xl text-indigo-500"
                            }),
                        JsxRuntime.jsx("span", {
                              children: ", " + todayDate.toString() + " " + Utils.getOrdinalSuffix(todayDate),
                              className: "font-normal text-xl text-indigo-500"
                            }),
                        JsxRuntime.jsx("br", {}),
                        JsxRuntime.jsx("span", {
                              children: month,
                              className: "font-light text-gray-400"
                            })
                      ],
                      className: "leading-7"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx("span", {
                              children: task.toString(),
                              className: "font-normal"
                            }),
                        JsxRuntime.jsx("span", {
                              children: " " + (
                                task > 1 ? "tasks" : "task"
                              ),
                              className: "font-light"
                            })
                      ],
                      className: "text-gray-400 text-lg"
                    })
              ],
              className: "flex flex-row justify-between items-center w-full"
            });
}

var make = Title;

export {
  make ,
}
/* Utils Not a pure module */