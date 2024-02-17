// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Clsx from "clsx";
import * as TailwindMerge from "tailwind-merge";

function cn(input) {
  return TailwindMerge.twMerge(Clsx.clsx(input));
}

function getOrdinalSuffix(num) {
  var integerPart = num | 0;
  if (integerPart >= 4) {
    switch (integerPart) {
      case 22 :
          return "nd";
      case 23 :
          return "rd";
      case 24 :
      case 25 :
      case 26 :
      case 27 :
      case 28 :
      case 29 :
      case 30 :
          return "th";
      case 21 :
      case 31 :
          return "st";
      default:
        return "th";
    }
  } else {
    if (integerPart <= 0) {
      return "th";
    }
    switch (integerPart) {
      case 1 :
          return "st";
      case 2 :
          return "nd";
      case 3 :
          return "rd";
      
    }
  }
}

export {
  cn ,
  getOrdinalSuffix ,
}
/* clsx Not a pure module */