open OUnit2

let tests = "test suite for Vector" >::: [
  "foo" >:: (fun _ -> assert_equal 0 (0));
]


let _ = run_test_tt_main tests