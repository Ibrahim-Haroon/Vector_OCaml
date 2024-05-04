(* vector.mli *)


type 'a t

val create : unit -> 'a t
val add : 'a t -> 'a -> unit
val get : 'a t -> int -> 'a
val set : 'a t -> int -> 'a -> unit
val is_empty : 'a t -> bool
val length : 'a t -> int
val print : 'a t -> unit -> unit
