module ReactAriaDialogTrigger = {
  @react.component @module("react-aria-components")
  external make: (~children: React.element) => React.element = "DialogTrigger"
}
module ReactAriaDialog = {
  @react.component @module("react-aria-components")
  external make: (~children: React.element, ~className: string) => React.element = "Dialog"
}
module ReactAriaModal = {
  @react.component @module("react-aria-components")
  external make: (
    ~children: React.element,
    ~isDismissable: bool,
    ~isOpen: bool,
    ~onOpenChange: bool => unit,
  ) => React.element = "Modal"
}

@react.component
let make = (~children) => {
  let (isModalOpen, setOpenModal) = React.useState(() => false)

  let handleOpenModal = (_: JsxEventU.Mouse.t) => {
    setOpenModal(_ => true)
  }

  let handleCloseModal = (_: JsxEventU.Mouse.t) => {
    setOpenModal(_ => false)
  }

  let handleOverlayModal = (_: bool) => {
    setOpenModal(_ => false)
  }
  <ReactAriaDialogTrigger>
    <Button
      onClick={handleOpenModal}
      className={Utils.cn([
        "absolute right-2 top-1/2 -translate-y-1/2 rounded-full z-10 py-7 px-[0.65rem]",
        "bg-indigo-400 text-white",
        "active:scale-105 active:ring-4 focus:ring-4",
        "hover:bg-indigo-500",
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
    <ReactAriaModal isDismissable=true isOpen={isModalOpen} onOpenChange={handleOverlayModal}>
      <ReactAriaDialog className="h-screen w-screen bg-black/50 z-50">
        <div
          className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 max-w-[31rem] max-h-[96vh] overflow-hidden w-full mx-auto p-3">
          <div className="bg-white h-[84vh] rounded-md p-3 overflow-hidden relative">
            <Button
              onClick={handleCloseModal}
              className={Utils.cn([
                "absolute right-4 top-4 rounded-full z-10 py-6 px-[0.65rem]",
                "bg-red-50 text-red-700",
                "active:scale-105 active:ring-4 focus:ring-4",
                "hover:bg-red-100",
              ])}>
              <span className="sr-only"> {React.string("Close modal")} </span>
              <svg
                xmlns="http://www.w3.org/2000/svg"
                className="w-7 h-7 rotate-45"
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
            <div className="px-6 py-16 h-full w-full"> {children} </div>
          </div>
        </div>
      </ReactAriaDialog>
    </ReactAriaModal>
  </ReactAriaDialogTrigger>
}
