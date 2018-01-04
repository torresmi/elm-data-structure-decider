module Page.Home exposing (Model, Msg(..), init, update, view)

import Bootstrap.Grid as Grid
import Bootstrap.Grid.Col as Col
import Data.Package exposing (Category, Package)
import Data.Packages as Packages
import EveryDict exposing (EveryDict)
import Html exposing (Html)
import Rocket exposing ((=>))
import Views.Group as Group


type alias Model =
    { packages : EveryDict Category (List Package)
    }


init : Model
init =
    { packages = Packages.packageGroups
    }


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model => Cmd.none


view : Model -> Html Msg
view model =
    let
        cols =
            packageGroups model.packages
                |> List.map (\group -> Grid.col [] [ group ])
    in
    Grid.container [] [ Grid.simpleRow cols ]


packageGroups : EveryDict Category (List Package) -> List (Html Msg)
packageGroups packages =
    EveryDict.toList packages
        |> List.map packageGroup


packageGroup : ( Category, List Package ) -> Html Msg
packageGroup ( category, packages ) =
    Group.view { category = category, packages = packages }
