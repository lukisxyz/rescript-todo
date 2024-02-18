module ReactAriaButton = {
  @react.component @module("react-aria-components")
  external make: (
    ~children: React.element,
    ~className: string,
    ~onPress: JsxEventU.Mouse.t => unit,
  ) => React.element = "Button"
}

type variant =
  | Default
  | Destructive
  | Outline
  | Secondary
  | Ghost
  | Link

type size =
  | Default
  | Sm
  | Lg
  | Icon

let variantClass = (v: variant) =>
  switch v {
  | Default => "bg-primary text-primary-foreground hover:bg-indigo-600"
  | Destructive => "bg-destructive text-destructive-foreground hover:bg-destructive/90"
  | Outline => "border border-input hover:bg-accent hover:text-accent-foreground"
  | Secondary => "bg-secondary text-secondary-foreground hover:bg-secondary/80"
  | Ghost => "hover:bg-accent hover:text-accent-foreground"
  | Link => "underline-offset-4 hover:underline text-primary"
  }

let sizeClass = (s: size) =>
  switch s {
  | Default => "h-10 py-2 px-4"
  | Sm => "h-9 px-3 rounded-md"
  | Lg => "h-11 px-8 rounded-md"
  | Icon => "h-10 w-10"
  }

@react.component
let make = (
  ~className: option<string>=?,
  ~variant: variant=Default,
  ~size: size=Default,
  ~onClick: JsxEventU.Mouse.t => unit,
  ~children,
  (),
) => {
  let defaultStyle = "inline-flex items-center justify-center rounded-md text-base font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:opacity-50 disabled:pointer-events-none ring-offset-background"
  let classNames = Utils.cn([
    defaultStyle,
    variantClass(variant),
    sizeClass(size),
    switch className {
    | Some(cn) => cn
    | None => ""
    },
  ])
  <ReactAriaButton className=classNames onPress={onClick}> {children} </ReactAriaButton>
}
