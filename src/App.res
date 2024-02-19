type task = {
  id: string,
  name: string,
}

@react.component
let make = () => {
  let (lKey, setLKey) = React.useState(() => [])
  React.useEffect0(() => {
    try {
      let keys = LocalStorage.getItem("key")
      let parsedArray = keys->String.split(",")
      let result = Belt.Array.map(parsedArray, x => {
        let v: task = {
          id: x,
          name: LocalStorage.getItem(x),
        }
        v
      })
      setLKey(_ => result)
    } catch {
    | Js.Exn.Error(_) => LocalStorage.setItem("key", "")
    }
    None
  })

  let triggerRerender = () => {
    try {
      let keys = LocalStorage.getItem("key")
      let parsedArray = keys->String.split(",")
      let result = Belt.Array.map(parsedArray, x => {
        let v: task = {
          id: x,
          name: LocalStorage.getItem(x),
        }
        v
      })
      setLKey(_ => result)
    } catch {
    | Js.Exn.Error(_) => LocalStorage.setItem("key", "")
    }
  }

  <Container>
    <Title task=12 />
    <div className="text-right mt-9 relative mb-20 px-2">
      <div className="w-[150%] -left-6 absolute top-1/2 -translate-y-1/2 h-[1px] bg-black/10" />
      <FormCreate onSubmitEvent={triggerRerender} />
    </div>
    <ul className="max-h-[64vh] overflow-y-auto scroll-m-1 scroll-container">
      {Belt.Array.map(lKey, (x: task) =>
        <li key={x.id}>
          <TaskCardView text={x.name} checked=false onChange={_ => Console.log(x.name)} />
        </li>
      )->React.array}
    </ul>
  </Container>
}
