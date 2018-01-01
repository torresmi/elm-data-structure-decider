module Views.Page exposing (frame)

import Html exposing (Html)
import Html.Attributes as Attrs
import Views.Colors as Colors


frame : Html msg -> Html msg -> Html msg
frame navbarView content =
    Html.div [ Attrs.class <| "main-frame " ++ Colors.backgroundColorClass ]
        [ navbarView
        , Html.div [ Attrs.class "page-frame" ]
            [ content
            ]
        ]
