module Views.Page exposing (frame)

import Html exposing (Html)
import Html.Attributes as Attrs


frame : Html msg -> Html msg -> Html msg
frame navbarView content =
    Html.div []
        [ navbarView
        , Html.div [ Attrs.class "page-frame" ]
            [ content
            ]
        ]
