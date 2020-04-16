
class account (name: string) (id : int) (balance : float) =
  object
    val mutable b = balance

    method update (d : float) = b <- d

    method get_name = name

    method get_id = id

    method get_balance = balance

  end;;
