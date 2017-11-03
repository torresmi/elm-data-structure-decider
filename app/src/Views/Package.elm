module Views.Package exposing (Package, view)

import Html exposing (Html)
import Html.Attributes as Attrs


type alias Package a =
    { a
        | name : String
        , link : String
    }


view : List (Package a) -> Html msg
view packages =
    List.map renderPackage packages
        |> Html.ol []


renderPackage : Package a -> Html msg
renderPackage package =
    Html.li []
        [ Html.text package.name
        , Html.a [ Attrs.href package.link ] [ Html.text package.link ]
        ]
