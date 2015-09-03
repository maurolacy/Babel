#!/usr/local/bin/MathematicaScript -script

(* generate "n" digits of Pi in base "b" *) 
n  = ToExpression[$ScriptCommandLine[[2]]];
b  = ToExpression[$ScriptCommandLine[[3]]];
Write["stdout", StringJoin[Join[CharacterRange["0", "9"], CharacterRange["A", "Z"], CharacterRange["a", "z"]][[1 + #1]]] & @@ RealDigits[Pi, b, n]]
