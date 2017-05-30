module Update exposing (update)

import Types exposing (..)



--update : Msg -> Model -> (Model, Cmd Msg)
--update msg model = case msg of
--    ArticleListMsg articleMsg ->
--        let (updatedModel, cmd) = ArticleList.update articleMsg model.articleListModel
--        in ( { model | articleListModel = updatedModel }, Cmd.map ArticleListMsg cmd )        


update : Msg -> Model -> Model
update msg model = model

  --case msg of
  --  Increment ->
  --    model + 1

  --  Decrement ->
  --    model - 1


--subscriptions : Model -> Sub Msg
--subscriptions model = Sub.none
