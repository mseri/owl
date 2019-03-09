#!/bin/sh
# (*
exec ocaml "$0" "$@"
*) use "topfind";;

#require "owl";;

open Owl

let () =
  let fname =
    if Array.length Sys.argv < 2 then
      "test.txt"
    else
      Sys.argv.(1) ^ ".txt"
  in
  let f x = Maths.sin x /. x in
  let t = Mat.linspace 0. Owl.Const.pi 10 in  
  Mat.save_txt (Arr.map f t) fname;
  Mat.load_txt fname |> ignore;
  print_endline ("Yay! I saved a matrix into " ^ fname ^ " and reloaded it from it!")
