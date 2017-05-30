module View exposing (view)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class)

import Types exposing (..)


view : Model -> Html Msg
view model = div []
    [ statusBar model
    , pageContent model
    , footer model
    ]
    --[ button [ onClick Decrement ] [ text "-" ]
    --, div [] [ text (toString model) ]
    --, button [ onClick Increment ] [ text "+" ]
    --]


statusBar : Model -> Html Msg
statusBar model =
    let userName = case model.user of NotLoggedInUser -> "Unkown user"
                                      LoggedInUser user -> user.userName
    in div [class "statusBar"] [text userName]


pageContent : Model -> Html Msg
pageContent model = Html.text "page content"


footer : Model -> Html Msg
footer model = Html.text "footer"
