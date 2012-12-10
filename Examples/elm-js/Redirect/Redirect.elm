
module Redirect where

import JavaScript
import Input

foreign export jsevent "redirect"
  redirectTo :: Signal JSString

(butn, pressed) = button " Redirect to elm-lang.org "

redirectTo =
  lift castStringToJSString $
  keepWhen pressed "" (constant "http://elm-lang.org/")

main = butn