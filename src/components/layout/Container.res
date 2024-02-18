@react.component
let make = (~children) => {
  <main
    className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 max-w-[31rem] max-h-[84vh] overflow-hidden w-full mx-auto p-6">
    <div className="bg-white/90 h-[78vh] rounded-md p-6 overflow-hidden"> {children} </div>
  </main>
}
