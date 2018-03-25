(*
 * OWL - an OCaml numerical library for scientific computing
 * Copyright (c) 2016-2018 Liang Wang <liang.wang@cl.cam.ac.uk>
 *)

(**
Statistics: random number generators, PDF and CDF functions, and hypothesis
tests. The module also includes some basic statistical functions such as mean,
variance, skew, and etc.
*)


(** {6 Randomisation functions} *)

val shuffle : 'a array -> 'a array
(** ``shuffle x`` return a new array of the shuffled ``x``.  *)

val choose : 'a array -> int -> 'a array
(** ``choose x n`` draw ``n`` samples from ``x`` without replecement.  *)

val sample : 'a array -> int -> 'a array
(** ``sample x n`` draw ``n`` samples from ``x`` with replacement.  *)


(** {6 Random variables} *)

val uniform : float -> float -> float
(** ``uniform a b`` returns a continuous RV uniformly distributed within [``a``, ``b``]. *)

val bernoulli : float -> float
(** ``bernoulli p`` returns a continuous RV equal to ``1.`` with probability ``p``, ``0.`` otherwise *)

val gaussian : float -> float -> float
(** ``gaussian mu sigma`` returns a continous RV normally distributed with mean ``mu`` and stddev ``sigma`` *)


(* ends here *)
