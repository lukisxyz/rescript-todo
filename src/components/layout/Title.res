@react.component
let make = (~task: int) => {
  let now = Js.Date.make()
  let today: string = switch Js.Date.getDay(now) {
  | 0.0 => "Sunday"
  | 1.0 => "Monday"
  | 2.0 => "Tuesday"
  | 3.0 => "Wednesday"
  | 4.0 => "Thursday"
  | 5.0 => "Friday"
  | 6.0 => "Saturday"
  | _ => "Unknown"
  }
  let todayDate = Js.Date.getDate(now)
  let month = switch Js.Date.getMonth(now) {
  | 0.0 => "January"
  | 1.0 => "February"
  | 2.0 => "March"
  | 3.0 => "April"
  | 4.0 => "May"
  | 5.0 => "June"
  | 6.0 => "July"
  | 7.0 => "August"
  | 8.0 => "September"
  | 9.0 => "October"
  | 10.0 => "November"
  | 11.0 => "December"
  | _ => "Invalid month number"
  }

  <div>
    <div className="flex flex-row justify-between items-center w-full">
      <h2 className="leading-7">
        <span className="font-semibold text-3xl text-indigo-500"> {React.string(`${today}`)} </span>
        <span className="font-normal text-2xl text-indigo-500">
          {React.string(`, ${Js.Float.toString(todayDate)} ${Utils.getOrdinalSuffix(todayDate)}`)}
        </span>
        <br />
        <span className="font-normal text-base text-gray-500"> {React.string(month)} </span>
      </h2>
      <div className="text-gray-500 text-lg mr-3">
        <span className="font-medium"> {React.string(`${Js.Int.toString(task)}`)} </span>
        <span className="font-normal"> {React.string(` ${task > 1 ? "Tasks" : "Task"}`)} </span>
      </div>
    </div>
    <div className="text-right mt-9 relative mb-20">
      <div className="w-[150%] -left-6 absolute top-1/2 -translate-y-1/2 h-[1px] bg-black/10" />
      <Button
        onClick={_ => {
          Console.log("Tambah")
        }}
        className={Utils.cn([
          "absolute right-2 top-1/2 -translate-y-1/2 rounded-full z-10 py-7 px-[0.65rem]",
          "bg-red-400 text-white",
          "active:scale-105 active:ring-4 focus:ring-4",
          "hover:bg-red-600",
        ])}>
        <span className="sr-only"> {React.string("Add new task")} </span>
        <svg
          xmlns="http://www.w3.org/2000/svg"
          className="w-9 h-9"
          width="44"
          height="44"
          viewBox="0 0 24 24"
          strokeWidth="1.5"
          stroke="currentColor"
          fill="none"
          strokeLinecap="round"
          strokeLinejoin="round">
          <path stroke="none" d="M0 0h24v24H0z" fill="none" />
          <path d="M12 5l0 14" />
          <path d="M5 12l14 0" />
        </svg>
      </Button>
    </div>
  </div>
}
