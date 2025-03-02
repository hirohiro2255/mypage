module Pages.Vanillajs.ExpandingCards exposing (Model, Msg, page)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Page exposing (Page)
import View exposing (View)



-- PAGE


page : Page Model Msg
page =
    Page.sandbox
        { init = init
        , update = update
        , view = view
        }



-- INIT


type alias Model =
    { counter : Int }


init : Model
init =
    { counter = 0 }



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | counter = model.counter + 1 }

        Decrement ->
            { model | counter = model.counter - 1 }


view : Model -> View Msg
view model =
    { title = "Pages.Vanillajs.ExpandingCards"
    , body =
        [ button [ onClick Increment ] [ text "+" ]
        , div [] [ text (String.fromInt model.counter) ]
        , button [ onClick Decrement ] [ text "-" ]
        ]
    }
