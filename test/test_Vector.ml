let foo x = x + 1

let test_foo () =
  let result = foo 5 in
  assert (result = 6);
  print_endline "test_foo passed."

let () =
  test_foo ();
