module App exposing (main)

import Html exposing (Html)
import Json.Decode exposing (Value)
import Navigation exposing (Location)
import Page.Home as Home
import Page.NotFound as NotFound
import Rocket exposing ((=>))
import Route exposing (Route(..))
import Views.Page as Page


type alias Model =
    { pageState : PageState
    }


init : Value -> Location -> ( Model, Cmd Msg )
init value location =
    setRoute (Route.fromLocation location)
        { pageState = Loaded (Home Home.init)
        }


type Page
    = NotFound
    | Home Home.Model


type PageState
    = Loaded Page
    | TransitionFromPage Page



-- Update


type Msg
    = SetRoute (Maybe Route)
    | HomeLoaded Home.Model
    | HomeMsg Home.Msg


setRoute : Maybe Route -> Model -> ( Model, Cmd Msg )
setRoute route model =
    case route of
        Nothing ->
            { model | pageState = Loaded NotFound }
                => Cmd.none

        Just Route.Home ->
            { model | pageState = Loaded (Home Home.init) }
                => Cmd.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    let
        page =
            getPage model.pageState

        toPage toModel toMsg pageUpdate pageMsg pageModel =
            let
                ( newModel, newCmd ) =
                    pageUpdate pageMsg pageModel
            in
            { model | pageState = Loaded (toModel newModel) }
                => Cmd.map toMsg newCmd
    in
    case ( msg, page ) of
        ( SetRoute route, _ ) ->
            setRoute route model

        ( HomeLoaded pageModel, _ ) ->
            { model | pageState = Loaded (Home pageModel) } => Cmd.none

        ( HomeMsg pageMsg, Home pageModel ) ->
            toPage Home HomeMsg Home.update pageMsg pageModel

        ( _, _ ) ->
            model => Cmd.none


getPage : PageState -> Page
getPage pageState =
    case pageState of
        Loaded page ->
            page

        TransitionFromPage page ->
            page



-- View


view : Model -> Html Msg
view model =
    case model.pageState of
        Loaded page ->
            viewPage False page

        TransitionFromPage page ->
            viewPage True page


viewPage : Bool -> Page -> Html Msg
viewPage loading page =
    let
        frame =
            Page.frame
    in
    case page of
        NotFound ->
            frame NotFound.view

        Home pageModel ->
            Home.view pageModel
                |> frame
                |> Html.map HomeMsg


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


main : Program Value Model Msg
main =
    Navigation.programWithFlags (Route.fromLocation >> SetRoute)
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
