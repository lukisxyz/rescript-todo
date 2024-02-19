@module("ulid") external ulid: unit => string = "ulid"

let generateULID = () => {
  let uld = ulid()
  uld
}
