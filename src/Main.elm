module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


-- # Main


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }



-- # Model


type alias Model =
    Int


model : Model
model =
    0



-- # Messages


type Msg
    = Inc
    | Dec



-- # Update


update : Msg -> Model -> Model
update msg model =
    case msg of
        Inc ->
            model + 1

        Dec ->
            model - 1



-- # View


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ h1 [] [ text "Counterlicious" ]
        , div [] [ text "Count: ", text (toString model) ]
        , button [ onClick Dec ] [ text "Decrement" ]
        , button [ onClick Inc ] [ text "Increment" ]
        ]
