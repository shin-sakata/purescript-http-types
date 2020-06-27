{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "purescript-http-types"
, dependencies =
  [ "console"
  , "effect"
  , "either"
  , "lists"
  , "maybe"
  , "psci-support"
  , "tuples"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
