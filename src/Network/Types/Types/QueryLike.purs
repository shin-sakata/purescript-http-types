module Network.HTTP.Types.QueryLike
( Query
, QueryItem
, QueryText
, SimpleQuery
, SimpleQueryItem
) where

import Data.List (List)
import Data.Maybe (Maybe)
import Data.Tuple (Tuple)


-- | Query item
type QueryItem = Tuple String (Maybe String)

-- | Query
type Query = List QueryItem

-- | Like Query, but with 'Text' instead of 'B.ByteString' (UTF8-encoded).
type QueryText = List (Tuple String (Maybe String))

-- | Simplified Query item type without support for parameter-less items.
type SimpleQueryItem = Tuple String String

-- | Simplified Query type without support for parameter-less items.
type SimpleQuery = List SimpleQueryItem
