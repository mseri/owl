(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2017 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)


(** {6 Type definition} *)

type t

type series

type elt =
  | Int'    of int
  | Float'  of float
  | String' of string
  | Any'


(** {6 Pakcking & unpacking functions} *)

val pack_int_series : int array -> series

val pack_float_series : float array -> series

val pack_string_series : string array -> series

val unpack_int_series : series -> int array

val unpack_float_series : series -> float array

val unpack_string_series : series -> string array


(** {6 Core operations} *)

val make : string array -> t

val append : t -> elt array -> unit

val get_row : t -> int -> elt array

val get_col : t -> int -> series

val get_rows : t -> int array -> elt array array

val get_cols : t -> int array -> series array

val get_col_by_name : t -> string -> series
