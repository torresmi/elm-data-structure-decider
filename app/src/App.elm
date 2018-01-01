module App exposing (main)

import Bootstrap.Navbar as Navbar
import Html exposing (Html, text)
import Html.Attributes exposing (href)
import Json.Decode exposing (Value)
import Navigation exposing (Location)
import Page.Home as Home
import Page.NotFound as NotFound
import Rocket exposing ((=>))
import Route exposing (Route(..))
import Views.Colors as Colors
import Views.Page as Page


type alias Model =
    { pageState : PageState
    , navbarState : Navbar.State
    }


init : Value -> Location -> ( Model, Cmd Msg )
init value location =
    let
        initialModel =
            { pageState = Loaded (Home Home.init)
            , navbarState = navbarState
            }

        ( navbarState, navbarCmd ) =
            Navbar.initialState NavbarMsg

        ( routeState, routeCmd ) =
            setRoute (Route.fromLocation location) initialModel
    in
    routeState
        => Cmd.batch [ navbarCmd, routeCmd ]


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
    | NavbarMsg Navbar.State


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

        ( NavbarMsg state, _ ) ->
            { model | navbarState = state } => Cmd.none

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


navbarTitle : String
navbarTitle =
    "Elm Data Structure Decider"


view : Model -> Html Msg
view model =
    case model.pageState of
        Loaded page ->
            viewPage False model.navbarState page

        TransitionFromPage page ->
            viewPage True model.navbarState page


navbarView : Navbar.State -> Html Msg
navbarView state =
    Navbar.config NavbarMsg
        |> Navbar.lightCustomClass Colors.primaryColorClass
        |> Navbar.brand [ href "#" ] [ text navbarTitle ]
        |> Navbar.view state


viewPage : Bool -> Navbar.State -> Page -> Html Msg
viewPage loading navbar page =
    let
        frame =
            Page.frame (navbarView navbar)
    in
    case page of
        NotFound ->
            frame NotFound.view

        Home pageModel ->
            Home.view pageModel
                |> Html.map HomeMsg
                |> frame


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
