module Network.HTTP.Types.Method
( Method(..)
, parseMethod
-- , renderMethod
-- , renderStdMethod
)
where

import Prelude

import Data.Either (Either(..))

-- | HTTP standard method (as defined by RFC 2616, and PATCH which is defined
--   by RFC 5789).
data Method
    = GET
    | POST
    | HEAD
    | PUT
    | DELETE
    | TRACE
    | CONNECT
    | OPTIONS
    | PATCH

instance showMethod :: Show Method where
    show GET = "GET"
    show POST = "POST"
    show HEAD = "HEAD"
    show PUT = "PUT"
    show DELETE = "DELETE"
    show TRACE = "TRACE"
    show CONNECT = "CONNECT"
    show OPTIONS = "OPTIONS"
    show PATCH = "PATCH"

parseMethod :: String -> Either String Method
parseMethod = case _ of
    "GET" -> Right GET
    "POST" -> Right POST
    "HEAD" -> Right HEAD
    "PUT" -> Right PUT
    "DELETE" -> Right DELETE
    "TRACE" -> Right TRACE
    "CONNECT" -> Right CONNECT
    "OPTIONS" -> Right OPTIONS
    "PATCH" -> Right PATCH
    other -> Left other