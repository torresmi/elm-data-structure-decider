module Page.Home exposing (Model, Msg(..), init, update, view)

import Html exposing (Html)
import Rocket exposing ((=>))


type alias Model =
    {}


init : Model
init =
    {}


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model => Cmd.none


view : Model -> Html msg
view _ =
    Html.text "Hello World!"
