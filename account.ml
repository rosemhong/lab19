
class account (name: string) (id : int) (balance : int) =
  object
    val mutable b = balance

    method update (d : int) = b <- d

    method get_name = name

    method get_id = id

    method get_balance = balance

  end;;
