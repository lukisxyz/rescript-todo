@react.component
let make = (~children) => {
  <main
    className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 max-w-[31rem] w-full mx-auto p-6">
    <div className="bg-background min-h-[78vh] rounded-md h-full p-6"> {children} </div>
  </main>
}
