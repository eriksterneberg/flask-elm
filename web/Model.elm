module Model exposing (init)

import Types exposing (..)


init : Model
init = { user = NotLoggedInUser }


--init : (Model, Cmd Msg)
--init = (initialModel, Cmd.none)

