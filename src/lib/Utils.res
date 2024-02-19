@module("clsx") external clsx: array<string> => string = "clsx"

@module("tailwind-merge") external twMerge: string => string = "twMerge"

@module("react-hot-toast") external toast: string => unit = "toast"

let cn = (input: array<string>) => {
  twMerge(clsx(input))
}

let getOrdinalSuffix = (num: float): string => {
  let integerPart = int_of_float(num)
  let suffix = switch integerPart {
  | 1 | 21 | 31 => "st"
  | 2 | 22 => "nd"
  | 3 | 23 => "rd"
  | _ => "th"
  }
  suffix
}

let notify = (m: string) => toast(m)
