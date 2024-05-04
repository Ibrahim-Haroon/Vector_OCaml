(* test_vector.ml *)
open OUnit2
open Vector


let test_create _ =
  let v = create () in
  assert (length v = 0)

let suite =
  "TestVector" >::: [
    "create" >:: test_create;
  ]

let () =
  run_test_tt_main suite
