open Account


(* Customer account identifiers *)
type id = int

(* Possible actions that an ATM customer can perform *)
type action =
  | Balance           (* balance inquiry *)
  | Withdraw of int   (* withdraw an amount *)
  | Deposit of int    (* deposit an amount *)
  | Next              (* finish this customer and move on to the next one *)
  | Finished          (* shut down the ATM and exit entirely *)
;;

(* A specification of a customer name and initial balance for
   initializing the account database *)
type account_spec = {name : string; id : id; balance : int} ;;

let database = ref [] ;;

let initialize (accounts : account_spec list) : unit =
  database := List.map (fun x -> (new account x.name x.id x.balance)) accounts ;;

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
