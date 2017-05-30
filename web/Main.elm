module Main exposing (..)

import Html exposing (Html)

import Types exposing (..)
import Model
import Update
import View


main : Program Never Model Msg
main = Html.beginnerProgram { model = Model.init
                            , view = View.view
                            , update = Update.update
                            --, subscriptions = Update.subscriptions
                            }
