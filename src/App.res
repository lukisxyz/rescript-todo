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
      let result = Js.Array2.map(parsedArray, x => {
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
      let result = Js.Array2.map(parsedArray, x => {
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

  let removeTask = (key: string) => {
    try {
      let _ = LocalStorage.removeItem(key)
      let prevKeys = LocalStorage.getItem("key")
      let stringArray = Js.String.split(",", prevKeys)
      let filterredKeys = Js.Array2.filter(stringArray, item => item !== key)
      let keys = Js.Array2.joinWith(filterredKeys, ",")
      LocalStorage.setItem("key", keys)

      if Js.Array2.length(filterredKeys) == 0 {
        setLKey(_ => [])
      } else {
        let result = Js.Array2.map(filterredKeys, x => {
          let v: task = {
            id: x,
            name: LocalStorage.getItem(x),
          }
          v
        })
        setLKey(_ => result)
      }
      Utils.notify("Success to remove task")
    } catch {
    | Js.Exn.Error(_) => Utils.notify("Fail to remove task")
    }
  }

  <Container>
    <Title task={Js.Array2.length(lKey)} />
    <div className="text-right mt-9 relative mb-20 px-2">
      <div className="w-[150%] -left-6 absolute top-1/2 -translate-y-1/2 h-[1px] bg-black/10" />
      <FormCreate onSubmitEvent={triggerRerender} />
    </div>
    <ul className="max-h-[64vh] overflow-y-auto scroll-m-1 scroll-container">
      {Js.Array2.map(lKey, (x: task) =>
        <li key={x.id}>
          <TaskCardView text={x.name} checked=false onChange={_ => removeTask(x.id)} />
        </li>
      )->React.array}
    </ul>
  </Container>
}
