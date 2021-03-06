module Network.HTTP.Types.Header
(
  -- ** Types
  Header
, HeaderName
, RequestHeaders
, ResponseHeaders
  -- ** Common headers
, hAccept
, hAcceptCharset
, hAcceptEncoding
, hAcceptLanguage
, hAcceptRanges
, hAge
, hAllow
, hAuthorization
, hCacheControl
, hConnection
, hContentEncoding
, hContentLanguage
, hContentLength
, hContentLocation
, hContentMD5
, hContentRange
, hContentType
, hDate
, hETag
, hExpect
, hExpires
, hFrom
, hHost
, hIfMatch
, hIfModifiedSince
, hIfNoneMatch
, hIfRange
, hIfUnmodifiedSince
, hLastModified
, hLocation
, hMaxForwards
, hOrigin
, hPragma
, hPrefer
, hPreferenceApplied
, hProxyAuthenticate
, hProxyAuthorization
, hRange
, hReferer
, hRetryAfter
, hServer
, hTE
, hTrailer
, hTransferEncoding
, hUpgrade
, hUserAgent
, hVary
, hVia
, hWWWAuthenticate
, hWarning
, hContentDisposition
, hMIMEVersion
, hCookie
, hSetCookie
  -- ** Byte ranges
, ByteRange(..)
-- , renderByteRangeBuilder
-- , renderByteRange
-- , ByteRanges
-- , renderByteRangesBuilder
-- , renderByteRanges
-- , parseByteRanges
)
where

import Data.Tuple (Tuple)

-- | Header
type Header = Tuple HeaderName String

-- | Header name
type HeaderName = String

-- | Request Headers
type RequestHeaders = Array Header

-- | Response Headers
type ResponseHeaders = Array Header

-- | HTTP Header names according to http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html
hAccept :: HeaderName
hAccept = "Accept"
hAcceptCharset :: HeaderName
hAcceptCharset = "Accept-Charset"
hAcceptEncoding :: HeaderName
hAcceptEncoding = "Accept-Encoding"
hAcceptLanguage :: HeaderName
hAcceptLanguage = "Accept-Language"
hAcceptRanges :: HeaderName
hAcceptRanges = "Accept-Ranges"
hAge :: HeaderName
hAge = "Age"
hAllow :: HeaderName
hAllow = "Allow"
hAuthorization :: HeaderName
hAuthorization = "Authorization"
hCacheControl :: HeaderName
hCacheControl = "Cache-Control"
hConnection :: HeaderName
hConnection = "Connection"
hContentEncoding :: HeaderName
hContentEncoding = "Content-Encoding"
hContentLanguage :: HeaderName
hContentLanguage = "Content-Language"
hContentLength :: HeaderName
hContentLength = "Content-Length"
hContentLocation :: HeaderName
hContentLocation = "Content-Location"
hContentMD5 :: HeaderName
hContentMD5 = "Content-MD5"
hContentRange :: HeaderName
hContentRange = "Content-Range"
hContentType :: HeaderName
hContentType = "Content-Type"
hDate :: HeaderName
hDate = "Date"
hETag :: HeaderName
hETag = "ETag"
hExpect :: HeaderName
hExpect = "Expect"
hExpires :: HeaderName
hExpires = "Expires"
hFrom :: HeaderName
hFrom = "From"
hHost :: HeaderName
hHost = "Host"
hIfMatch :: HeaderName
hIfMatch = "If-Match"
hIfModifiedSince :: HeaderName
hIfModifiedSince = "If-Modified-Since"
hIfNoneMatch :: HeaderName
hIfNoneMatch = "If-None-Match"
hIfRange :: HeaderName
hIfRange = "If-Range"
hIfUnmodifiedSince :: HeaderName
hIfUnmodifiedSince = "If-Unmodified-Since"
hLastModified :: HeaderName
hLastModified = "Last-Modified"
hLocation :: HeaderName
hLocation = "Location"
hMaxForwards :: HeaderName
hMaxForwards = "Max-Forwards"
hPragma :: HeaderName
hPragma = "Pragma"
hProxyAuthenticate :: HeaderName
hProxyAuthenticate = "Proxy-Authenticate"
hProxyAuthorization :: HeaderName
hProxyAuthorization = "Proxy-Authorization"
hRange :: HeaderName
hRange = "Range"
hReferer :: HeaderName
hReferer = "Referer"
hRetryAfter :: HeaderName
hRetryAfter = "Retry-After"
hServer :: HeaderName
hServer = "Server"
hTE :: HeaderName
hTE = "TE"
hTrailer :: HeaderName
hTrailer = "Trailer"
hTransferEncoding :: HeaderName
hTransferEncoding = "Transfer-Encoding"
hUpgrade :: HeaderName
hUpgrade = "Upgrade"
hUserAgent :: HeaderName
hUserAgent = "User-Agent"
hVary :: HeaderName
hVary = "Vary"
hVia :: HeaderName
hVia = "Via"
hWWWAuthenticate :: HeaderName
hWWWAuthenticate = "WWW-Authenticate"
hWarning :: HeaderName
hWarning = "Warning"
hContentDisposition :: HeaderName
hContentDisposition = "Content-Disposition"
hMIMEVersion :: HeaderName
hMIMEVersion = "MIME-Version"
hCookie :: HeaderName
hCookie = "Cookie"
hSetCookie :: HeaderName
hSetCookie = "Set-Cookie"
hOrigin :: HeaderName
hOrigin = "Origin"
hPrefer :: HeaderName
hPrefer = "Prefer"
hPreferenceApplied :: HeaderName
hPreferenceApplied = "Preference-Applied"

data ByteRange
  = ByteRangeFrom Int
  | ByteRangeFromTo Int Int
  | ByteRangeSuffix Int
