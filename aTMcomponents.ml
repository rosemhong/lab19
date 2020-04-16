open Account


let database = ref [] ;;

let initialize (accounts : account_spec list) : unit =
  database := List.map (fun x -> new account(x.name, x.id, x.balance)) ;;

let acquire_id : unit -> id =
  let id =
    Printf.printf "Enter customer id: ";
    read_line ()
  in id

let acquire_amount : unit -> int =
  let id =
    Printf.printf "Enter amount id: ";
    read_line ()
  in id


let acquire_act : unit -> action =
  let id =
    Printf.printf "Enter action: ";
    read_line ()
  in id


let get_balance (id : id) : int =
