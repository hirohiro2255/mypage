module Pages.Vanillajs.Repo_ exposing (page)

import Html exposing (Html)
import View exposing (View)


page : { repo : String } -> View msg
page params =
    { title = "Pages.Vanillajs.Repo_"
    , body = [ Html.text ("/vanillajs/" ++ params.repo) ]
    }
