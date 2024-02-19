let setItem = (key, data) => {
  Dom.Storage2.setItem(Dom.Storage2.localStorage, key, data)
}

let getItem = key => {
  switch Dom.Storage2.getItem(Dom.Storage2.localStorage, key) {
  | Some(v) => v
  | None => Js.Exn.raiseError("Key does not exist in localStorage")
  }
}

let editItem = (key, newData) => {
  switch Dom.Storage2.getItem(Dom.Storage2.localStorage, key) {
  | Some(_) => Dom.Storage2.setItem(Dom.Storage2.localStorage, key, newData)
  | None => Js.Exn.raiseError("Key does not exist in localStorage")
  }
}

let removeItem = key => {
  switch Dom.Storage2.getItem(Dom.Storage2.localStorage, key) {
  | Some(_) => Dom.Storage2.removeItem(Dom.Storage2.localStorage, key)
  | None => Js.Exn.raiseError("Key does not exist in localStorage")
  }
}

let clearAllItems = () => {
  Dom.Storage2.localStorage->Dom.Storage2.clear
}
