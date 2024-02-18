%%raw("import './Checkbox.css'")

module ReactAriaCheckbox = {
  @react.component @module("react-aria-components")
  external make: (
    ~children: React.element,
    ~asChild: bool=?,
    ~defaultChecked: bool=?,
    ~checked: bool,
    ~onChange: bool => unit,
    ~disabled: bool=?,
    ~required: bool=?,
    ~name: string=?,
    ~value: string=?,
    ~className: string,
  ) => React.element = "Checkbox"
}

@react.component
let make = (~checked: bool, ~onChange: bool => unit, ~text: string) => {
  <div className="my-3 pb-6 pt-3 border-b">
    <ReactAriaCheckbox checked={checked} onChange={onChange} className="react-aria-Checkbox">
      <div className="checkbox">
        <svg viewBox="0 0 18 18" ariaHidden=true>
          <polyline points="1 9 7 14 15 4" />
        </svg>
      </div>
      <span className="flex-grow"> {React.string(text)} </span>
      <time className="flex-shrink-0 w-16 text-sm font-medium text-gray-400">
        {React.string("07:30")}
      </time>
    </ReactAriaCheckbox>
  </div>
}
