module Views.Page exposing (frame)

import Html exposing (Html)
import Html.Attributes as Attrs


frame : Html msg -> Html msg
frame content =
    Html.div [ Attrs.class "page-frame" ]
        [ content
        ]
