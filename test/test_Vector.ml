(* test_vector.ml *)
open OUnit2
open Vector
open Printf


let test_create _ =
  let expected_length = 1 in
  let mock = create () in
  let actual_length = length mock in

  assert_equal
    ~msg:(sprintf "Expected length of new mock to be %d but got %d" expected_length actual_length)
    ~printer:string_of_int
    (length mock) 0


let test_add _ =
  let expected_length = 1 in
  let item_to_insert = 1 in
  let mock = create () in
  add mock item_to_insert;
  let actual_length = length mock in

  assert_equal
  ~msg:(sprintf "Expected length %d but got %d" expected_length actual_length)
  expected_length actual_length


let test_get _ =
  let item_to_insert = 1 in
  let mock = create () in
  add mock item_to_insert;
  let item_got = get mock 0 in

  assert_equal
  ~msg:(sprintf "Expected get to return %d but got %d" item_to_insert item_got)
  item_got item_to_insert


let test_set _ =
  let initial_vale = 1 in
  let modified_value = -201 in
  let mock = create () in
  add mock initial_vale;
  set mock 0 modified_value;
  let new_value = get mock 0 in

  assert_equal
  ~msg:(sprintf "Expected %d but got %d" new_value modified_value)
  new_value modified_value


let test_is_empty_returns_true_when_empty _ =
  let mock = create () in

  assert_bool
  "Should be empty"
  (is_empty mock)


let test_is_empty_returns_false_when_not_empty _ =
  let mock = create () in
  add mock 1;

  assert_bool
  "Should not be empty"
  (not (is_empty mock))


let test_length _ =
  let size = Random.init 42; Random.int 1000 in
  let mock = create () in
  for i = 1 to size do
    add mock i
  done;

  assert_equal
  ~msg:(sprintf "Expected length to be %d but got %d" size (length mock))
  size (length mock)


let suite =
  "TestVector" >::: [
    "create" >:: test_create;
    "add" >:: test_add;
    "get" >:: test_get;
    "set" >:: test_set;
    "empty_true" >:: test_is_empty_returns_true_when_empty;
    "empty_false" >:: test_is_empty_returns_false_when_not_empty;
    "length" >:: test_length;
  ]


let () =
  run_test_tt_main suite

