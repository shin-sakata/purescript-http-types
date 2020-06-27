module Network.HTTP.Types.QueryLike
( Query
, QueryItem
, QueryText
, SimpleQuery
, SimpleQueryItem
) where

import Data.Maybe (Maybe)
import Data.Tuple (Tuple)


-- | Query item
type QueryItem = Tuple String (Maybe String)

-- | Query
type Query = Array QueryItem

-- | Like Query, but with 'Text' instead of 'B.ByteString' (UTF8-encoded).
type QueryText = Array (Tuple String (Maybe String))

-- | Simplified Query item type without support for parameter-less items.
type SimpleQueryItem = Tuple String String

-- | Simplified Query type without support for parameter-less items.
type SimpleQuery = Array SimpleQueryItem
