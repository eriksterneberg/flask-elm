module Update exposing (update)

import Http
import Json.Decode exposing (..)

import Types exposing (..)


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of Username str -> ({ model | loginUserName = str}, Cmd.none)
                Password str -> ({ model | loginPassword = str}, Cmd.none)
                Login -> (model, login model.loginUserName model.loginPassword)
                LoginResult (Ok username) -> ({ model | user = LoggedInUser { userName = username}},
                                              Cmd.none)
                LoginResult (Err _) -> (model, Cmd.none)
                Logout -> (model, Cmd.none)


login : String -> String -> Cmd Msg
login username password =
    let url = "/api/user/login"
        request = Http.get url decodeLogin
    in Http.send LoginResult request


decodeLogin: Decoder String
decodeLogin = at ["username"] string

-- Or
--decodeLogin : Decoder String
--decodeLogin = decodeString (field "username" string)
