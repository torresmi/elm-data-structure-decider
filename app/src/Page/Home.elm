module Page.Home exposing (Model, Msg(..), init, update, view)

import Data.Package exposing (Package)
import Data.Packages as Packages
import Html exposing (Html)
import Rocket exposing ((=>))


type alias Model =
    { packages : List Package
    }


init : Model
init =
    { packages = Packages.packages
    }


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
