module TextArea = {
  @react.component @module("react-aria-components")
  external make: (
    ~label: string,
    ~name: string,
    ~className: string,
    ~maxLength: int,
    ~value: string,
    ~onChange: _ => unit,
  ) => React.element = "TextArea"
}
@react.component
let make = () => {
  let (text, setText) = React.useState(() => "")

  let handleInputChange = event => {
    let value = ReactEvent.Form.currentTarget(event)["value"]
    setText(_ => value)
  }

  let handleSubmit = (v: string) => {
    Console.log(v)
  }

  <div>
    <h1 className="text-2xl text-primary"> {React.string("Create New Task Todo")} </h1>
    <br />
    <form>
      <label htmlFor="task"> {React.string("Task:")} </label>
      <br />
      <TextArea
        label="Todo:"
        maxLength=120
        name="task"
        className="h-32 p-2 w-full border"
        value=text
        onChange={handleInputChange}
      />
      <br />
      <br />
      <Button onClick={_ => handleSubmit(text)}> {React.string("Save")} </Button>
    </form>
  </div>
}
