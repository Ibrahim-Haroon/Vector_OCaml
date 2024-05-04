(* dynamicArray.mli *)

type t

val create : unit -> t
val add : t -> int -> unit
val get : t -> int -> int
val set : t -> int -> int -> unit
val is_empty: t -> bool
val length : t -> int
val print: t -> unit
