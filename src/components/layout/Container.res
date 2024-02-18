@react.component
let make = (~children) => {
  <main
    className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 max-w-[31rem] max-h-[96vh] overflow-hidden w-full mx-auto p-3">
    <div className="bg-white/90 h-[84vh] rounded-md p-3 overflow-hidden"> {children} </div>
  </main>
}
