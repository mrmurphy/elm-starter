module Main where

import Html exposing (div, text, Html)
import StartApp.Simple as StartApp
import Signal exposing (Address)

-- # Main

main =
  StartApp.start { model = model, view = view, update = update }

-- # Model

type alias Model = String
model : Model
model = ""

-- # Actions

update : Action -> Model -> Model
update action model =
  case action of
    NoOp -> model

-- # View

type Action = NoOp

view : Address Action -> Model -> Html
view address model =
  div [] [text "Hello, verld."]
