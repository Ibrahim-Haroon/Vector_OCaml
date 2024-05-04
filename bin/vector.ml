(* vector.ml *)
open Printf


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


let is_empty da =
	da.size = 0


let get da idx =
	if is_empty da then failwith "Empty vector"
	else if idx < 0 || idx >= da.size then failwith "Out of bounds"
	else da.buffer.(idx)


let set da idx item =
	if is_empty da then failwith "Empty vector"
	else if idx < 0 || idx >= da.size then failwith "Out of bounds"
	else da.buffer.(idx) <- item


let length da =
	da.size


let print da () =
	Array.iter (fun x -> printf "%d " x) da.buffer;
	print_endline ""

