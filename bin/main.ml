(* main.ml *)
open Vector

let () =
    let vector = create () in
    add vector 10;
    add vector 20;
    print_endline ("Element at index 1: " ^ string_of_int (get vector 0));
    set vector 1 30;
    print_endline ("Length of vector: " ^ string_of_int (length vector))
