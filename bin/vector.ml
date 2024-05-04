(* vector.ml *)


type 'a t = {
	mutable buffer: 'a array;
	mutable size: int;
	mutable capacity: int;
}


let is_full da =
	da.size = da.capacity


let increase_capacity da =
	let bigger_buffer = Array.make (da.capacity * 2) 0 in
	Array.blit da.buffer 0 bigger_buffer 0 da.size;
	da.buffer <- bigger_buffer;
	da.capacity <- da.capacity * 2


let intial_capcity = 10


let create () = {
	buffer = Array.make intial_capcity 0;
	size = 0;
	capacity = intial_capcity;
}

let add da item =
	if is_full da then increase_capacity da
	else da.buffer.(da.size) <- item


let get (idx: int) : int = failwith "Not implemented"


let set (idx : int, item : 'a) : unit = failwith "Not implemented"


let is_empty da =
	da.size = 0


let length (): int = failwith "Not implemented"


let print () = failwith "Not implemented"

