@react.component
let make = () => {
  <Container>
    <Title task=12 />
    <div className="max-h-[56vh] overflow-y-auto scroll-m-1 scroll-container">
      <TaskCardView text="Makan siang" checked=false onChange={_ => Console.log("Checked")} />
      <TaskCardView
        text="Makan malam bareng keluarga, makan di warung steak"
        checked=false
        onChange={_ => Console.log("Checked")}
      />
      <TaskCardView
        text="Perbaiki komputer rumah" checked=false onChange={_ => Console.log("Checked")}
      />
      <TaskCardView text="Makan siang" checked=false onChange={_ => Console.log("Checked")} />
      <TaskCardView
        text="Makan malam bareng keluarga" checked=false onChange={_ => Console.log("Checked")}
      />
      <TaskCardView
        text="Perbaiki komputer rumah" checked=false onChange={_ => Console.log("Checked")}
      />
      <TaskCardView text="Makan siang" checked=false onChange={_ => Console.log("Checked")} />
      <TaskCardView
        text="Makan malam bareng keluarga" checked=false onChange={_ => Console.log("Checked")}
      />
    </div>
  </Container>
}
